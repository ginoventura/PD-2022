productoLista :: [Int] -> Int
productoLista [] = 1
productoLista (x:xs) = x * productoLista xs