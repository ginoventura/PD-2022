concatenarListas:: [Int] -> [Int] -> [Int]
concatenarListas [] ys = ys
concatenarListas (x:xs) ys = x : (concatenarListas xs ys) 