type Index = Int
type Value = String
data Graph = 
    Object Index Value [Index] -- Object Int(index) String(value) [list](index pointer list) 
    deriving (Show)

myobject1 :: Graph
myobject1 = Object 1 "object1" [1,4]
myobject2 :: Graph
myobject2 = Object 2 "object2" [1,2]
myobject3 :: Graph
myobject3 = Object 3 "object3" [1,2,3]
myobject :: Graph
myobject = Object 4 "object4" [1,2,3,4]
main = print myobject1

