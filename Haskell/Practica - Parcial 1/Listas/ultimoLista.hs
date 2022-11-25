ultimoLista :: [Int] -> Int
ultimoLista [x] = x
ultimoLista (_:xs) = ultimoLista xs