	--act 1
listOrdConc :: (Ord a) => [a] -> [a] -> [a]
listOrdConc [] [] = []
listOrdConc xs [] = xs
listOrdConc [] ys = ys
listOrdConc (x:xs) (y:ys) = if x <= y 
                            then quicksort (x:y:(listOrdConc xs ys))
                            else quicksort (y:x:(listOrdConc xs ys))

-- act 2
quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let smallerSorted = quicksort [a | a <- xs, a <= x]
        biggerSorted  = quicksort [a | a <- xs, a > x]
    in  smallerSorted ++ [x] ++ biggerSorted

-- act 3
dosAlaN :: Int -> Int
dosAlaN x | x == 0 = 1
          | otherwise = 2*(dosAlaN (x-1))

-- act 4
binario :: Int -> [Int]
binario 0 = []
binario 1 = [1]
binario n = binario (div n 2) ++ [mod n 2]

binarioEq :: Int -> [Int]
binarioEq e | coci == 0 = concFin (mod e 2) [0]
            | coci == 1 = concFin (mod e 2) [1]
            | otherwise = concFin (mod e 2) (binarioEq (div e 2))
            where coci = div e 2

concFin :: a -> [a] -> [a]
concFin y [] = [y]
concFin y [x] = x:(concFin y [])
concFin y (x:xs) = x:(concFin y xs)

-- act 5
pONBin :: Int -> Bool
pONBin x = mod x 2 == 0

pONBin' :: Int -> String
pONBin' x | mod x 2 == 0 = "Es par el binario ingresado"
          | otherwise = "Es impar el binario ingresado"

-- act 6
cuadPerfect :: Integer -> Bool
cuadPerfect x = y^2 == x
          where y = round (sqrt (fromIntegral x))

-- act 7
repetidos :: a -> Int -> [a]
repetidos z n
          | n == 0 = []
          |otherwise = z:(repetidos z (n-1))

-- act 8
nelem :: [a] -> Int -> a
nelem (x:xs) n
         | n == 0 = x
         | n > length (x:xs) || n < 0 = error "no existe la posicion dada"
         | n == length (x:xs) = nelem xs (n-1)
         |otherwise = nelem xs (n-1)

nelem' :: [a] -> Int -> Maybe a
nelem' [] _ = Nothing
nelem' (x:xs) n | n < 0 = Nothing
                | n == 0 = Just x
                | otherwise = nelem' xs (n-1)