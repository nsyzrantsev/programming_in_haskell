## Exercise 5.7.7

Show how the list comprehension `[(x,y) | x <- [1,2], y <- [3,4]]` with two generators can be re-expressed using two comprehensions with single generators. Hint: nest one comprehension within the other and make use of the library function `concat :: [[a]] -> [a]`.

## Solution

```haskell
[[(x,y) | x <- [1,2]] | y <- [3,4]]
concat [[(x,y) | x <- [1,2]] | y <- [3,4]]
```
[Code](../../src/ch-05/5-7.hs#22)
