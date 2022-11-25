filterPositivos [] = []
filterPositivos (x:xs) | x>0 = x : filterPositivos xs 	
                                   | otherwise = filterPositivos xs
