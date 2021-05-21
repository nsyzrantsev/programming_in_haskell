## Exercise 2.7.3

The script below contains three syntactic errors. Correct these errors and then
check that your script works properly using GHCi.

```haskell
N = a `div` length xs
    where
        a = 10
       xs = [1,2,3,4,5]
```

## Solution

```haskell
n = a `div` length xs
    where
       a = 10
       xs = [1,2,3,4,5]
```

The first mistake is that the name of the function must begin with a lower-case letter. And the second one ***"each definition at the same level must begin in precisely the same column"***: `xs` must be under `a`.

[Code](../../src/ch-02/2-7.hs#L1)
