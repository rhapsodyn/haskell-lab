import Data.List

queens :: Int -> [[Int]]
queens n = queens' n
    where queens' 0   = [[]]
          queens' k   = [q:qs | qs <- queens' (k-1), q <- [1..n], isSafe q qs]
          isSafe q qs = not (q `elem` qs || q `isBias` qs)
          isBias q qs = any (\(row, col) -> abs (col - q) == row) $ zip [1..] qs

main = print $ head $ queens 4