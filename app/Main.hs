module Main where

import GameLogic (makeGuess)
import GameState (State (..), newGame)

main :: IO ()
main = do
  -- O operador '<-' transforma o 'IO State' retornado pelo newGame em 'State'
  initialState <- newGame
  selectedWord <- word initialState

  putStrLn $ "Palavra: " ++ selectedWord ++ "\n"

  -- Primeiro palpite
  -- O 'return' transforma o 'State' em 'IO State'
  updatedState1 <- makeGuess 'h' (return initialState) 
  putStrLn "Palpite: h"
  putStrLn $ "Letras usadas: " ++ show (guessedLetters updatedState1)
  putStrLn $ "Vidas restantes: " ++ show (livesRemaining updatedState1) ++ "\n"

  -- Segundo palpite
  updatedState2 <- makeGuess 'j' (return updatedState1)
  putStrLn "Palpite: j"
  putStrLn $ "Letras usadas: " ++ show (guessedLetters updatedState2)
  putStrLn $ "Vidas restantes: " ++ show (livesRemaining updatedState2)
