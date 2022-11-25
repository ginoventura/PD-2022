longitudLista :: [Int] -> Int
longitudLista [] = 0
longitudLista (_:xs) = 1 + longitudLista xs 