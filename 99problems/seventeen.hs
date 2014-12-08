

-- hope this doesn't use primitives 
-- need to learn about | in pattern matching 

split' :: [a] -> Int -> [[a]]
split' xs n = [take n xs, drop n xs]

take' n xs = map (\x -> snd x) $ filter (\x -> (fst x) <= n) $ zip [1..] xs 
drop' n xs = map (\x -> snd x) $ filter (\x -> (fst x) > n) $ zip [1..] xs 

split xs n = [take' n xs, drop' n xs] 

main = do 
    print $ split [1..10] 3 
    print $ split "junglebook" 6 



