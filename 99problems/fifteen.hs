



repli :: [a] -> Int -> [a]
repli xs n = foldl (++) [] $ map (\x -> take n (repeat x)) xs 


main = do 
    print $ repli [1, 2, 3] 4 
    print $ repli "jamesbond" 5 

