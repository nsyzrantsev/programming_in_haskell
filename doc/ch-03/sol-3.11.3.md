## Exercise 3.11.3

What are the types of the following functions?

```haskell
second xs = head (tail xs)
swap (x,y) = (y,x)
pair x y = (x,y)
double x = x*2
palindrome xs = reverse xs == xs
twice f x = f (f x)
```

## Solution

```haskell
econd xs = head (tail xs) :: [a] -> a
swap (x,y) = (y,x) :: (a, b) -> (b, a)
pair x y = (x,y) :: a -> b -> (a, b)
double x = x*2 :: Num a => a -> a
palindrome xs = reverse xs == xs :: Eq a => [a] -> Bool
twice f x = f (f x) :: (t -> t) -> t -> t
```
