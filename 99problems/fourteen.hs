

dupli :: [a] -> [a] 
dupli xs = foldl (++) [] $ map (\x -> [x, x]) xs 

main = do 
    print $ dupli [1, 2, 3]
    print $ dupli "jamesbond"
