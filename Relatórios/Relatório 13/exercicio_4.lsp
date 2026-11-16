(defstruct dominio
    nome
    elemento                ; :pyro ou :cryo
    dificuldade
    mora)

(defun bonus-elemental (elemento)
    (case elemento
    (:electro    1.5)
    (:hydro      1.2)
    (otherwise   1)))

(defun recompensa-final (d)
    (* (dominio-mora d)(bonus-elemental (dominio-elemento d))))

(defun rota (lista dificuldade-maxima)
    (let* ((filtra (remove-if-not (lambda (d) (<= (dominio-dificuldade d) dificuldade-maxima)) lista))
           (transforma (mapcar (lambda (d)
                                    (format nil "Nome: ~a | Recompensa Final: ~,2f" 
                                         (dominio-nome d) 
                                         (recompensa-final d)))
                               filtra)))
        transforma))

(defun main()
    (let ((dominios(list
                    (make-dominio :nome "Nether" :elemento :pyro :dificuldade 1 :mora 1000)
                    (make-dominio :nome "Navio Abandonado" :elemento :hydro :dificuldade 2 :mora 750)
                    (make-dominio :nome "Vila de Neve" :elemento :cryo :dificuldade 3 :mora 1100)
                    (make-dominio :nome "Monumento dos Guardians" :elemento :electro :dificuldade 4 :mora 880)
                    (make-dominio :nome "Aether" :elemento :anemo :dificuldade 5 :mora 1700))))

        (format t "--- Rota com diculdade maxima 4 --- ~%")          
        (dolist (r (rota dominios 4))
            (format t "~a~%" r))

        (format t "~%--- Total de Mora ---~%")     
        (let ((total (reduce #'+ (mapcar #'recompensa-final dominios))))
            (format t "$~,2f ~%" total))
            
        (let ((copia(copy-dominio (car dominios))))
            (setf (dominio-mora copia) 3000)
            (dominio-mora copia)
            (format t "~%--> Mora da copia alterada com setf: ~a ~%" (dominio-mora copia))
            (format t "--> Mora da lista original : ~a ~%" (dominio-mora(car dominios))))))

(main)
