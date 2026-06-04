half :: Int -> Maybe Int
half x = if even x then Just (x `div` 2) else Nothing
result = Just 20 >>= half >>= half >>= half
main = print result