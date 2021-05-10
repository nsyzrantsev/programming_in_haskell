## Exercise 1.7.2

Show that `sum [x] = x` for any number `x`.
```haskell
sum [] = 0
sum (x:xs) = x + sum xs
```
## Solution

```haskell
λ> x + sum []
λ> x + 0
λ> x
```
