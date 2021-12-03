import System.IO  
import Control.Monad
-- import Data.List.HT (mapAdjacent)
-- import GHC.Types

-- shift both arrays into different directions by adding a massive number and find the diff
-- then filter out the ones less than 0 because they are decrements.
countIncrements :: [Int] -> Int
countIncrements xs = length . filter (>0) $ zipWith (-) (xs ++ [maxBound::Int]) ((maxBound::Int) : xs)


-- mapAdjacent :: (a -> a -> a) -> [a] -> [a]
-- mapAdjacent f xs = zipWith f (init xs) (tail xs)


-- solutionTwo :: [Int] -> Int
-- solutionTwo = length . filter (==True) . mapAdjacent (<)


f :: [String] -> [Int]
f = map read

main :: IO()
main = do
    let list = []
    handle <- openFile "this.txt" ReadMode
    contents <- hGetContents handle
    let singleWords = words contents
        list = f singleWords
    print(countIncrements list)
    hClose handle