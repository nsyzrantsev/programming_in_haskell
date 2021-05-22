## Exercise 5.7.6

A positive integer is *perfect* if it equals the sum of all of its factors, excluding the number itself. Using a list comprehension and the `function` factors, define a function `perfects :: Int -> [Int]` that returns the list of all perfect numbers up to a given limit. For example:
```haskell
> perfects 500
[6,28,496]
```

## Solution

```haskell
factors' n = [x | x <- [1..n], n `mod` x == 0 && x /= n]
perfects n = [x | x <- [1..n], sum (factors' x) == x]
```
[Code](../../src/ch-05/5-7.hs#L18)
