type Index = Int
type Value = String
data Object = 
    Object Index Value [Index] 
    deriving (Show)
data Graph = 
    Graph [Object]
    deriving (Show)
myobject1 :: Object
myobject1 = Object 1 "object1" [1,4]
myobject2 :: Object
myobject2 = Object 2 "object2" [1,2]
myobject3 :: Object
myobject3 = Object 3 "object3" [1,2,3]
myobject :: Object
myobject = Object 4 "object4" [1,2,3,4]
mygraph :: Graph
mygraph = Graph [myobject1,myobject2,myobject3,myobject]

findByValue :: Value -> Graph -> [Object]
findByValue targetVal (Graph objects) = 
    filter (\(Object _ val _) -> val == targetVal) objects -- pattern matching 

main :: IO ()
main = do
    let result = findByValue "object2" mygraph
    print result
    

