# learn-haskell Tutorial

This repository contains examples demonstrating various concepts within the Haskell programming language. Each file implements a distinct technical concept and includes a `main` entry point for execution.

## Execution Instructions

Assuming GHC (Glasgow Haskell Compiler) is installed, execute the following command for each module:
`ghc <file>.hs && ./<file>`

---

## Modules Reference

### [fibonacii] - Fibonacci Sequence Generation
Defines an infinite list representing the sequence of Fibonacci numbers and prints the first 10 elements.

**File:** `./fibonacii.hs`
**Functionality:** Calculates `[F_n]` where $F_0 = 0$ and $F_1 = 1$.
**Main Logic:** Prints `take 10 fibs`.

### [day1-1] - Basic Functional Programming Concepts
Demonstrates basic arithmetic, list manipulation, pattern matching, recursion (via factorial), and utility functions.

**File:** `./day1-1.hs`
**Functions Defined:**
*   `addEx :: Int -> Int -> Int`: Adds two integers (`x + y`).
*   `doubleList :: [Int] -> [Int]`: Maps the function `(*2)` over a list of integers.
*   `lucky :: Int -> String`: Returns `"LUCKY NUMBER SEVEN!"` if input is 7; otherwise, returns `"Sorry, you're out of luck, pal!"`.
*   `factorial :: Integer -> Integer`: Computes the factorial of an integer using recursion ($\text{n}!$).

**Main Logic:** Executes predefined calls: `addEx 10 20`, `lucky 7`, `factorial 5`, `doubleList [1..5]`, and `sum' [1..10]`.

### [monad_bind] - The Maybe Monad
Illustrates sequential computation using the `Maybe` monad (`>>=`) for handling potential failure (explicitly using `Nothing`).

**File:** `./monad_bind.hs`
**Functionality:** Defines `half :: Int -> Maybe Int`, which returns `Just x/2` if $x$ is even, or `Nothing` otherwise.
**Main Logic:** Chains the `half` operation three times starting from `Just 20`: `Just 20 >>= half >>= half >>= half`.

### [graph] - Graph Data Structure Implementation
Defines and operates on a graph using an adjacency list representation implemented with Haskell records (`data Object`, `data Graph`).

**File:** `./graph.hs`
**Types Defined:**
*   `Index`: Alias for `Int`.
*   `Value`: Alias for `String`.
*   `Object`: Record type holding (Index, Value, [Index]).
*   `Graph`: Wrapper around a list of `Object`s (`[Object]`).

**Function Defined:**
*   `findByValue :: Value -> Graph -> [Object]`: Filters the graph's object list to return all objects whose stored value matches the provided `targetVal`.

**Main Logic:** Executes `findByValue "object2" mygraph` and prints the resulting list of objects.

### [redblacktree] - Red-Black Tree Validation
Implements a simplified Binary Search Tree structure (`Tree`) and defines functions to validate if it adheres to Red-Black Tree properties using color attributes (represented by `Bool`).

**File:** `./redblacktree.hs`
**Types Defined:**
*   `Color`: Alias for `Bool` (`False` = Black, `True` = Red).
*   `Val`: Alias for `Int`.
*   `Tree`: Algebraic data type representing the tree structure (Left Child, Value, Right Child) or `Nil`.

**Functions Defined:**
*   `isRootBlack :: Tree -> Bool`: Checks if the root node is Black.
*   `noDoubleRed :: Tree -> Bool`: Checks for consecutive Red nodes (Rule 4).
*   `checkBlackHeight :: Tree -> Maybe Int`: Checks if all paths from a given node to descendant leaves contain the same number of Black nodes, returning `Nothing` upon violation.
*   `isBlack :: Tree -> Bool`: Helper function confirming if a tree/Nil is Black.
*   `isValidRedBlackTree :: Tree -> Bool`: Combines checks for all Red-Black properties (Root Black, No Double Red, Equal Black Height).

**Main Logic:** Prints the result of running `isValidRedBlackTree` on predefined example trees (`validTree` and `badRootTree`).

### [day1] - List Comprehension and Aggregation
Calculates the sum of squares for even numbers within a specified range using list comprehension.

**File:** `./day1.hs`
**Main Logic:** Calculates $\sum (x^2)$ where $x \in \{1, 2, ..., 10\}$ and $x$ is even.

### [monad_do] - Sequential IO Operations
Demonstrates monadic sequence of actions (`IO`) using `do` notation to handle user input and string concatenation.

**File:** `./monad_do.hs`
**Main Logic:** Prompts the user for a "Name" (via `getLine`), prompts for an "Age", and then prints a formatted greeting string.

### [ast] - Abstract Syntax Tree Evaluation
Defines an algebraic data type (`Expr`) to represent mathematical expressions. Includes a function to recursively evaluate this abstract syntax tree into an integer value.

**File:** `./ast.hs`
**Types Defined:**
*   `Expr`: Represents operations (Add, Sub, Div, Mul) or constant values (`Val Int`).
*   `myTree`: A predefined instance of `Expr`: $1 + (2 \times 3)$.

**Function Defined:**
*   `evaluate :: Expr -> Int`: Recursively calculates the integer value of an expression defined by the `Expr` structure.

**Main Logic:** Prints the result of evaluating `myTree`.

### [hello] - Basic IO Module Structure
A minimal example demonstrating module declaration and printing a string to standard output.

**File:** `./hello.hs`
**Module Definition:** Defines a root module `Main` (implicitly, by being executable).
**Functionality:** Prints the literal string `"Hello, World!"`.