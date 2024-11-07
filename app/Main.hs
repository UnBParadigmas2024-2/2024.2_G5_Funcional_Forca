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

  putStrLn "Palpite: o"
  putStrLn $ "Letras usadas: " ++ show (guessedLetters updatedState1)
  putStrLn $ "Vidas restantes: " ++ show (livesRemaining updatedState1) ++ "\n"

  -- Segundo palpite
  let updatedState2 = makeGuess 'j'  updatedState1
  renderState updatedState2

  putStrLn "Palpite: j"
  putStrLn $ "Letras usadas: " ++ show (guessedLetters updatedState2)
  putStrLn $ "Vidas restantes: " ++ show (livesRemaining updatedState2)
