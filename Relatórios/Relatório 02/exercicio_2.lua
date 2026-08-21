local tabela = {}
local cont = 0

print("Insira a quantidade de elementos:")
local n = tonumber(io.read())
for i = 1, n do
    print ("Insira o elemento " .. i .. ":")
    local elementos = tonumber(io.read())
    table.insert(tabela, elementos)
end
print ("Insira o elemento que sera procurado:")
local x = tonumber(io.read())
for i = 1, n do
    if tabela[i] == x then
        cont = cont + 1
    end
end
print("O numero " .. x .. " aparece " .. cont .. " vez(es) na tabela.")

