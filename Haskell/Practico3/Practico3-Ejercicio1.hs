map1 :: (a  -> b)  -> [a]  -> [b]
map1 f [] = []
map1 f (x:xs) = f x : map1 f xs

map2 f xs = [f x | x  <- xs]