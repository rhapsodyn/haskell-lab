pack :: Eq a => [a] -> [[a]]
pack = reverse . foldl func []
        where func [] a = [[a]]
              func (x:xs) a = if head x == a then (a:x):xs else [a]:(x:xs)


main = print $ pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']