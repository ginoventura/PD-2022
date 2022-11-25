capicua :: [Int] -> Bool 
capicua [] = True 
capicua [x] = True
capicua (x:xs) = reverse (x:xs) == (x:xs)


































--palindrome xs = reverse xs == xs
--palindrome :: [Int] -> Bool
--palindrome [] = True
--palindrome [x] = True
--palindrome(x:xs) = reversa (x:xs) == (x:xs)