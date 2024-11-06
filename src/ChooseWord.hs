module ChooseWord (chooseWord) where

import System.Random (randomRIO)

-- Função para escolher uma palavra aleatória do arquivo "db/palavras.txt"
chooseWord :: IO String
chooseWord = do
    -- Lê o conteúdo do arquivo "db/palavras.txt" e separa as linhas em uma lista de palavras
    conteudo <- readFile "db/palavras.txt"
    let palavras = lines conteudo
    -- Gera um índice aleatório para escolher uma palavra da lista
    indiceAleatorio <- randomRIO (0, length palavras - 1)
    -- Retorna a palavra escolhida aleatoriamente
    return (palavras !! indiceAleatorio)
