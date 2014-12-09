



rotate :: [a] -> Int -> [a]
rotate xs n 
    | n < 0     = (drop (length xs + n) xs) ++ (take (length xs + n) xs)
    | otherwise = (drop n xs) ++ (take n xs)


main = do
    print $ rotate ['a','b','c','d','e','f','g','h'] 3
    print $ rotate ['a','b','c','d','e','f','g','h'] (-2)
    




