insertar :: Ord a => a -> [a] -> [a]
insertar e [] = [e]
insertar e (x:xs)
    | e <= x = e:x:xs
    | otherwise = x : insertar e xs