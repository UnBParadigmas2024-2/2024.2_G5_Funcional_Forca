module Main where

import GameState (State(..), newGame)

main :: IO ()
main = do
  let initialState = newGame
  putStrLn $ "A palavra é: " ++ word initialState
  putStrLn $ "Vidas restantes: " ++ show (livesRemaining initialState)
