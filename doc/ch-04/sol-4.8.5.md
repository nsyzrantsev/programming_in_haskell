## Exercise 4.8.5

Without using any other library functions or operators, show how the meaning of the following pattern matching definition for logical conjunction `&&` can be formalised using conditional expressions:
```haskell
True && True = True
_    && _    = False
```
Hint: use two nested conditional expressions.

## Solution

```haskell
a && b = if a then b else if b then a else False
```

[Code](../../src/ch-04/4-8.hs#L23)
