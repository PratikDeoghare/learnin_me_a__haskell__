
import System.IO 
import Data.Maybe

-- find the last but one element of a list 

myLastButOne :: [a] -> Maybe a
myLastButOne []  = Nothing 
myLastButOne [x] = Nothing
myLastButOne [x, y] = Just x 
myLastButOne (_ : xs)  = myLastButOne xs 

main = do
    print $ myLastButOne ([] :: [Int]) 
    print $ myLastButOne [1, 2, 55]
    print $ myLastButOne [1]


