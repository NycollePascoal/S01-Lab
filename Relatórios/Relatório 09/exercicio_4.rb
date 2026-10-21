module Depoente

    def depor
       raise NotImplementedError, "O método precisa ser implementado."
    end
end

module Detivel

    def ser_detido
        puts "\n#{nome} foi levado pela Scotland Yard."
    end
end

class Envolvido

    attr_reader :nome

    def initialize(nome)
        @nome = nome
    end
end

class TestemunhaOcular < Envolvido
    include Depoente

    def depor
        puts "\nTestemunha: #{nome} - 'De madrugada, vi um vulto com orelhas e bigodes grandes saindo no jardim, ele parecia nervoso.'" 
    end
end

class SuspeitoDoCrime < Envolvido
    include Depoente
    include Detivel

    def depor
        puts "\nSuspeito: #{nome} - 'Eu tive um pesadelo aquela noite e precisava sair para tomar um ar.'"
    end
end

class Investigacao

    def initialize(caso)
        @caso = caso
        @envolvidos = []
    end

    def registar(envolvido)
        @envolvidos << envolvido
    end

    def ouvir_todos
        puts "--- Caso: #{@caso} ---"
        @envolvidos.each do |e|
            e.depor
        end
    end

    def acionar_scotland_yard
        det = @envolvidos.select {|e| e.respond_to?(:ser_detido)}
        det.each do |d|
            d.ser_detido
        end
    end
end

#MAIN

t1 = TestemunhaOcular.new("Piu-Piu")
s1 = SuspeitoDoCrime.new("Tom")
s2 = SuspeitoDoCrime.new("Frajola")

i1 = Investigacao.new("O Último Queijo")
i1.registar(t1)
i1.registar(s1)
i1.registar(s2)

i1.ouvir_todos()

i1.acionar_scotland_yard()
