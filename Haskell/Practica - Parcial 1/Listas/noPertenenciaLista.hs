noPertenencia :: Eq a => a -> [a] -> Bool
noPertenencia _ [] = True
noPertenencia x (y:ys) = (x/=y) && noPertenencia x ys