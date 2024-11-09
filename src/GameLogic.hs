module GameLogic (makeGuess, checkResult, validateGuess) where

import GameState (State (..))
import Data.Char (toLower, isAlpha)

makeGuess :: Char -> State -> State
makeGuess letter gameState = 
    if toLower letter `elem` word gameState
    then gameState { guessedLetters = toLower letter : guessedLetters gameState }
    else gameState { 
        guessedLetters = letter : guessedLetters gameState,
        livesRemaining = livesRemaining gameState - 1
    }

checkResult :: State -> Int
checkResult state
    | all (`elem` guessedLetters state) (word state) = 3 -- Vitória
    | livesRemaining state <= 0                      = 2 -- Derrota
    | otherwise                                      = 1 -- Continua

validateGuess :: Char -> State -> IO Bool
validateGuess guess gameState
    | not (isAlpha guess) = do -- Checa se é letra
        putStrLn "\n\nCaractere inválido. Deve ser uma letra do alfabeto."
        return False
    | guess `elem` guessedLetters gameState = do -- Checa se a letra já foi usada antes
        putStrLn "\n\nEsta letra já foi usada, tente outra."
        return False
    | otherwise = return True