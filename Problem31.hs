myGCD :: Int -> Int -> Int
myGCD a 0 = abs a
myGCD a b = myGCD b (mod a b)

main = print $ myGCD 462 1071 