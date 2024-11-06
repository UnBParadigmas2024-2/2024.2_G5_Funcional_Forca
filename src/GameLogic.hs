module GameLogic (makeGuess) where

import GameState (State (..))

makeGuess :: Char -> IO State -> IO State
makeGuess letter gameState = do
    -- O operador '<-' transforma o 'IO State' para um 'State'
    state <- gameState
    -- O operador '<-' transforma a 'IO String' para uma 'String'
    selectedWord <- word state
    let updatedState = if letter `elem` selectedWord
                       then state { guessedLetters = letter : guessedLetters state }
                       else state { guessedLetters = letter : guessedLetters state,
                                    livesRemaining = livesRemaining state - 1 }
    -- O 'return' transforma o 'State' em um 'IO State'
    return updatedState
    
