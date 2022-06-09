--(2)
prim :: [a] -> a   -- perfil 
prim (x:xs) = x    -- 1er elem

fin :: [a] -> [a]
fin (_:xs) = xs

ult :: [a] -> a 
ult [x] = x
ult (x:xs) = ult xs

init' :: [a] -> [a]
init' [x] = []
init' (x:xs) = x:(init' xs)

--(3)
conc :: [a] -> [a] -> [a]
conc [] [] = []
conc xs [] = xs
conc [] ys = ys
conc (x:xs) ys = (x:(conc xs ys))

tomar :: Int -> [a] -> [a]
tomar 0 xs = []
tomar n [] = []
tomar n (x:xs) = x:(tomar (n-1) xs)

tirar :: Int -> [a] -> [a]
tirar 0 xs = xs
tirar _ [] = []
tirar n (_:xs) = tirar (n-1) xs

concFin :: a -> [a] -> [a]
concFin y [] = [y]
concFin y [x] = x:(concFin y [])
concFin y (x:xs) = x:(concFin y xs)

--(4)
abs' :: Int -> Int                
abs' x = if x < 0 then x*(-1) else x

--(5)
primo :: Int -> Bool              
primo x = length (listDiv x x) == 2 

listDiv :: Int -> Int -> [Int]
listDiv x y | y == 1 = [1]
            | mod x y /= 0 = listDiv x (y-1)
            | mod x y == 0 = y:(listDiv x (y-1))

{-divisoresCant    extra para la solucion anterior
divisoresCant x y 
				| x == y = False
				| x <= y = mod y x == 0 || divisoresCant (x+1) y-}

--(6)
numPriMen :: Int -> [Int]           
numPriMen x
        | x < 2 = []
        | primo (x) = x:(numPriMen (x-1))
        | otherwise = numPriMen (x-1)

--(7)
reves :: [a] -> [a]                   
reves [] = []
reves [x] = [x]
reves (x:xs) = concFin x (reves xs)

--(8)
iguales :: Eq a => [a] -> [a] -> Bool          
iguales (x:xs) (y:ys)
    | x /= y = False
    | x == y = True
    | otherwise = iguales xs ys

--(9)
palindromo :: Eq a => [a] -> Bool      
palindromo xs = xs == reves xs