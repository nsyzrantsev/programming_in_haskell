## Exercise 4.8.2

Define a function `third :: [a] -> a` that returns the third element in a list that contains at least this many elements using:
a. `head` and `tail`;
b. list indexing `!!`;
c. pattern matching.

## Solution

```haskell
third_a ns = head (tail (tail ns))
third_b ns = ns !! 3
third_c (_:_:n:_) = n
```

[Code](../../src/ch-04/4-8.hs#L7)
