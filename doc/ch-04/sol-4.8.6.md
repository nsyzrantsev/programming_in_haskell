## Exercise 4.8.6

Do the same for the following alternative definition, and note the difference in the number of conditional expressions that are required:
```haskell
True && b = b
False && _ = False
```

## Solution

```haskell
a && b = if a then b else False
```

[Code](../../src/ch-04/4-8.hs)
