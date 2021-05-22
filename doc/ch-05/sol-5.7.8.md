## Exercise 5.7.8

Redefine the function `positions` using the function `find`.

## Solution

```haskell
positions x xs = [i | (x',i) <- zip xs [0..], x == x']
find k t = [v | (k', v) <- t, k == k']
positions' x xs = find x (zip [0..] xs)
```
[Code](../../src/ch-05/5-7.hs#L26)
