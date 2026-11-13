(defstruct erva
    nome
    preco-por-grama
    toxicidade)

(defun classifica-erva (erva)
    (cond ((>= (erva-toxicidade erva) 7) "veneno")
            ((>= (erva-toxicidade erva) 4) "use com cuidado")
            (t "segura")))

(defun preco-da-dose (erva gramas) 
    (* gramas (erva-preco-por-grama erva)))

(defun descreve-erva (erva)
    (format nil "Nome: ~a - Preco por grama: R$~,2f (~a)~%"
    (erva-nome erva)
    (erva-preco-por-grama erva)
    (classifica-erva erva)))

(defun aviso (erva)
    (if (>=(erva-toxicidade erva) 7)
        "Essa erva parece toxica... MaoMao vai testar em si mesma antes."
        "Erva liberada para o paciente."))

(defun main()
   (let ((ervas(list
                    (make-erva :nome "Oregano" :preco-por-grama 5 :toxicidade 8)
                    (make-erva :nome "Salsa" :preco-por-grama 7 :toxicidade 4)
                    (make-erva :nome "Camomila" :preco-por-grama 2 :toxicidade 2))))
                    
    (dolist (e ervas)
        (format t "~%Descricao: ~%~a"(descreve-erva e))
        (format t "Atencao!!!~%~a~%" (aviso e)))
        
    (format t "~%-> Dose de ~a gramas de Oregano: R$~,2f" 10 (preco-da-dose (car ervas) 10))))

(main)
