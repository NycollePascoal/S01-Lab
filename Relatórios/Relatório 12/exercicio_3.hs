data Esboco = Esboco
    {
        titulo :: String
        , tecnica :: String
        , horas:: Int
    }

esbocoMaisRecente :: [Esboco] -> String 
esbocoMaisRecente [] = "O caderno está vazio..."
esbocoMaisRecente (e:_) = "Título : " ++ titulo e ++ " | Técnica: " ++ tecnica e

contarEsbocos :: [Esboco] -> Int
contarEsbocos [] = 0
contarEsbocos (_:resto) = 1 + contarEsbocos resto

horasDesenhando :: [Esboco] -> Int
horasDesenhando [] = 0
horasDesenhando (x:xs) = horas x + horasDesenhando xs

main :: IO ()
main = do 
    let e1 = 
            Esboco
            {
                titulo = "Criaturas"
                , tecnica = "Grafite"
                , horas = 4
            }
    let e2 = 
            Esboco
            {
                titulo = "Nascer do Sol"
                , tecnica = "Aquarela"
                , horas = 6
            }
    let e3 = 
            Esboco
            {
                titulo = "Ruínas"
                , tecnica = "Marcador"
                , horas = 3
            }
    let caderno = [e1, e2, e3]
    let vazio = []

    putStrLn "-- Esboço Mais Recente --"
    putStrLn (esbocoMaisRecente caderno)
    
    putStrLn "\n-- Número de Esboços --"
    putStrLn (show (contarEsbocos caderno))

    putStrLn "\n-- Horas Desenhadas --"
    putStrLn (show (horasDesenhando caderno))

    putStrLn "\n-> Esboço mais recente de outro caderno (vazio): "
    putStrLn (esbocoMaisRecente vazio)

    let novoEsboco = Esboco { titulo = "Lua Cheia", tecnica = "Giz Pastel Oleoso", horas = 2 }
    let novoCaderno = novoEsboco : caderno

    putStrLn "\n-> Esboço mais recente do Caderno Novo:"
    putStrLn (esbocoMaisRecente novoCaderno)
    putStrLn "\n-> Número de Esboços do Novo Caderno:"
    putStrLn (show (contarEsbocos novoCaderno))

    
    putStrLn "\n-> Esboço mais recente do Caderno Antigo:"
    putStrLn (esbocoMaisRecente caderno)
    putStrLn "\n-> Número de Esboços do Novo Caderno:"
    putStrLn (show (contarEsbocos caderno))

    -- putStrLn (titulo (head vazio))
    -- Erro Observado:
    -- main: Prelude.head: empty list
