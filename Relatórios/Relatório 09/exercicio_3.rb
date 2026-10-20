class PhoneWave 
    def enviar_dmail(mensagem)
        puts "\n'#{mensagem}'\nA mensagem foi enviada ao passado com sucesso!"
    end
end

class MembroDoLab

    attr_reader :numero, :nome

    def initialize(numero, nome)
        @numero = numero
        @nome = nome
    end 

end 

class LaboratorioDeGadgets

    def initialize()
        @phonewave = PhoneWave.new()
        @membros = []
    end

    def admitir(membro)
        @membros << membro
        puts "\n--> Novo membro adicionado:"
        puts "Nº #{membro.numero} - #{membro.nome}"
    end

    def experimento(mensagem)
        puts "\n--- MEMBROS ---"
        @membros.each do |m|
            puts "Nº #{m.numero} - #{m.nome}"
        end

        @phonewave.enviar_dmail(mensagem)
    end
end

#MAIN

m1 = MembroDoLab.new(54, "Phineas")
m2 = MembroDoLab.new(87, "Ferb")

l1 = LaboratorioDeGadgets.new()

l1.admitir(m1)
l1.admitir(m2)

l1.experimento("One Direction se separou")

#Na composição, uma classe cria e controla um objeto, ou seja, ele depende totalmente dela para existir. No caso do meu programa,
#só existe um 'PhoneWave' se existir um 'LaboratorioDeGadgets', ele é criado dentro daquela classe. 

# Já na agregação, a classe recebe um objeto pronto, ou seja, os objetos continuam exisitindo mesmo se a classe não existir (são
#independentes). No caso do meu programa, os membros, criados pela classe 'MembroDoLab', existem independentemente da classe 'LaboratorioDeGadgets',
#lá os membros só são organizados em uma lista. 
            
