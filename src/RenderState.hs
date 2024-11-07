module RenderState (renderState) where

import GameState (State (..))

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

renderState :: State -> IO ()
renderState state = do
    let totalLives = 6
        index = totalLives - livesRemaining state
        hangmanPic = hangmanPics !! index
        wordDisplay = displayWord (word state) (guessedLetters state)
    putStrLn hangmanPic
    putStrLn ""
    putStrLn wordDisplay
    putStrLn ""

