## Exercise 5.7.3

Using a list comprehension and the function `grid` above, define a function `square :: Int -> [(Int,Int)]` that returns a coordinate square of size ![\Large x={n}](https://latex.codecogs.com/svg.image?n), excluding the diagonal from ![\Large x={(0,0)}](https://latex.codecogs.com/svg.image?(0,0)) to ![\Large x={(n,n)}](https://latex.codecogs.com/svg.image?(n,n)). For example:
```haskell
> square 2
[(0,1),(0,2),(1,0),(1,2),(2,0),(2,1)]
```

## Solution

```haskell
grid m n = [(x,y) | x <- [0..m], y <- [0..n]]
square n = [(x,y) | (x,y) <- grid n n, x /= y]
```
[Code](../../src/ch-05/5-7.hs#L9)
