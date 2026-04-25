main :: IO ()
main = print sumOfSquares
  where
    nums         = [1..10]
    sumOfSquares = sum [ x^2 | x <- nums, even x ]