## Exercise 3.11.2

Write down definitions that have the following types; it does not matter what the definitions actually do as long as they are type correct.

```haskell
bools :: [Bool]
nums :: [[Int]]
add :: Int -> Int -> Int -> Int
copy :: a -> (a,a)
apply :: (a -> b) -> a -> b
```

## Solution

```haskell
bools = [True]
nums = [[4]]
add n m p = n*m-p
copy x = (x, x)
apply g f = g f
```
