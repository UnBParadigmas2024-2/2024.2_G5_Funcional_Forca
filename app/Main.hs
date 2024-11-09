module Main where

import Control.Monad (forever)
import System.Exit (exitSuccess)

import GameLogic (makeGuess)
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

  -- Atualiza o estado com o palpite
  let updatedState = makeGuess guess currentState
  renderState updatedState

  -- A fazer: Condição de parada -> se jogador perdeu ou ganhou, sai do jogo
  -- Exemplo condição de parada:
    -- if guess == 'w'
    -- then exitSuccess
    -- else gameLoop updatedState