


data NestedList a = Elem a | List [ NestedList a ] 

-- flatten nested lists

g (Elem x) = [x]

flatten :: NestedList a -> [a] 
flatten (Elem x) = [x]
flatten (List xs) = foldl (++) [] $ map flatten xs 

main = do 
    print $ flatten ( List [Elem 5] ) 
    print $ flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
