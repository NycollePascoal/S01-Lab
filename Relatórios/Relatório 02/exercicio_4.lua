function calcularMedia(a, b)
    local m = (a+b)/2
    return m
end

function encontraMaior(a, b)
    if a > b then
        return a
    else
        return b
    end
end

function calcularDiferencaAbsoluta(a, b)
    local da = a - b
    if da < 0 then
        da = da * -1
    end
    return da
end

function analisarnumeros(n1, n2, operacao)
    if operacao == "media" then
        local media = calcularMedia(n1, n2)
        return media
    elseif operacao == "maior" then
        local maior = encontraMaior(n1, n2)
        return maior
    else
        local diferenca = calcularDiferencaAbsoluta(n1, n2)
        return diferenca
    end
end

print ("Insira o primeiro numero:")
local num1 = tonumber(io.read())
print ("Insira o segundo numero:")
local num2 = tonumber(io.read())
print ("Insira a operacao que deseja realizar (media, maior ou diferenca):")
local op = io.read()
if op ~= "maior" and op ~= "media" and op ~= "diferenca" then
    print("Operacao invalida!")
else
    local resultado = analisarnumeros(num1, num2, op)
    print ("Resultado: " .. resultado)
end