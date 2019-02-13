module Integration where

integration :: (Float -> Float) -> Float -> Float -> Float
integration f a b = (h a b) * ((f a + f b) / 2 + summ a b)
  where summ a b = sum $ map f [a, a + (h a b) .. b]

h :: Float -> Float -> Float
h a b = (b - a) / 1000.0
