addEx :: Int -> Int -> Int
addEx x y = x + y
doubleList :: [Int] -> [Int]
doubleList = map (*2)

lucky :: Int -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n* factorial (n-1)

sum' :: [Int] -> Int
sum' = sum

main :: IO ()
main = do
    putStrLn "--- 하스켈 함수 실행 결과 ---"
    print (addEx 10 20)
    print (lucky 7)
    print (factorial 5)
    print (doubleList [1..5])
    print (sum' [1..10])