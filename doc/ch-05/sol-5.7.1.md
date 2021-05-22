## Exercise 5.7.1

Using a list comprehension, give an expression that calculates the sum ![\Large x=\1^2 + 2^2 + ...100^2](https://latex.codecogs.com/svg.image?1%5E2%20&plus;%202%5E2%20&plus;%20...100%5E2) of the first one hundred integer squares.

## Solution

```haskell
sum [x^2 | x <- [1..100]]
```
[Code](../../src/ch-05#L3)
