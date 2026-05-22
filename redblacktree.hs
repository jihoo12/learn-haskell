type Color = Bool
type Val = Int
data Tree =
    Tree Color Tree Val
    | Nil Bool

checknil :: Tree -> Bool
checknil (Nil b) = if b==False then True else False

