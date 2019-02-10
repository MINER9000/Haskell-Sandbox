module BoolChallenge where

newtype Disj = Disj Bool deriving (Show)
newtype Conj = Conj Bool deriving (Show)
newtype Xor  = Xor  Bool deriving (Show)
newtype Same = Same Bool deriving (Show)

instance Semigroup Disj where
    (<>) (Disj a) (Disj b) = Disj (a || b)
instance Monoid Disj where
    mempty = Disj False
    mappend = (<>)

instance Semigroup Conj where
    Conj a <> Conj b = Conj (a && b)
instance Monoid Conj where
    mempty = Conj True
    mappend = (<>)

instance Semigroup Xor where
    Xor a <> Xor b = Xor (a /= b)
instance Monoid Xor where
    mempty = Xor False
    mappend = (<>)

instance Semigroup Same where
    Same a <> Same b = Same (a == b)
instance Monoid Same where
    mempty = Same True
    mappend = (<>)

mfoldr :: b -> (a -> b -> b) -> [a] -> b
mfoldr z _ [] = z
mfoldr z f (x:xs) = x `f` mfoldr z f xs
