{-
Intercala los elementos de dos listas en una
ejemplo: intercalar [1,3] [2,4] = [1,2,3,4]
-}
intercalar :: [a] -> [a] -> [a]
intercalar xs [] = xs
intercalar [] ys = ys
intercalar (x:xs) (y:ys) = [x,y] ++ (intercalar xs ys)

{-
Separa los elementos de una lista en una tupla.
El primer elemento de la tupla contiene todos los valores de la
lista original en posiciones pares
El segundo elemento de la tupla contiene todos los valores de la lista original en posiciones impares
ejemplo: separar [1,2,3] = ([1,3], [2])
-}
separar :: [a] -> ([a],[a])
separar [] = ([],[])
separar [x] = ([x],[])
separar (x:(y:ys)) = (x:restoI, y:restoD)
                 where (restoI, restoD) = separar ys

{-
Dada una lista ordenada en orden ascendente y un valor, utiliza
una búsqueda dicotómica para buscar el valor.
Retornar True si y solo si la lista contiene al valor
ejemplo: existe [1,2,3,4] 2 = True
-}
existe :: [Int] -> Int -> Bool
existe [] e = False
existe [x] e = x == e
existe xs e | e == primeroDer = True
            | e > primeroDer = existe parteDer e
            | otherwise = existe parteIzq e
     where longitud = length xs
           mitad = (longitud `div` 2) --div es la división entera
           parteIzq = take mitad xs
           parteDer = drop mitad xs
           primeroDer = (head parteDer)
{-
Determina si un valor (>0) es primo
-}     
esPrimo :: Int -> Bool
esPrimo n = divisores n == 2

{-
Devuelve la cantidad de divisores para un número n entre 1 y n
-}
divisores :: Int -> Int
divisores n = divisores' n n

{-
Devuelve la cantidad de divisores para un número n entre 1 y k
-}
divisores' :: Int -> Int -> Int
divisores' n 1 = 1
divisores' n k | (n `mod` k) == 0 = 1 + divisores' n (k-1)
               | otherwise = divisores' n (k-1)
