-- False = Black, True = Red 로 정의
type Color = Bool
type Val = Int

-- 이진 트리 구조로 수정 (왼쪽 자식, 값, 오른쪽 자식)
data Tree = Tree Color Val Tree Tree
          | Nil

-- 2번 규칙 검사: 루트는 검은색(False)이어야 한다. (빈 트리도 무조건 참)
isRootBlack :: Tree -> Bool
isRootBlack Nil = True
isRootBlack (Tree color _ _ _) = color == False

-- 4번 규칙 검사: Red(True) 노드가 연속으로 나오면 안 된다.
-- 즉, 현재 노드가 Red이면 두 자식은 반드시 Black(또는 Nil)이어야 함.
noDoubleRed :: Tree -> Bool
noDoubleRed Nil = True
noDoubleRed (Tree True _ left right) = 
    isBlack left && isBlack right && noDoubleRed left && noDoubleRed right
noDoubleRed (Tree False _ left right) = 
    noDoubleRed left && noDoubleRed right

checkBlackHeight :: Tree -> Maybe Int
checkBlackHeight Nil = Just 1  -- Nil 자체도 검은색 노드이므로 1을 반환 (혹은 0부터 시작해도 상관없습니다)
checkBlackHeight (Tree color _ left right) =
    case (checkBlackHeight left, checkBlackHeight right) of
        (Just leftCount, Just rightCount) ->
            -- 왼쪽 경로들과 오른쪽 경로들의 검은색 노드 개수가 같은지 확인
            if leftCount == rightCount
                then if color == False 
                        then Just (leftCount + 1) -- 현재 노드가 검은색이면 +1
                        else Just leftCount       -- 현재 노드가 빨간색이면 그대로
                else Nothing -- 왼쪽과 오른쪽의 검은색 노드 개수가 다르면 규칙 위반!
        _ -> Nothing -- 하위 트리 중 하나라도 이미 규칙을 위반했다면 Nothing

-- 보조 함수: 노드가 검은색(또는 Nil)인지 확인
isBlack :: Tree -> Bool
isBlack Nil = True
isBlack (Tree color _ _ _) = color == False

-----------------------------------------------------------------------------------

isValidRedBlackTree :: Tree -> Bool
isValidRedBlackTree t = isRootBlack t && noDoubleRed t && isJust (checkBlackHeight t)
  where
    isJust (Just _) = True
    isJust Nothing  = False

validTree :: Tree
validTree = 
    Tree False 13
        (Tree True 8
            (Tree False 1 Nil Nil)
            (Tree False 11 Nil Nil)
        )
        (Tree True 17
            (Tree False 15 Nil Nil)
            (Tree False 25 Nil Nil)
        )

badRootTree :: Tree
badRootTree = Tree True 10 Nil Nil

-- 실패 케이스 2: 10(Red) 아래에 5(Red)가 연속으로 붙어서 에러가 나야 함
doubleRedTree :: Tree
doubleRedTree = 
    Tree False 20
        (Tree True 10
            (Tree True 5 Nil Nil)  -- Red 연속 발생!
            Nil
        )
        Nil

-- 실패 케이스 3: 왼쪽 경로는 검은 노드가 2개인데, 오른쪽 경로는 3개라서 에러가 나야 함
badHeightTree :: Tree
badHeightTree = 
    Tree False 20
        (Tree False 10 Nil Nil) -- 왼쪽 자식 (Black)
        (Tree False 30          -- 오른쪽 자식 (Black)
            (Tree False 25 Nil Nil) -- 오른쪽의 왼쪽 자식 (Black) -> 이 때문에 오른쪽 경로가 더 깊어짐
            Nil
        )

main :: IO ()
main = do
    print (isValidRedBlackTree validTree)
    print (isValidRedBlackTree badRootTree)
    print (isValidRedBlackTree doubleRedTree)
    print (isValidRedBlackTree badHeightTree)

