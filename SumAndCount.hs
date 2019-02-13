module SumAndCount where

import Data.Char

sum'n'count :: Integer -> (Integer, Integer)
sum'n'count n = (count (+) $ abs n, count (const (1+)) $ abs n)
  where count f n = foldr (f . digitToInteger) 0 (show n)

digitToInteger :: Char -> Integer
digitToInteger = toInteger . digitToInt

generateBigNum n = 10^n - 1
