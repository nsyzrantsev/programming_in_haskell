## Exercise 5.7.4

In a similar way to the function `length`, show how the library function `replicate :: Int -> a -> [a]` that produces a list of identical elements can be defined using a list comprehension. For example:
```haskell
> replicate 3 True
[True,True,True]
```

## Solution

```haskell
replicate n a = [a | x <- [1..n]]
```
[Code](../../src/ch-05/5-7.hs#L12)
