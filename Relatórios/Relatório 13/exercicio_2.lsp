(defstruct criatura
    nome
    bioma
    profundidade
    perigo) ; :inofensiva, : agressiva ou :leviata

(defun texto-do-perigo (perigo)
    (case perigo
    (:inofensiva    "Inofensiva")
    (:agressiva     "Agressiva")
    (:leviata       "Leviata: mantenha distancia")
    (otherwise      "Desconhecido")))

(defun descreve-criatura (c)
    (format nil "Nome: ~a ~%Bioma: ~a | Profundidade: ~a | ~a ~%"
    (criatura-nome c)
    (criatura-bioma c)
    (criatura-profundidade c)
    (texto-do-perigo (criatura-perigo c))))

(defun abaixo-de (metros catalogo)
    (remove-if-not (lambda (c) (> (criatura-profundidade c) metros))
                    catalogo))

(defparameter *catalogo*
    (list
    (make-criatura :nome "Lambari" :bioma "Aguas Doces" :profundidade 5 :perigo :inofensiva)
    (make-criatura :nome "Baiacu" :bioma "Corais" :profundidade 50 :perigo :agressiva)
    (make-criatura :nome "Leviata" :bioma "Fossa das Marianas" :profundidade 1000 :perigo :leviata)
    (make-criatura :nome "Nemo" :bioma "Anemonas" :profundidade 30 :perigo :palhaco)))

(defun main()
    (let* ((textos (mapcar #'descreve-criatura *catalogo*)))
       (dolist (c textos)
        (format t "~a~%" c)))
        
    
    (format t "--> Criaturas abaixo de 40 metros:~%")
    (let* ((filtro (abaixo-de 40 *catalogo*))
            (descricao-filtro (mapcar #'descreve-criatura filtro)))
            (dolist (f descricao-filtro)
                (format t "~a~%" f))
            
        (format t "Foram encontradas ~a criaturas abaixo de 40 metros."
        (length filtro))))

(main)
