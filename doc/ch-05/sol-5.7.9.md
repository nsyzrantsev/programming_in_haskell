## Exercise 5.7.9

The *scalar product* of two lists of integers xs and ys of length n is given by the sum of the products of corresponding integers:
![\Large x={\sum_{i=0}^{n-1}(xs_{i}*ys_{i})}](https://latex.codecogs.com/svg.image?%5Csum_%7Bi=0%7D%5E%7Bn-1%7D(xs_%7Bi%7D*ys_%7Bi%7D))
In a similar manner to `chisqr`, show how a list comprehension can be used to define a function `scalarproduct :: [Int] -> [Int] -> Int` that returns the scalar product of two lists. For example:
```haskell
> scalarproduct [1,2,3] [4,5,6]
32
```

## Solution

```haskell
scalarproduct xs ys = sum [x*y | (x,y) <- zip xs ys]
```
[Code](../../src/ch-05/5-7.hs#L31)
