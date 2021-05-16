## Exercise 4.8.1

Using library functions, define a function `halve :: [a] -> ([a],[a])` that splits an even-lengthed list into two halves. For example:
```haskell
> halve [1,2,3,4,5,6]
([1,2,3],[4,5,6])
```

## Solution

```haskell
halve_1 ns = splitAt (length ns `div` 2) ns
halve_2 ns = (take (length ns `div` 2) ns, drop (length ns `div` 2) ns)
halve_3 ns = (take n ns, drop n ns)
               where n = length ns `div` 2
```

[Code](../../src/ch-04/4-8.hs)
