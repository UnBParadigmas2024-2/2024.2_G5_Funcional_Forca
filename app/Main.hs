module Main where

import Control.Monad ()
import System.Exit ()

import GameLogic (makeGuess, checkResult, validateGuess)
import GameState (State (..), newGame)
import RenderState (renderState)

main :: IO ()
main = do
    -- Inicializa o jogo com o estado inicial
    initialState <- newGame

    -- Palavra escolhida aleatoriamente 
    putStrLn $ "Palavra: " ++ word initialState ++ "\n"

    -- Renderiza o estado inicial do jogo
    renderState initialState

    -- Chama a função de loop com o estado inicial
    gameLoop initialState

-- Função recursiva que mantém o estado atualizado em cada iteração
gameLoop :: State -> IO ()
gameLoop currentState = do
    putStrLn "Digite um único caractere:"
    guess <- getChar
    _ <- getLine -- Remove o \n que é gerado ao apertar Enter
    
    -- Checa se o caractere é válido
    isValidGuess <- validateGuess guess currentState
    if isValidGuess
        then do 
            let updatedState = makeGuess guess currentState -- Atualiza o estado com o palpite
            renderState updatedState
            let result = checkResult updatedState
            if result == 1
                then gameLoop updatedState
                else if result == 2
                    then putStrLn $ "\n\nVocê Perdeu. A palavra era: " ++ word currentState ++ "\n"
                    else putStrLn "\n\nVocê Ganhou. Parabéns!"
        else gameLoop currentState