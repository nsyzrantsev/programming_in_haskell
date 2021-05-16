## Exercise 2.7.4

The library function `last` selects the last element of a non-empty list; for example, `last [1,2,3,4,5] = 5`. Show how the function last could be defined in terms of the other library functions introduced in this chapter. Can you think of another possible definition?

## Solution

```haskell
last1 ns = head (reverse ns)
last2 ns = ns !! (length ns - 1)
```

[Code](../../src/ch-02/2-7.hs)
