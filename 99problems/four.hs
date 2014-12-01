


myLength :: [a] -> Int
myLength []   = 0 
myLength (_:xs) = 1 + myLength xs 

main = do
    print $ myLength [] 
    print $ myLength [1..10]

