

-- compress 

compress :: Eq a => [a] -> [a] 
compress [] = [] 
compress (x:xs) = [x] ++ (compress $ dropWhile (\y -> y == x) xs)

main = do
   print $ compress [1,1,1,3]
   print $ compress "aaaabccaadeeee"


