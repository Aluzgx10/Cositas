-- act 1
data Nat = Zero| Succ Nat
--         deriving (Show, Eq)

instance Show Nat where
   show = show.natToInt
   
instance Eq Nat where 
   n == m = (natToInt n) == (natToInt m)


-- act 2
natToInt :: Nat -> Int
natToInt Zero = 0
natToInt (Succ n) = 1+ natToInt n         -- (suc n) = 1 + natToInt n

-- act 3
intToNat :: Int -> Nat
intToNat 0 = Zero
intToNat x = (Succ (intToNat (x-1)))

-- -- act 4
sumNat :: Nat -> Nat -> Nat
sumNat (Succ n) Zero = (Succ n)
sumNat Zero (Succ m) = (Succ m)
sumNat (Succ n) (Succ m) = intToNat ((natToInt (Succ n)) + (natToInt (Succ m)))

-- -- act 5
data Tree a = Nil | Node (Tree a) a (Tree a)
            deriving (Show)

-- act 6
size :: Tree a -> Int
size Nil = 0
size (Node hi r hd) = 1 + size hi + size hd

-- act 7
height :: Tree a -> Int
height Nil = 0
height (Node hi r hd) = 1 + (max (height hi) (height hd))

-- instance Most Tree where


-- ° --- ° ---
parN :: Nat -> Bool
parN x = even (natToInt x)