

-- how about negative numbers? 

range a b = (drop (a - 1) . take b) [1..]

main = do
    print $ range 4 9 
