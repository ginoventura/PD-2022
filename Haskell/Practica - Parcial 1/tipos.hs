--Int
tipoInt :: Int -> Int -> Int
tipoInt x y = x*x + y*y
main = print(tipoInt 2 4)

--Float
tipoFloat :: Float -> Float -> Float
tipoFloat x y = x*x + y*y
main = print(tipoFloat 2.5 3.5)

--Double
tipoDouble :: Double -> Double -> Double
tipoDouble x y = x*x + y*y
main = print(tipoDouble 2.50 3.50)

--Bool 
main = do 
    let x = True
    if x == True then putStrLn "X coincide" else putStrLn "X no coincide"

--Char
tipoChar :: Char -> Char
tipoChar x = 'K'
main = do
    print(tipoChar x)