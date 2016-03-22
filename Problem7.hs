import Data.List

data NestedList a = Elem a | List [NestedList a] deriving Show

flatten :: NestedList a -> [a]
flatten (Elem a) = [a]
flatten (List []) = []
flatten (List list) = foldl (\acc x -> acc ++ flatten x) [] list

main = print $ flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])