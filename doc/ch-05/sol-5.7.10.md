## Exercise 5.7.10

Modify the Caesar cipher program to also handle upper-case letters.

## Solution

```haskell
import Data.Char

let2int c = ord c - ord 'A'
int2let n = chr (ord 'A' + n)
shift n c | isUpper c = int2let ((let2int c + n) `mod` 26)
          | otherwise = c
encode n xs = [shift n x | x <- xs]
table = [8.1, 1.5, 2.8, 4.2, 12.7, 2.2, 2.0, 6.1, 7.0, 0.2, 0.8, 4.0, 2.4, 6.7, 7.5, 1.9, 0.1, 6.0, 6.3, 9.0, 2.8, 1.0, 2.4, 0.2, 2.0, 0.1]
uppers xs = length [x | x <- xs, x >= 'A' && x <= 'Z']
percent n m = (fromIntegral n / fromIntegral m) * 100
count x xs = length [x' | x' <- xs, x' == x]
freqs xs = [percent (count x xs) (n) | x <- ['A'..'Z']] where n = uppers xs
chisqr os es = sum [((o-e)^2)/e | (o,e) <- zip os es]
rotate n xs = drop n xs ++ take n xs
crack xs = encode (-factor) xs
  where
     factor = head (positions (minimum chitab) chitab)
     chitab = [chisqr (rotate n table') table | n <- [0..25]]
     table' = freqs xs
```
[Code](../../src/ch-05/5-7.hs#L34)
