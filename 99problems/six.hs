
isPalindrome :: Eq a => [a] -> Bool 
isPalindrome [] = True 
isPalindrome [x] = True 
isPalindrome xs = (head xs == last xs) && ( isPalindrome $ init $ tail xs ) 

main = do 
    print $ isPalindrome [1,2,1]
    print $ isPalindrome [1, 1]
    print $ isPalindrome "banana"
