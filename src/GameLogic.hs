module GameLogic (makeGuess, checkResult) where

import GameState (State (..))

makeGuess :: Char -> State -> State
makeGuess letter gameState = 
    if letter `elem` word gameState
    then gameState {guessedLetters = letter : guessedLetters gameState}
    else gameState { 
        guessedLetters = letter : guessedLetters gameState,
        livesRemaining = livesRemaining gameState - 1
    }

checkResult :: State -> Int
checkResult state
    | all (`elem` guessedLetters state) (word state) = 3 -- Vitória
    | livesRemaining state <= 0                      = 2 -- Derrota
    | otherwise                                      = 1 -- Continua