## Exercise 3.11.1

What are the types of the following values?

```haskell
['a','b','c']
('a','b','c')
[(False,'O'),(True,'1')]
([False,True],['0','1'])
[tail, init, reverse]
```

## Solution

```haskell
['a','b','c'] :: [Char]
('a','b','c') :: (Char, Char, Char)
[(False,'O'),(True,'1')] :: [(Bool, Char)]
([False,True],['0','1']) :: ([Bool], [Char])
[tail, init, reverse] :: [[a] -> [a]]
```
