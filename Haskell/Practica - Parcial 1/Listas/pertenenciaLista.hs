pertenencia :: Eq a => a -> [a] -> Bool
pertenencia _ [] = False
pertenencia x (y:ys) = (x==y) || pertenencia x ys