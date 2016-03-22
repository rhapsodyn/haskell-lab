combinations :: Int -> [Int] -> [[Int]]
combinations _ [] = []
combinations 1 xs = map (\x -> [x]) xs
combinations n (x:xs) = (map (\y -> x:y) (combinations (n-1) xs)) ++ (combinations n xs)

main = print $ combinations 2 [1,2,3,4]