
import System.Environment
import Data.Maybe

-- find the last element of a list 

-- myLast :: [a] -> Maybe a 
myLast [] = Nothing
myLast xs = Just $ xs !! (length xs - 1) 
main = do
    xs <- getArgs
    print $ myLast xs 



