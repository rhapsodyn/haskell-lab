import Data.List
import Data.Char

identifier :: String -> Bool
identifier input = not ((not . isLetter $ input !! 0) || (last input == '-') || ("--" `isInfixOf` input))

main = print $ identifier "int1"