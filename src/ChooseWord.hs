module ChooseWord (chooseWord) where

import System.Random (mkStdGen, randomR)

-- Lista de palavras pré-definida
palavras :: [String]
palavras = ["haskell", "programacao", "computador", "jogo", "desafio"]

-- Função para escolher uma palavra aleatória da lista de palavras
-- Retorna um `String` puro (determinístico) sem `IO`
chooseWord :: String
chooseWord = 
    let
        -- Usa uma semente fixa para o gerador
        gerador = mkStdGen 42
        -- Gera um índice aleatório dentro do intervalo da lista de palavras
        (indiceAleatorio, _) = randomR (0, length palavras - 1) gerador
    in palavras !! indiceAleatorio

