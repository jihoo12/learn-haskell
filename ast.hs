data Expr
    = Val Int
    | Add Expr Expr
    | Sub Expr Expr
    | Div Expr Expr
    | Mul Expr Expr
    deriving (Show)

myTree :: Expr
myTree = Add (Val 1) (Mul (Val 2) (Val 3))

evaluate :: Expr -> Int
evaluate (Val n) = n
evaluate (Add l r) = evaluate l + evaluate r
evaluate (Sub l r) = evaluate l - evaluate r
evaluate (Div l r) = evaluate l `div` evaluate r
evaluate (Mul l r) = evaluate l * evaluate r

main :: IO ()
main = print (evaluate myTree)