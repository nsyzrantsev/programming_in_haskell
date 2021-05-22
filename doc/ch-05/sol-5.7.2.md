## Exercise 5.7.2

Suppose that a *coordinate grid* of size ![\Large x={m \times n
}](https://latex.codecogs.com/svg.image?m%20%5Ctimes%20n) is given by the list of all pairs ![\Large x={(x,y)}](https://latex.codecogs.com/svg.image?(x,y)) of integers such that ![\Large x={0 <= x <= m* and *0 <= y <= n*}](https://latex.codecogs.com/svg.image?0%20%5Cleq%20x%20%5Cleq%20m) and ![\Large x={https://latex.codecogs.com/svg.image?0%20%5Cleq%20y%20%5Cleq%20n}](https://latex.codecogs.com/svg.image?0%20%5Cleq%20y%20%5Cleq%20n). Using a list comprehension, define a function `grid :: Int -> Int -> [(Int,Int)]` that returns a coordinate grid of a given size. For example:
```haskell
> grid 1 2
[(0,0),(0,1),(0,2),(1,0),(1,1),(1,2)]
```

## Solution

```haskell
grid m n = [(x,y) | x <- [0..m], y <- [0..n]]
```
[Code](../../src/ch-05/5-7.hs#L6)
