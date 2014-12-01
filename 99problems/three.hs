

elementAt :: [a] -> Int -> Maybe a 

elementAt [] _ = Nothing
elementAt xs 0 = Just $ head xs
elementAt xs k = if length xs <= k then Nothing else elementAt (tail xs) (k - 1) -- doesn't work with infinite lists 


elementAt' :: [a] -> Int -> Maybe a 
elementAt' [] _ = Nothing
elementAt' xs k = 
    if length xst < k + 1 
        then 
            Nothing 
        else 
            Just (xst !! k) 
    where xst = take (k + 1) xs 


main = do
    print $ elementAt' ['a'..'z'] 20 
    print $ elementAt' [1,3..] 45 
    print $ elementAt' ([] :: [()]) 12 


