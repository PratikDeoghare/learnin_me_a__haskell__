

insertAt x xs n = (take (n-1) xs) ++ [x] ++ (drop (n-1) xs)

main = do
    print $ insertAt 'X' "abcd" 2
