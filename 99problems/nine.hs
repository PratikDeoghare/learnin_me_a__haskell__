

-- pack 
pack :: Eq a => [a] -> [[a]]
pack [] = [] 
pack xs = [takeWhile (\x -> x == (head xs)) xs ] ++ ( pack $ dropWhile (\x -> x == (head xs)) xs ) 

main = do
    print $ pack [1,1,3,3]
    print $ pack  ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
