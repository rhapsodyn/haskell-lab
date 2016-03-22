import Data.List

data Section = Section { getA :: Int, getB :: Int, getC :: Int } deriving (Show)  
type RoadSystem = [Section] 

data Label = A | B | C deriving (Show)  
type Path = [(Label, Int)]  

stol :: (Path, Path) -> Section -> (Path, Path)
stol (pa, pb) (Section a b c) = 
    let preA = sum (map snd pa)
        preB = sum (map snd pb)
        someA = if preA + a < preB + b + c then [(A, a)] else [(C, c), (B, b)]
        someB = if preB + b < preA + a + c then [(B, b)] else [(C, c), (A, a)]
    in (pa ++ someA, pb ++ someB)

optimalPath :: RoadSystem -> Path
optimalPath rs = 
    let (bestAPath, bestBPath) = foldl stol ([],[]) rs
    in if sum (map snd bestAPath) < sum (map snd bestBPath) then bestAPath else bestBPath

heathrowToLondon :: RoadSystem  
heathrowToLondon = [Section 50 10 30, Section 5 90 20, Section 40 2 25, Section 10 8 0]  

main = print (optimalPath heathrowToLondon)