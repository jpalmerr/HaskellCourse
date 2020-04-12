main :: IO () -- "has type" IO unit
main = do
    content <- readFile "numbers.txt"
    putStrLn content