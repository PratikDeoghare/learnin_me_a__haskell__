

-- modified RLE 

pack :: Eq a => [a] -> [[a]]
pack [] = [] 
pack xs = [takeWhile (\x -> x == (head xs)) xs ] ++ ( pack $ dropWhile (\x -> x == (head xs)) xs ) 

data Multiple a b = Single b | Multiple a b deriving Show 

f :: Eq b => [b] -> (Multiple Int b)
f (x:[]) = Single x
f xs = Multiple (length xs) (head xs)

--f xs = do 
--    let lxs = length xs 
--    let hxs = head xs 
--    if lxs == 1 then Single hxs else Multiple lxs hxs

encode :: Eq a => [a] -> [Multiple Int a] 
-- encode xs = map (\x -> (length x, head x) ) $ pack xs 
encode = map f . pack 

main = do 
    print $ encode "aaaabccaadeeee"
    print $ encode [1,2,3,3,3,4,4,4,3,3,1]
