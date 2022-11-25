funcionLista :: (a -> b) -> [a] -> [b]
funcionLista f [] = []
funcionLista f (x:xs) = f x : funcionLista f xs