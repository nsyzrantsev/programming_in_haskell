## Exercise 1.7.3

Define a function `product` that produces the product of a list of numbers and show using your definition that `product [2,3,4] = 24`.

## Solution

```haskell
product' []     = 1
product' (x:xs) = x * product' xs
```

[Code](../../src/ch-01/1-7-3.hs)
