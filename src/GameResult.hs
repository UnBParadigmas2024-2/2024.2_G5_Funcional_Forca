module GameResult (checkResult) where

import GameState (State (..))

checkResult :: State -> Bool
checkResult state
    | all (`elem` guessedLetters state) (word state) = True 
    | livesRemaining state <= 0                       = False 
    | otherwise                                       = False 