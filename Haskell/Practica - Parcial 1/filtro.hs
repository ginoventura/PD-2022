filtro :: (a -> Bool) -> [a] -> [a]
filtro p [] = []
filtro p (x:xs) | p x = x : filtro p xs
                | otherwise = filtro p xs