-- With do (same thing, much cleaner)
main :: IO ()
main = do
  putStr "Name: "
  name <- getLine       -- "extract" from IO context
  putStr "Age: "
  age  <- getLine
  putStrLn ("Hello " ++ name ++ ", age " ++ age)