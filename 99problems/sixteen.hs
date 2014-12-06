


dropEvery :: [a] -> Int -> [a] 
dropEvery xs n = [ y | (x, y) <- zip [1..] xs, x `mod` n /= 0] 

main = do
    print $ dropEvery "abcdefghik" 3

