square :: Int -> Int
square x = x ^ 2

squareSum :: Int -> Int -> Int
squareSum x y = square x + square y

doubleIt :: Int -> Int
doubleIt x = x * 2

addTen :: Int -> Int
addTen x = x + 10

parenthesizeWords s = unwords $ map parenthesizeWord (words s) where parenthesizeWord s = "(" ++ s ++ ")"

parenthesizeWordsLamda s = unwords $ map (\s -> "(" ++ s  ++ ")") (words s)

parenthesizeWord = \s -> "(" ++ s ++ ")"

parenthesizeWord' s = "(" ++ s ++ ")"

parenthesizeWord'' = ("(" ++) . (++ ")")

func :: (Show a1, Show a) => a -> a1 -> [Char]
func x y = show x ++ show y

func' :: (Show a1, Show a) => a -> a1 -> [Char]
x `func'` y = show x ++ show y

-- range

lessThanFive x = x < 5

main :: IO ()
main = do
    let result = squareSum 4 5
        doubleAddTenA = addTen (doubleIt 5)
        doubleAddTenB = (addTen . doubleIt) 5 
        words = parenthesizeWords "We love haskell"
        moreWords = parenthesizeWordsLamda "We love haskell"
        pwWords = parenthesizeWord "we love haskell"
        pwWords' = parenthesizeWord' "we love haskell"
        pw'' = parenthesizeWord'' "functions"
        show1 = func "Aaa" "Bbb"

        range = filter lessThanFive [1..10]

    print result
    print doubleAddTenA
    print doubleAddTenB
    print words
    print moreWords
    print pwWords
    print pwWords'
    print pw''
    print show1
    print $ [1..10]
    print range
    print $ filter (\x -> x < 5) [1..10]
    print $ filter (< 5) [1..10]
    print $ map (* 2) $ filter (< 5) [1..10]