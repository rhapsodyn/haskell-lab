import Data.List

compress :: Eq a => [a] -> [a]
compress = reverse . foldl func [] 
            where func [] a = [a]
                  func (x:xs) y = if x /= y then y:x:xs else x:xs

main = print $ compress "aaaabccaadeeee"