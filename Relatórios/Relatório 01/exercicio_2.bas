dim tentativa as integer
dim senha as integer 
senha = 4321

print "Digite o PIN de acesso:"
input tentativa
while tentativa <> senha
    print "PIN invalido. Tente novamente."
    input tentativa
wend
print "Transacao autorizada!"
sleep
