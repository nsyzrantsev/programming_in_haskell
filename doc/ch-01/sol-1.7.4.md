## Exercise 1.7.4

How should the definition of the function qsort be modified so that it produces a ***reverse*** sorted version of a list?

```haskell
qsort_decreasing   = []
qsort_decreasing (x:xs) = qsort_decreasing larger ++ [x] ++ qsort_decreasing smaller
                       where
                          larger = [a | a <- xs, a > x]
                          smaller = [b | b <- xs, b <= x]
```

[Code](../../src/ch-01/1-7-4.hs)
