module Main where

import GameLogic (makeGuess)
import GameState (State (..), newGame)

main :: IO ()
main = do
  -- O operador '<-' transforma o 'IO State' retornado pelo newGame em 'State'
  initialState <- newGame

  putStrLn $ "Palavra: " ++ word initialState ++ "\n"

  -- Primeiro palpite
  let updatedState1 = makeGuess 'o' initialState 
  putStrLn "Palpite: o"
  putStrLn $ "Letras usadas: " ++ show (guessedLetters updatedState1)
  putStrLn $ "Vidas restantes: " ++ show (livesRemaining updatedState1) ++ "\n"

  -- Segundo palpite
  let updatedState2 = makeGuess 'j'  updatedState1
  putStrLn "Palpite: j"
  putStrLn $ "Letras usadas: " ++ show (guessedLetters updatedState2)
  putStrLn $ "Vidas restantes: " ++ show (livesRemaining updatedState2)
