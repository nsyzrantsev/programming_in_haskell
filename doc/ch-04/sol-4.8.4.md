## Exercise 4.8.4

In a similar way to `&&` in section 4.4, show how the disjunction operator `||` can be defined in four different ways using pattern matching.

## Solution

```haskell
b || c | b         = b
       | c         = c
       | otherwise = False
```

[Code](../../src/ch-04/4-8.hs)
