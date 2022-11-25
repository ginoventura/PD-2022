listaSinUltElem :: [Int] -> [Int]
listaSinUltElem [x] = []
listaSinUltElem (x:xs) = x : listaSinUltElem xs