module Main where

import GameLogic (makeGuess)
import GameState (State (..), newGame)

main :: IO ()
main = do
  let initialState = newGame

  putStrLn $ "Palavra: " ++ word initialState ++ "\n"

  let updatedState1 = makeGuess 'h' initialState
  putStrLn "Palpite: h"
  putStrLn $ "Letras usadas: " ++ show (guessedLetters updatedState1)
  putStrLn $ "Vidas restantes: " ++ show (livesRemaining updatedState1) ++ "\n"

  let updatedState2 = makeGuess 'j' updatedState1
  putStrLn "Palpite: j"
  putStrLn $ "Letras usadas: " ++ show (guessedLetters updatedState2)
  putStrLn $ "Vidas restantes: " ++ show (livesRemaining updatedState2)
