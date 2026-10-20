class Instrumentista

    attr_reader :nome, :instrumento

    def initialize(nome, instrumento)
        @nome = nome
        @instrumento = instrumento
    end

    def interpretar(peca)
        raise NotImplementedError, "O método precisa ser implementado."
    end
end

class Solista < Instrumentista

    def interpretar(peca)
        puts "\n#{nome} está conduzindo a melodia principal da peça #{peca} com um #{instrumento}"
    end

end

class Acompanhador < Instrumentista

    def interpretar(peca)
        puts "\n#{nome} está acompanhando o ritmo do solista com um #{instrumento} da peça #{peca}"
    end

end 

class Regente 

    def initialize(nome)
        @nome = nome 
        @orquestra = []
    end

    def convocar(instrumentista)
        @orquestra << instrumentista
    end

    def reger(peca)
        puts "Regente: #{@nome} - Peça: #{peca}"
        @orquestra.each do |o| 
            o.interpretar(peca)
        end
    end 

    def escalacao
        @orquestra.map {|mus| "#{mus.class} - #{mus.nome}"}
    end
    
end

#MAIN

s1 = Solista.new("Pantera Cor-de-Rosa", "Guitarra")
a1 = Acompanhador.new("Pica-Pau",  "Piano")
r1 = Regente.new("Bob Esponja")

r1.convocar(a1)
r1.convocar(s1)

r1.reger("High School Musical")

puts "\n--- Escalação da Peça ---"
escala = r1.escalacao
escala.each do |t| 
    puts t
end

i1 = Instrumentista.new("Ursinho Pooh", "Flauta")
#i1.interpretar("La La Land")
#Erro Observado: HelloWorld.rb:11:in `interpretar': O método precisa ser implementado. (NotImplementedError)
