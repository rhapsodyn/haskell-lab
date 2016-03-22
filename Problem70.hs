data Tree a = Node a [Tree a] deriving Show

spliter = "^"

treeToString :: Tree Char -> String
--treeToString (Node a []) = [a] ++ spliter
treeToString (Node a trees) = [a] ++ (concat (map treeToString trees)) ++ spliter

main = print $ treeToString (Node 'a' [Node 'f' [Node 'g' []],Node 'c' [],Node 'b' [Node 'd' [],Node 'e' []]])