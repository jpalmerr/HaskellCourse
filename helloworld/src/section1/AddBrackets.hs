addBrackets s = "[" ++ s ++ "]"

result = map addBrackets ["one", "two", "three"]

main = print result

-- stack runghc src/section1/AddBrackets.hs