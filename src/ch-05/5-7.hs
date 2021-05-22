import Data.Char

-- exercise 5.7.1
--sum [x^2 | x <- [1..100]]

-- exercise 5.7.2
grid m n = [(x,y) | x <- [0..m], y <- [0..n]]

-- exercise 5.7.3
square n = [(x,y) | (x,y) <- grid n n, x /= y]

-- exercise 5.7.4
replicate n a = [a | x <- [1..n]]

-- exercise 5.7.5
pyths n = [(x,y,z) | x <- [1..n], y <- [1..n], z <- [1..n], x*x+y*y==z*z]

-- exercise 5.7.6
factors' n = [x | x <- [1..n], n `mod` x == 0 && x /= n]
perfects n = [x | x <- [1..n], sum (factors' x) == x]

-- exercise 5.7.7
--[[(x,y) | x <- [1,2]] | y <- [3,4]]
--concat [[(x,y) | x <- [1,2]] | y <- [3,4]]

-- exercise 5.7.8
positions x xs = [i | (x',i) <- zip xs [0..], x == x']
find k t = [v | (k', v) <- t, k == k']
--positions' x xs = find x (zip [0..] xs)

-- exercise 5.7.9
scalarproduct xs ys = sum [x*y | (x,y) <- zip xs ys]

-- exercise 5.7.10
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
