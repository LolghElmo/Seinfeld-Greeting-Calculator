import Data.List (isPrefixOf)
import Data.Char (toLower, isSpace)

-- | Process a string and return an integer based on specific conditions.
--   - Returns 0 if the string starts with "hello" (case insensitive).
--   - Returns 20 if the string starts with 'h'.
--   - Returns 100 otherwise.
processString :: String -> Int
processString str
    | "hello" `isPrefixOf` lowerStr = 0
    | head lowerStr == 'h' = 20
    | otherwise = 100
  where
    lowerStr = map toLower (dropWhile isSpace str)

-- | Main function initiates a loop for user input.
--   - Prompts the user for input and processes it using 'processString'.
--   - Loops until the user types 'e' to exit.
main :: IO ()
main = loop
  where
    loop :: IO ()
    loop = do
        putStrLn "Enter a greeting (or type 'e' to quit):"
        input <- getLine
        if input == "e"
            then putStrLn "Exiting..."
            else do
                let result = processString input
                putStrLn $ concat ["Result: ", show result, " $"]
                loop
