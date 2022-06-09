 -- act 1 (aplicativo)
2*cuadrado . (head [2,3,4,5])
2*cuadrado (2)   -- head
2*(2*2)          -- cuadrado
2*4              -- aritmetica
8                -- aritmetica

-- (normal)
2*cuadrado . (head [2,3,4,5])  -- 2 por
2*(head [2,3,4,5] * head [2,3,4,5]) -- def de cuadrado
2*(2 * head [2,3,4,5])     -- def de head + aritmetica
4*(head [2,3,4,5])         -- asociativa
4*(2)                      -- def head
8                          -- aritmetica

-- act 2 *linf = 1:linf*
-- a) aplicativo

head.linf
head.(1:linf)         -- def linf
head.(1:(1:linf))         -- def linf
...                      -- def recursiva

-- b) normal
head.linf             -- def head
head(1:linf)          -- def linf
1                     -- def head

{- act 3 *f :: Int -> Int -> Int
          f.x.0 = x
		  f.x.(n+1) = cuadrado.(f.x.n)-}
-- aplicativo f.2.3
f.2.3
2 3 = cuadrado (f 2 2) (256)
   2 2 = cuadrado (f 2 1) (16)
       2 1 = cuadrado ( f 2 0) (4)
	       2 0 = 2
 = 256

-- normal
f.2.3                   -- def f
2 3 = cuadrado (f 2 2)  -- def cuadrado
    (f 2 2) * (f 2 2)   -- def f
	((2 2 = cuadrado (f 2 1)) * (2 2 = cuadrado (f 2 1))) -- def cuadrado
	(((f 2 1) * (f 2 1)) * ((f 2 1) * (f 2 1))) -- def f
	(((2 1 = cuadrado (f 2 0)) * (2 1 = cuadrado (f 2 0))) * ((2 1 = cuadrado (f 2 0)) * (2 1 = cuadrado (f 2 0))))
	                     4     *         4                 *                 4         *         4
						 16                                *                 16
						 256

-- act 4 square.inf
-- aplicativa
square(inf + 1)        -- def inf
square((inf + 1) + 1)  -- def inf
...                    -- def inf recursiva

-- normal
square.inf
(inf * inf)            -- def square
(inf + (1 * inf) + 1)  -- def inf
inf + 1 + inf + 1 + 1  -- def inf
...                    -- def inf infinitamente

-- act 5
-- lazy
f.2.3 
2 3 = cuadrado (f 2 2)
     x * x                 -- def cuadrado              (16*16)
     2 2 = cuadrado (f 2 1)    -- def f
		   y * y 			   -- def cuadrado          (4*4)
		   2 1 = cuadrado (f 2 0)    -- def f
				 z * z				 -- def cuadrado    (2*2)
				 2 0 = 2
	where x = cuadrado (f 2 2)
		  y = cuadrado (f 2 1)
		  z = cuadrado (f 2 0)
