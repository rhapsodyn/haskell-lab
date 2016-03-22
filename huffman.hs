import Data.List

data HTree = LeafType Char Int | BranchType Int HTree HTree deriving (Show)

getNodeValue :: HTree -> Int
getNodeValue (LeafType _ a) = a
getNodeValue (BranchType a _ _) = a

mergeNode :: HTree -> HTree -> HTree
mergeNode tree1 tree2 = BranchType ((getNodeValue tree1) + (getNodeValue tree2)) tree1 tree2

encode :: HTree -> String -> [(Char, String)] -> [(Char, String)]
encode (LeafType a _) str rst = (a, str) : rst
encode (BranchType _ ltree rtree) str rst = (encode ltree (str ++ "0") rst) ++ (encode rtree (str ++ "1") rst) ++ rst

buildTree :: [(Char, Int)] -> HTree
buildTree list =
    let nodeList = map (\(a,b) -> LeafType a b) list 
        sort = sortBy (\a b -> compare (getNodeValue a) (getNodeValue b))
        merge (x:y:xs) = mergeNode x y : xs
        recur list = case length list of 1 -> head list
                                         otherwise -> recur $ merge $ sort list
    in recur nodeList
    
huffman :: [(Char, Int)] -> [(Char, String)]
huffman [] = []
huffman list = 
    let tree = buildTree list
    in encode tree "" []

main = print $ huffman [('a',45),('b',13),('c',12),('d',16),('e',9),('f',5)]