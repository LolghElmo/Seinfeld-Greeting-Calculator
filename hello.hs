          import Data.List (isPrefixOf, words, unwords)
          import Data.Char (toLower, isSpace)
          
          --Process String Function
          processString :: String -> Int
          processString str
              | "hello" `isPrefixOf` lowerStr = 0
              | head lowerStr == 'h' = 20
              | otherwise = 100
            where
              lowerStr = map toLower (dropWhile isSpace str)
              
          -- Main Function
          main :: IO ()
          main = loop
            where
              loop :: IO ()
              loop = do
                  putStrLn "Enter a greeting (or type 'e' to quit):"
                  input <- getLine
                  if input == "e"
                      then putStrLn "Exiting.       .."          
                      else do
                          let result = processString input
                          putStrLn $ concat ["Result: ", show result, " $"]
                          loop
