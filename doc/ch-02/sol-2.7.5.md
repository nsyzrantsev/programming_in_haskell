## Exercise 2.7.5

The library function init removes the last element from a non-empty list; for example, `init [1,2,3,4,5] = [1,2,3,4]`. Show how `init` could similarly be defined in two different ways.

## Solution

```haskell
init1 ns = take (length ns - 1) ns
init2 ns = reverse (tail (reverse ns)) -- or init2 ns = reverse (drop 1 (reverse ns))
```

[Code](../../src/ch-02/2-7.hs)
