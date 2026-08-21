function filtrarMaiores(tabela, limite)
    tabela_maior = {}
    for i = 1, #tabela do
        if tabela[i] > limite then
            table.insert(tabela_maior, tabela[i])
        end
    end
    return tabela_maior
end 

tabela = {}
nova_tabela = {}

print ("Insira a quantidade de elementos:")
local n = tonumber(io.read())
for i = 1, n do
    print("Insira o elemento ".. i .. ":")
    local elementos = tonumber(io.read())
    table.insert(tabela, elementos)
end
print ("Insira o limite:")
local k = tonumber(io.read())
nova_tabela = filtrarMaiores(tabela, k)
print("---Elementos maiores que " .. k .. "---")
for i = 1, #nova_tabela do
    print(nova_tabela[i])
end
