--elem2 :: (Eq a) => a->[a]->Bool
--elem2 _ [] = False
--elem2 a (x:xs)
--    | a == x = True
--    | otherwise = elem2 a xs

--qsort :: (Ord a) => [a] -> [a]
--qsort [] = []
--qsort (x:xs) =
--    let smaller = qsort [y | y <- xs, y <= x]
--        bigger = qsort [y | y <- xs, y > x]
--    in smaller ++ [x] ++ bigger

--zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c] 
--zipWith' _ [] _ = []
--zipWith' _ _ [] = []
--zipWith' f (x:xs) (y:ys) = f x y : zipWith f xs ys

--filter2 :: (a -> Bool) -> [a] -> [a]
--filter2 _ [] = []
--filter2 f (x:xs)
--    | f x       = x : filter2 f xs
--    | otherwise = filter2 f xs

--elem' :: (Eq a) => a -> [a] -> Bool  
--elem' y = foldl (\acc x -> if x == y then True else acc) False

--map' f xs = foldl (\acc x -> acc ++ [f x]) [] xs

--findKey :: (Eq k) => k -> [(k,v)] -> Maybe v
--findKey _ [] = Nothing
--findKey key ((k,v):rest)
--    | key == k  = Just v
--    | otherwise = findKey key rest

--type
--data Vector v = Vector v v v deriving (Show)

--vadd :: (Num v) => Vector v -> Vector v -> Vector v
--vadd (Vector x1 y1 z1) (Vector x2 y2 z2) = Vector (x1 + x2) (y1 + y2) (z1 + z2)

--vmul :: (Num v) => Vector v -> v -> Vector v
--vmul (Vector x y z) w = Vector (x * w) (y * w) (z * w)

--typeclass
--class YesNo a where
--    yesno :: a -> Bool

--instance YesNo Int where
--    yesno 0 = False
--    yesno _ = True

--instance YesNo [a] where
--    yesno [] = False
--    yesno _  = True

--mapping :: [(String, Int)]
--mapping = [("1", 1), ("2", 2)]

--func :: String -> Int
--func input = 
--    let num = case lookup input mapping of 
--                    Just n -> n
--                    Nothing -> 0
--    in num * 2

--gray :: Int -> [String]
--gray 0 = [""]
--gray n = foldr (\x acc -> (x ++ "0"):(x ++ "1"):acc) [] $ gray (n - 1)

--fib 0 = 0
--fib 1 = 1
--fib 2 = 1
--fib n = (fib $ n - 1) + (fib $ n - 2)

--dupli :: [a] -> Int -> [a]
--dupli xs n = concat $ [ take n (repeat x) | x <- xs ]

--slice :: [a] -> Int -> Int -> [a]
--slice xs start end = take (end - start + 1) $ drop (start - 1) xs

--add2 x y = do
--            a <- Just x
--            b <- Just y
--            return $ a + b

--myFunc :: Int -> String
--myFunc _ = "string"

--myFunc :: Show a => a -> String
--myFunc _ = "any"

--myTranspose :: [[a]] -> [[a]]
--myTranspose [] = []
--myTranspose ([]:z) = myTranspose z
--myTranspose ((x:y):z) = (x : [ a | (a:_) <- z]) : (myTranspose (y : [ a | (_:a) <- z]))

myFoldl :: (a -> b -> a) -> a -> [b] -> a
myFoldl func start xs = 

main = print $ myTranspose [[1,2,3], [1,2], [1]]