module GameState (State(..), newGame) where

import ChooseWord (chooseWord)

data State = State {
    word :: String,
    guessedLetters :: [Char],
    livesRemaining :: Int
}

newGame :: IO State
newGame = do -- IO precisa estar dentro de um 'do'
    -- Transforma a IO String em String
    selectedWord <- chooseWord
    return (State selectedWord [] 6)