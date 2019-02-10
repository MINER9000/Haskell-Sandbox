module SumAndCount where

sumAndCount :: Integer -> (Integer, Integer)
sumAndCount n = (count (+) n, count (const (1+)) n)
  where count f n = foldr (f . digitToInt) 0 (show n)

digitToInt :: Char -> Integer
digitToInt = read . (: [])

generateBigNum n = 10^n - 1
