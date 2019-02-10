module SumAndCount where

sumAndCount :: Integer -> (Integer, Integer)
sumAndCount n = (sumDigits $$s n, countDigits $ abs n)

absNum :: Integer -> Integer
absNum n = if n < 0 then (-n) else n

sumDigits :: Integer -> Integer
sumDigits 0 = 0
sumDigits n = n `mod` 10 + sumDigits (n `div` 10)

countDigits :: Integer -> Integer
countDigits 0 = 0
countDigits n = 1 + countDigits (n `div` 10)
