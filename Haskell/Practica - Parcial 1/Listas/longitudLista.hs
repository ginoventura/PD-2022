longitud :: [a] -> Int
longitud [] = 0
longitud (_:xs) = 1 + longitud xs