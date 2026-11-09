data Cafe = Cafe String Double Int  --nome, preço, intensidade

descrever :: Cafe -> String
descrever (Cafe nome preco _) = 
    nome ++ " - R$" ++ show preco

forca :: Cafe -> String
forca (Cafe _ _ intensidade)
    |intensidade >= 8 = "Forte"
    |intensidade >= 5 && intensidade <= 7 = "Equilibrado"
    |otherwise = "Suave"

precoDoPedido :: Bool -> Cafe -> Double
precoDoPedido comLeite (Cafe _ preco _) = 
    if comLeite  
        then preco + 2.0
        else preco

main :: IO ()
main = do 
    let cafe1 = Cafe "Gourmet" 15.9 9
    let cafe2 = Cafe "Especiarias" 10.9 6
    let cafe3 = Cafe "Tradicional" 12.9 3

    putStrLn "--- Cafés ---"
    putStrLn (descrever cafe1 ++ " | Intensidade: " ++ forca cafe1)
    putStrLn (descrever cafe2 ++ " | Intensidade: " ++ forca cafe2)
    putStrLn (descrever cafe3 ++ " | Intensidade: " ++ forca cafe3)

    putStrLn "\n-> 'Gourmet' sem adicional de Leite:"
    print (precoDoPedido False cafe1)

    putStrLn "\n-> 'Gourmet' com adicional de Leite:"
    print (precoDoPedido True cafe1)
