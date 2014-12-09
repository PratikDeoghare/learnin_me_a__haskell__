


removeat :: Int -> [a] -> (a, [a])
removeat n xs = (xs !! (n-1), take (n - 1) xs ++ drop n xs)

main = do
    print $ removeat 2 "abcd"
