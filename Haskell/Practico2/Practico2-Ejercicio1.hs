filterPositivos [] = []
filterPositivos (x:xs) | x>0 = x*x : filterPositivos xs 
                                   | otherwise = filterPositivos xs
