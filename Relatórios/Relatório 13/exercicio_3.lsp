(defstruct garota-magica
    nome
    escuridao
    bruxas)

(defun escuridao-total (grupo)
    (if (null grupo)
        0
        (+ (garota-magica-escuridao(car grupo))
            (escuridao-total (cdr grupo)))))

(defun total-de-bruxas (grupo)
    (reduce #'+(mapcar #'garota-magica-bruxas grupo)))

(defun purifica (g quantidade)
    (make-garota-magica :nome       (garota-magica-nome g)
                        :escuridao  (if (<= (garota-magica-escuridao g) quantidade)
                                                                0
                                                                (-(garota-magica-escuridao g) quantidade))
                        :bruxas     (garota-magica-bruxas g)))

(defun main()
    (let* ((garotas(list
                        (make-garota-magica :nome "Branca de Neve" :escuridao 80 :bruxas 68)
                        (make-garota-magica :nome "Rapunzel" :escuridao 70 :bruxas 43)
                        (make-garota-magica :nome "Cinderela" :escuridao 50 :bruxas 25)))
                        
            (nova(make-garota-magica :nome "Ariel" :escuridao 65 :bruxas 12))
        
            (garotas-atualizado (cons nova garotas))
            
            (garota-original (car garotas))
            (garota-nova (purifica garota-original 52)))

        (format t "-> Escuridao Total do grupo: ~a ~%" (escuridao-total garotas))
        (format t "-> Total de Bruxas Derrotadas do grupo: ~a ~%" (total-de-bruxas garotas))

        (format t "~%--- Escuridao Total do novo grupo --- ~% ~a ~%" (escuridao-total garotas-atualizado))
        (format t "~%--- Escuridao Total do grupo antigo --- ~% ~a ~%" (escuridao-total garotas))

        (format t "~%-> Escuridao de Branca de Neve antes da purificacao (original): ~a ~%" (garota-magica-escuridao garota-original))
        (format t "-> Escuridao de Branca de Neve apos a purificacao (nova): ~a ~%" (garota-magica-escuridao garota-nova))))

(main)
