minimo :: Ord a => [a] -> a
minimo [x] = x
minimo (x:y:xs) = minimo ((min x y):xs)