pesoMaximo :: Double
pesoMaximo = 10.5
-- pesoMaximo = 15.5
-- Erro Observado:
-- Multiple declarations of ‘pesoMaximo’

data Encomenda = Encomenda
    {
        destinatario :: String
        , peso :: Double
        , frete :: Double
    }

descrever :: Encomenda -> String 
descrever e = "Destinatário: " ++ destinatario e ++ " | Peso: " ++ show (peso e) ++ "kg | Frete: R$" ++ show (frete e)

cabemNaVassoura :: [Encomenda] -> [Encomenda]
cabemNaVassoura cabe = filter(\e -> peso e <= pesoMaximo) cabe

totalDeFretes :: [Encomenda] -> Double
totalDeFretes total = sum (map frete total)

main :: IO ()
main = do
    let e1 = 
            Encomenda 
            { 
                destinatario = "Mercado" 
                , peso = 5.7
                , frete = 7.5
            }

    let e2 = 
            Encomenda
            {
                destinatario = "Dona Maria"
                , peso = 11.6
                , frete = 12.7
            }

    let e3 = 
            Encomenda 
            {
                destinatario = "Praça"
                , peso = 13.3
                , frete = 15.3
            }

    let e4 = 
            Encomenda 
            {
                destinatario = "Seu José"
                , peso = 6.8
                , frete = 8.9
            }
    
    let encomendas = [e1, e2, e3, e4]

    putStrLn "--- Encomendas do Dia ---"
    mapM_ putStrLn (map descrever encomendas)

    let cabem = cabemNaVassoura encomendas
    putStrLn "\n-> Encomendas que cabem na vassoura:"
    mapM_ putStrLn (map descrever cabem)

    putStrLn "\n-> Frete do dia (das encomendas válidas): "
    putStrLn ("R$" ++ show (totalDeFretes cabem))
