module Main where

import Control.Monad()
import System.Exit (exitSuccess)

import GameLogic (makeGuess, checkResult)
import GameState (State (..), newGame)
import RenderState (renderState)

main :: IO ()
main = do
  -- Inicializa o jogo com o estado inicial
  initialState <- newGame

  -- Renderiza o estado inicial do jogo
  renderState initialState

  -- Chama a função de loop com o estado inicial
  gameLoop initialState

-- Função recursiva que mantém o estado atualizado em cada iteração
gameLoop :: State -> IO ()
gameLoop currentState = do
  -- Lê letra do usuário
  putStrLn "Digite um único caractere:"
  guess <- getChar 
  -- Ignora ENTER -> \n do usuário
  _ <- getChar

  -- Atualiza o estado com o palpite
  let updatedState = makeGuess guess currentState
  renderState updatedState

  -- A fazer: Condição de parada -> se jogador perdeu ou ganhou, sai do jogo
  -- Exemplo condição de parada:
  let gameStatus = checkResult updatedState

  if gameStatus == 3
    then do 
      putStrLn "-=-=-=- VOCÊ GANHOU! -=-=-=-"
      exitSuccess
  else if gameStatus == 2
    then do
      putStrLn "-=-=-=- VOCÊ PERDEU E FOI ENFORCADO! -=-=-=-"
      exitSuccess
  else gameLoop updatedState