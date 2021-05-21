## Exercise 1.7.5

What would be the effect of replacing <= by < in the original definition of `qsort`? Hint: consider the example `qsort [2,2,3,1,1]`.

## Solution

```haskell
qsort_without_duplicates []     = []
qsort_without_duplicates (x:xs) = qsort_without_duplicates smaller ++ [x] ++ qsort_without_duplicates larger
                   where
                      larger = [a | a <- xs, a > x]
                      smaller = [b | b <- xs, b < x]
```
While sorting repeating elements will be removed. That is the result of calling this function is a sorted list with unique values.

[Code](../../src/1-7-5.hs#L12)
