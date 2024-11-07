module RenderState (renderState) where

import GameState (State (..))
import Data.List ( intercalate )

hangmanPics :: [String]
hangmanPics = [
    "  +---+\n  |   |\n      |\n      |\n      |\n      |\n=========",
    "  +---+\n  |   |\n  O   |\n      |\n      |\n      |\n=========",
    "  +---+\n  |   |\n  O   |\n  |   |\n      |\n      |\n=========",
    "  +---+\n  |   |\n  O   |\n /|   |\n      |\n      |\n=========",
    "  +---+\n  |   |\n  O   |\n /|\\  |\n      |\n      |\n=========",
    "  +---+\n  |   |\n  O   |\n /|\\  |\n /    |\n      |\n=========",
    "  +---+\n  |   |\n  O   |\n /|\\  |\n / \\  |\n      |\n========="
    ]

displayWord :: String -> [Char] -> String
displayWord w guessed = concatMap (\c -> if c `elem` guessed then [c, ' '] else "_ ") w

displayGuessed :: State -> String
displayGuessed state = 
    "Letras usadas: " ++ formatGuessedLetters (guessedLetters state)

formatGuessedLetters :: [Char] -> String
formatGuessedLetters letters = 
    intercalate ", " (map (:[]) letters)

renderState :: State -> IO ()
renderState state = do
    let totalLives = 6
        index = totalLives - livesRemaining state
        hangmanPic = hangmanPics !! index
        wordDisplay = displayWord (word state) (guessedLetters state)
        lettersDisplay = displayGuessed state 
    putStrLn "\n"
    putStr hangmanPic
    putStr " "
    putStrLn wordDisplay
    putStrLn lettersDisplay

