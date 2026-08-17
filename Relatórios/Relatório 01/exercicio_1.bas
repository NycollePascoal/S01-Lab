dim peso as integer 
dim agua as integer
dim recomendado as integer

print "Insira seu peso:"
input peso
recomendado = peso * 35
print "Insira a quantidade de agua consumida hoje:"
input agua

if agua >= recomendado then
    print "Meta atingida!"
else 
    print "Meta nao atingida"
end if
sleep
