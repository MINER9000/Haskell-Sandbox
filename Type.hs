type I = Int

-- data Tree a
-- type IntTree = Tree Integer
-- foo :: IntTree

foo :: I -> I -> I
foo = (+)

newtype Size = Size Int

-- 1. Ровно 1 конструктор
-- 2. Ровно 1 поле
--
data Stream a = Stream a (Stream a)
