


slice xs i j = (drop (i - 1) . take j) xs 

main = do
    print $ slice "abcdefghijk" 3 7


