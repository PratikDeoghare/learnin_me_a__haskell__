

data Multiple a b = Single b | Multiple a b deriving Show 

-- encode 

pack :: Eq a => [a] -> [[a]]
pack [] = [] 
pack xs = [takeWhile (\x -> x == (head xs)) xs ] ++ ( pack $ dropWhile (\x -> x == (head xs)) xs ) 

f :: Eq b => [b] -> (Multiple Int b)
f (x:[]) = Single x
f xs = Multiple (length xs) (head xs)

encode :: Eq a => [a] -> [Multiple Int a] 
encode = map f . pack 

-- decode 

g :: Multiple Int b -> [b] 
g (Single x) = [x] 
g (Multiple 0  x) = [] 
g (Multiple nx x) = x : g (Multiple (nx - 1) x)

decode :: Eq a => [Multiple Int a] -> [a] 
decode xs = foldl (++) [] $ map g xs 

main = do
    print $ (decode . encode) "aaaabccaadeeee"
    print $ (decode . encode) [1,2,3,3,3,4,4,4,3,3,1]
    


