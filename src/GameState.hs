module GameState (State(..), newGame) where

import ChooseWord (chooseWord)

data State = State {
    word :: IO String,
    guessedLetters :: [Char],
    livesRemaining :: Int
}

newGame :: IO State
newGame = do -- IO precisa estar dentro de um 'do'
    return (State chooseWord [] 6)