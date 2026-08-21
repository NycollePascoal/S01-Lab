function gerarTabelaPotencias(inicio, fim, base) 
    for i = inicio, fim do
       local total = base ^ i
        print (base .. " ^ " .. i .. " = " .. total)
    end
end

print ("Insira o expoente inicial (M):")
local m = tonumber(io.read())
print ("Insira o expoente final (N):")
local n = tonumber(io.read())
print ("Insira a base da potenciacao:")
local b = tonumber(io.read())

gerarTabelaPotencias(m, n, b)
