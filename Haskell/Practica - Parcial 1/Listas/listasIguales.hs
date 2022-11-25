listasIguales :: Eq a => [a] -> [a] -> Bool
listasIguales [] [] = True
listasIguales (x:xs)(y:ys) = x==y && listasIguales xs ys
listasIguales _ _ = False