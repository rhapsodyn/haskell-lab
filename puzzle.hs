import Data.Map as M
import Data.Maybe
import Data.List

mapping :: [(Int, String)]
mapping = [('1', "one"),(2, "two"),(3, "three"),(4, "four"),(5, "five"),(6, "six"),(7, "seven"),(8, "eight"),(9, "nine"),(0, "zero")]

fullWords :: Int -> String
fullWords i = concat $ intersperse "-" [ fromJust (M.lookup n mapping) | n <- show i]

main = print $ fullWords 175