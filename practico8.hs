-- act 1
nand :: Bool -> Bool -> Bool
nand True True = False
nand _ _ = True

-- act 2
maj :: Bool -> Bool -> Bool -> Bool
maj a b c = length (filter (==True) [a,b,c]) >= 2

-- act 3
exiP :: [Int] -> (Int -> Bool) -> Bool
exiP ls pred = or lista
           where lista = [ pred x | x <- ls]

paraP :: [Int] -> (Int -> Bool) -> Bool
paraP ls pred = and lista
           where lista = [ pred x | x <- ls]

-- act 4
sumatoria :: [Int] -> (Int -> Bool) -> Int
sumatoria ns fun = sum [a | a <- ns, fun a]

productoria :: [Int] -> (Int -> Bool) -> Int
productoria ns fun = product [x | x <- ns, fun x]

contatoria :: [a] -> (a -> Bool) -> Int
contatoria elems pred = length [e | e <- elems, pred e]

