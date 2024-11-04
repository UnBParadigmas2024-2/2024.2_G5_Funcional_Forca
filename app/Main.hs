module Main where

import GameState (State(..))

main :: IO ()
main = do
  let initialState = State { word = "haskell", guessedLetters = [], livesRemaining = 6 }
  putStrLn $ "A palavra é: " ++ word initialState
  putStrLn $ "Vidas restantes: " ++ show (livesRemaining initialState)
