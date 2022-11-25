--Suma 
suma :: (Int, Int) -> Int
suma(x,y) = (x+y)

--Resta
resta :: (Int, Int) -> Int
resta(x,y) = (x-y)

--Multiplicacion 
multiplicacion :: (Int, Int) -> Int
multiplicacion(x,y) = (x*y)

--Division
division :: (Int, Int) -> Int
division(x,y) = div x y

--Cuadrado
cuadrado :: Int -> Int
cuadrado x = x*x

--Potencia
potencia :: (Int,Int) -> Int
potencia(x,n) = x^n 

--Menor o mayor
evaluar (x,y) | x>y = putStrLn "X es mayor"
    | y>x = putStrLn "Y es mayor"
    | otherwise = putStrLn "X e Y son iguales"
    
