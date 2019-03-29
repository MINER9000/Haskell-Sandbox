module Vovan where

f :: Integer -> Integer
f n | n <= 3 = n * 3
    | n > 3  = (f (n - 1)) * (f (n - 2)) - 3

g :: Integer -> Integer
g 1 = 6
g n = (g (n - 1)) * n

ans = filter (`mod` 2 == 0) m 


m = [10, 2, 1, 2, 9] 
