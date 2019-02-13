module Integration where

integration :: (Double -> Double) -> Double -> Double -> Double
integration f a b = (h a b) * ((f a + f b) / 2 + summ a b)
  where summ a b = sum $ map f (tail $ init [a, a + (h a b) .. b])

h :: Double -> Double -> Double
h a b = (b - a) / 10000.0
