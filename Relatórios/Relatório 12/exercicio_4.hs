data Etapa = NaFila | NoBanho | Concluido
    deriving (Show, Eq)

data Atendimento = Atendimento
    {
        cliente :: String
        , servico :: String
        , valor :: Double
        , etapa :: Etapa
    }

descrever :: Atendimento -> String
descrever a = "Cliente: " ++ cliente a ++ " | Serviço: " ++ servico a ++ " | Etapa: " ++ show (etapa a)

concluir :: Atendimento -> Atendimento
concluir c = c { etapa = Concluido }

arrecadado :: [Atendimento] -> Double 
arrecadado concluidos = sum(map valor(filter(\c -> etapa c == Concluido) concluidos))

main :: IO ()
main = do 
    let a1 = Atendimento { cliente = "Sem Rosto" , servico = "Banho Completo", valor = 249.9, etapa = NoBanho }
    let a2 = Atendimento { cliente = "Totoro" , servico = "Banho Relaxante", valor = 144.9, etapa = NoBanho }
    let a3 = Atendimento { cliente = "Poeirinha" , servico = "Hidromassagem", valor = 99.9, etapa = NaFila }

    let lista = [a1, a2, a3]

    let listaAtualizada = [concluir a1, concluir a2, a3]

    putStrLn "--- Lista de Atendimentos ---"
    mapM_ putStrLn (map descrever lista)
    putStrLn "-> Arrecadação até o momento: "
    putStrLn ("R$" ++ show(arrecadado lista))

    putStrLn "\n--- Lista de Atendimentos Atualizada ---"
    mapM_ putStrLn (map descrever listaAtualizada)
    putStrLn "-> Arrecadação até o momento: "
    putStrLn ("R$" ++ show(arrecadado listaAtualizada))
    
