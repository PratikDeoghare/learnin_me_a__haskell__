

-- direct rle

data Multiple a b = Single b | Multiple a b deriving Show

equalsHead :: Eq a => [a] -> a -> Bool 
-- equalsHead xs = (==) (head xs) 
equalsHead = (==) . head 

gt :: Eq a => [a] -> Multiple Int a 
gt xs = do 
    let lx = length $ takeWhile (equalsHead xs) xs 
    let hx = head xs 
    if lx == 1 then Single hx else Multiple lx hx 

gd :: Eq a => [a] -> [a]
gd xs = dropWhile (equalsHead xs) xs 

--f :: Eq a => [a] -> [Multiple Int a] 
--f [x] = Single x 

de :: Eq a => [a] -> [Multiple Int a] 
de [] = [] 
de xs = [gt xs] ++ (de.gd) xs 

main = do 
    print $ equalsHead [1, 3, 1] 2 
    print $ equalsHead [1, 3, 1] 1 
    print $ "aaaabccaadeeee"
    print $ de "aaaabccaadeeee"
    print $ [1,2,3,3,3,4,4,4,3,3,1] 
    print $ de [1,2,3,3,3,4,4,4,3,3,1] 

