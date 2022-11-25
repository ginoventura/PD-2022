concatenacionListas :: [[a]] -> [a]
concatenacionListas [] = []
concatenacionListas (xs:xss) = xs ++ concatenacionListas xss