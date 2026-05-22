-- False = Black, True = Red 로 정의
type Color = Bool
type Val = Int

-- 이진 트리 구조로 수정 (왼쪽 자식, 값, 오른쪽 자식)
data Tree = Tree Color Tree Val Tree
          | Nil

-- 2번 규칙 검사: 루트는 검은색(False)이어야 한다. (빈 트리도 무조건 참)
isRootBlack :: Tree -> Bool
isRootBlack Nil = True
isRootBlack (Tree color _ _ _) = color == False

-- 4번 규칙 검사: Red(True) 노드가 연속으로 나오면 안 된다.
-- 즉, 현재 노드가 Red이면 두 자식은 반드시 Black(또는 Nil)이어야 함.
noDoubleRed :: Tree -> Bool
noDoubleRed Nil = True
noDoubleRed (Tree True left _ right) = 
    isBlack left && isBlack right && noDoubleRed left && noDoubleRed right
noDoubleRed (Tree False left _ right) = 
    noDoubleRed left && noDoubleRed right

-- 보조 함수: 노드가 검은색(또는 Nil)인지 확인
isBlack :: Tree -> Bool
isBlack Nil = True
isBlack (Tree color _ _ _) = color == False

-- 1~4번 규칙 종합 검사 (1번은 타입 시스템이 보장, 3번은 Nil에 색상이 없으므로 항상 만족)
checkRB :: Tree -> Bool
checkRB t = isRootBlack t && noDoubleRed t