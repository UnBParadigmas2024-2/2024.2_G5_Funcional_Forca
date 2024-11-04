module GameState (State(..)) where

data State = State {
    word :: String,
    guessedLetters :: [Char],
    livesRemaining :: Int
}