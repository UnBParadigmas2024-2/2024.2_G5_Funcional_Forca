module Main where

import GameLogic (makeGuess)
import GameState (State (..), newGame)
import RenderState (renderState)

main :: IO ()
main = do
  -- O operador '<-' transforma o 'IO State' retornado pelo newGame em 'State'
  initialState <- newGame

  putStrLn $ "Palavra: " ++ word initialState ++ "\n"
  renderState initialState

  -- Primeiro palpite
  let updatedState1 = makeGuess 'o' initialState 
  renderState updatedState1

  -- Segundo palpite
  let updatedState2 = makeGuess 'z'  updatedState1
  renderState updatedState2

  -- let updatedState3 = makeGuess 'q'  updatedState2
  -- renderState updatedState3

  -- let updatedState4 = makeGuess 'w'  updatedState3
  -- renderState updatedState4

  -- let updatedState5 = makeGuess 'k'  updatedState4
  -- renderState updatedState5

  -- let updatedState6 = makeGuess 'y'  updatedState5
  -- renderState updatedState6

  -- let updatedState7 = makeGuess 'x'  updatedState6
  -- renderState updatedState7
