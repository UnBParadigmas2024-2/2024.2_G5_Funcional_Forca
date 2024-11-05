module GameLogic (makeGuess) where

import GameState (State (..))

makeGuess :: Char -> State -> State
makeGuess letter gameState =
  if letter `elem` word gameState
  then gameState {guessedLetters = letter : guessedLetters gameState}
  else
    gameState { 
      guessedLetters = letter : guessedLetters gameState,
      livesRemaining = livesRemaining gameState - 1
    }
