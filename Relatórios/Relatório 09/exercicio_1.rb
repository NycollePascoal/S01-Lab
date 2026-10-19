class CoquetelAfterlife

    attr_reader :nome

    def initialize(nome, preco)
        @nome = nome
        @_preco = preco
    end

    def preco
        @_preco
    end

    def preco=(valor)
        if valor.is_a?(Numeric) && valor >= 5 && valor <=200
            @_preco = valor
        else
            puts "\nPreço Inválido!"
        end
    end

    def ficha
        "Nome: #{nome} - Preço: $#{preco}"
    end

end

class DrinkDeLenda < CoquetelAfterlife
    
    attr_reader :lenda

    def initialize(nome, preco, lenda)
        super(nome, preco)
        @lenda = lenda
    end

    def ficha
        super + " - Em homenagem a #{lenda}"
    end 

end

#MAIN

d1 = CoquetelAfterlife.new("Caipirinha", 35)
d2 = DrinkDeLenda.new("Break Free", 50, "Freddie Mercury")
d3 = DrinkDeLenda.new("Beat It", 45, "Michael Jackson")

drinks = []
drinks << d1
drinks << d2
drinks << d3

puts "--- FICHAS ---"
drinks.each do |d| 
    puts d.ficha
end

puts "------"

d2.preco = 500
d2.preco = 80

puts "\n-> Ficha Atualizada:"
puts d2.ficha

#d1.nome = "Mojito"
#Erro observado: 
#HelloWorld.rb:67:in `<top (required)>': undefined method `nome=' for an instance of CoquetelAfterlife (NoMethodError)
