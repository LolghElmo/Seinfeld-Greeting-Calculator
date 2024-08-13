import Data.List (isPrefixOf, words, unwords) 
import Data.Char (toLower, isSpace)           

-- | The 'processString' function takes a string input, processes it, 
-- and returns an integer based on specific conditions.
processString :: String -> Int
processString str
    -- If the input string starts with "hello" (case insensitive), return 0
    | "hello" `isPrefixOf` lowerStr = 0
    -- If the input string starts with the character 'h' (case insensitive), return 20
    | head lowerStr == 'h' = 20
    -- For any other input, return 100
    | otherwise = 100
  where
    -- 'lowerStr' is the input string converted to lowercase 
    -- and with leading spaces removed.
    lowerStr = map toLower (dropWhile isSpace str)
    
-- | The 'main' function is the entry point of the program.
-- It initializes the interactive loop where the user can enter strings 
-- and see the corresponding output based on 'processString'.
main :: IO ()
main = loop  -- Start the loop function defined below
  where
    -- | The 'loop' function handles continuous input from the user.
    -- It will keep prompting the user for input until they type 'e' to exit.
    loop :: IO ()
    loop = do
        -- Prompt the user to enter a greeting or 'e' to quit
        putStrLn "Enter a greeting (or type 'e' to quit):"
        
        -- Read the input from the user
        input <- getLine
        
        -- Check if the user wants to exit the loop
        if input == "e"
            -- If the user types 'e', print a message and stop the loop
            then putStrLn "Exiting..."
            -- Otherwise, process the input and continue the loop
            else do
                -- Process the input string using 'processString'
                let result = processString input
                
                -- Print the result in a formatted string
                putStrLn $ concat ["Result: ", show result, " $"]
                
                -- Call 'loop' again to allow the user to input another string
                loop
