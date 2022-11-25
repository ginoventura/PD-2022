sumaCuadrados :: [Int] -> Int
sumaCuadrados [] = 0
sumaCuadrados (x:xs) = x*x + sumaCuadrados xs 