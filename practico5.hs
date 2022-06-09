	-- act 1
inf :: [Int]
inf = 1:inf                          -- [a | a <- [1,1..], 1 < 2]

-- act 2
infDesde :: Int -> [Int]
infDesde x = x:(infDesde (x+1))       -- [a | a <- [x..], x >= 0]

-- act 3
nPrimeros :: Int -> [Int]
nPrimeros x = take x [0..]           -- [a | a <- [0.. x], x >= 0]

-- act 4
cincoElem :: Int -> [Int]
cincoElem x = take 5 [x..]               -- [a | a <- [n..n+4]]

-- 2da parte
-- act 5
listCuad :: [Int] -> [Int]
listCuad xs = map (^2) xs

-- act 6
divsors :: Int -> [Int]
divsors a = [x | x <- [1..a], mod a x == 0]

-- act 7
primo :: Int -> Bool              
primo x = length (divsors x) == 2 

listPrim :: [Int] -> [Int]
listPrim xs = [a | a <- xs, primo a]

-- act 8
sumCuad :: [Int] -> Int
sumCuad xs = foldr (+) 0 (listCuad xs)

-- act 9
sucesorList :: [Int] -> [Int]
sucesorList xs = map (+1) xs

-- act 10
sumList :: [Int] -> Int
sumList xs = sum xs

-- act 11
factorial :: [Int] -> Int
factorial xs = foldr (*) 1 xs

-- 3ra parte
-- act 12 
listSucc = [a+1 | a <- [1..100]]

-- act 13
listC = [a*a | a <- [1..100]]

-- act 14
listParesM10 = [a | a <- [1..100],a > 10, mod a 2 == 0]

-- act 15
listDiv = [x | x <- [1..100], mod 100 x == 0]

-- act 16     .....
primEntre = [a | a <- [2..100], primo a]

-- act 17
prodCart = [(x,y) | x <- [1,2,3,4,5], y <- [6,7,8,9,10]]

-- prodCart :: [Int] -> [Int] -> [Int]
-- prodCart xs ys
         -- | [] [] = []
         -- | [] ys = ys
         -- | xs [] = prodCart xs ys
         -- | [x] ys = x*y:(prodCart xs ys)
         -- | otherwise = x*y:(prodCart xs ys)

-- act 18
listParesInf = [a | a <- [0..], mod a 2 == 0]