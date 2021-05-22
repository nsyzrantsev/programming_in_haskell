## Exercise 5.7.5

A triple ![\Large x={x,y,z}](https://latex.codecogs.com/svg.image?(x,y,z)) of positive integers is *Pythagorean* if it satisfies the equation ![\Large x={x^2 + y^2 = z^2}](https://latex.codecogs.com/svg.image?x%5E2%20&plus;%20y%5E2%20=%20z%5E2). Using a list comprehension with three generators, define a function `pyths :: Int -> [(Int,Int,Int)]` that returns the list of all such triples whose components are at most a given limit. For example:
```haskell
> pyths 10
[(3,4,5),(4,3,5),(6,8,10),(8,6,10)]
```

## Solution

```haskell
pyths n = [(x,y,z) | x <- [1..n], y <- [1..n], z <- [1..n], x*x+y*y==z*z]
```
[Code](../../src/ch-05/5-7.hs#L15)
