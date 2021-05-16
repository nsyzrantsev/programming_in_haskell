## Exercise 4.8.3

Consider a function `safetail :: [a] -> [a]` that behaves in the same way as `tail` except that it maps the empty list to itself rather than producing an error. Using `tail` and the function `null :: [a] -> Bool` that decides if a list is empty or not, define `safetail` using:
a. a conditional expression;
b. guarded equations;
c. pattern matching.

## Solution

```haskell
safetail_a ns = if null ns then [] else tail ns
safetail_b ns | null ns   = []
              | otherwise = tail ns
safetail_c (_:ns) = ns 
```

[Code](../../src/ch-04/4-8.hs)
