

-- run length encoding 


pack :: Eq a => [a] -> [[a]]
pack [] = [] 
pack xs = [takeWhile (\x -> x == (head xs)) xs ] ++ ( pack $ dropWhile (\x -> x == (head xs)) xs ) 

encode :: Eq a => [a] -> [(Int, a)] 
-- encode xs = map (\x -> (length x, head x) ) $ pack xs 
encode = map (\x -> (length x, head x) ) . pack 
main = do 
    print $ encode "aaaabccaadeeee"
