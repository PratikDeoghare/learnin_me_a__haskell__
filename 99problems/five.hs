


myReverse :: [a] -> [a] 
myReverse [] = [] 
myReverse (x:xs) = (myReverse xs) ++ [x]

main = do
    print $ myReverse ( [] :: [()] )
    print $ myReverse [1,2,3] 
    print $ myReverse "A man, a plan, a canal, panama!" 
