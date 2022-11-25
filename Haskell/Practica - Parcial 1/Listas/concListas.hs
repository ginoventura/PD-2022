concatenacion :: [a] -> [a] -> [a]
concatenacion [] ys = ys
concatenacion (x:xs) ys = x : (concatenacion xs ys)