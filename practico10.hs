-- act 1
-- hecho

-- act 2
-- hecho 

-- act 3
igusList :: Eq a => [a] -> Bool
igusList [] = True
igusList (x:xs) = segun2 x xs

segun2 :: Eq a => a -> [a] -> Bool
segun2 _ [] = True
segun2 x (y:ys) = (x==y) && segun2 x ys

-- act 4
ordening :: Ord a=> [a] -> Bool
ordening [] = True
ordening [x] = True
ordening (x:y:xs) = (x < y) && ordening (y:xs)

-- act 5
minimo :: [Int] -> Int
minimo [] = maxBound             --2^63
minimo (x:xs) = min x (minimo xs)

-- act 6
suma2L :: Int -> [Int] -> Bool
suma2L n [] = False
suma2L n (x:xs) = (n + sum xs == x) || suma2L (n+x) xs

-- act 7
subSeg :: Eq a => [a] -> [a] -> Bool
subSeg [] ys = True
subSeg xs [] = False
subSeg (x:xs) (y:ys) = y == x && subDos xs ys || subSeg (x:xs) ys

subDos :: Eq a => [a] -> [a] -> Bool
subDos [] ys = True
subDos xs [] = False
subDos (x:xs) (y:ys) = y == x && subDos xs ys

-- act 8
parImp :: [Int] -> Int -> Int -> (Int,Int)
parImp [] a b = (a,b)
parImp (x:xs) a b
                 | even x = parImp xs (a+1) b
                 | otherwise = parImp xs a (b+1)

pOImp :: [Int] -> (Int,Int)  -- solucion 2 con tuplas recusivas
pOImp [] = (0,0)
pOImp (x:xs)
           | even x = (a+1,b)
           | otherwise = (a,b+1)
     where (a,b) = pOImp xs

-- extra
-- sumar :: Int -> [Int] -> Bool
-- sumar n [] = False
-- sumar n (x:xs) = sum (x:xs) == n || sus 0 n (x:xs)

-- sus :: Int -> Int -> [Int] -> Bool
-- sus _ 0 [] = True
-- sus m n [] = False
-- sus m n (x:xs) 
              -- | 
--

potenciaD2 :: Float -> Bool
potenciaD2 n 
            | n < 1 = False
            | otherwise = n == 1 || potenciaD2 (n/2)

pop :: Integer -> Bool
pop 0 = False
pop 1 = True
pop n
     | mod n 2 == 0 = pop (div n 2)
     | otherwise = False

--- prac 12
expS :: Int -> Int -> Int
expS x 0 = 1
expS x y = x*(expS x (y-1))

exp2 :: Int -> Int -> Int
exp2 x 0 = 1
exp2 x y | mod y 2 == 0 = (exp2 (x*x) (y-1))
         | mod y 2 == 1 = x*(exp2 x (y-1))
