module GameState (State(..), newGame) where

import ChooseWord (chooseWord)

data State = State {
    word :: String,
    guessedLetters :: [Char],
    livesRemaining :: Int
}

newGame :: State
newGame = State chooseWord [] 6