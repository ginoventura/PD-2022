nesimo :: [a] -> Int -> a
nesimo (x:_) 0 = x
nesimo (_:xs) n = nesimo xs (n-1)