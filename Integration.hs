module Integration where

integration :: (Double -> Double) -> Double -> Double -> Double
integration f a b = let
    chunks = 1000
    h = (b - a) / chunks
    summ acc x 0 = acc
    summ acc x n = summ (acc + f x) (x + h) (n - 1)
  in h * ((f a + f b) / 2 + summ 0 (a + h) (chunks - 1))

