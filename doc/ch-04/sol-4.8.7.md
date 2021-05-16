## Exercise 4.8.7

Show how the meaning of the following curried function definition can be formalised in terms of lambda expressions:
```haskell
mult :: Int -> Int -> Int -> Int
mult x y z = x*y*z
```

## Solution

```haskell
mult = \x -> (\y -> (\z -> x*y*z))
```
