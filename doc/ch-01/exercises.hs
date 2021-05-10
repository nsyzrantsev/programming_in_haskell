-- 1. Give another possible calculation for the result of double (double 2).

---------------
-- NORMAL ORDER
---------------
-- double (double 2)
-- double 2 + double 2
-- (2 + 2) + double 2
-- (2 + 2) + (2 + 2)
-- 4 + 4
-- 8

--------------------
-- APPLICATION ORDER
--------------------
-- double (double 2)
-- double (2 + 2)
-- double 4
-- 4 + 4
-- 8

-- 2. Show that sum [x] = x for any number x.

sum [] = 0
sum (x:xs) = x + sum xs
-- x + []
-- x + 0
-- x

-- 3. Define a function product that produces the product of a list of numbers,
-- and show using your definition that product [2,3,4] = 24 .

new_product []     = 1
new_product (n:ns) = n * new_product ns

-- 4. How should the definition of the function qsort be modified so that it 
-- produces a reverse sorted version of a list?

qsort_reverse []     = []
qsort_reverse (x:xs) = qsort_reverse larger ++ [x] ++ qsort_reverse smaller
                       where
                          larger = [a | a <- xs, a > x]
                          smaller = [b | b <- xs, b <= x]

-- 5. What would be the effect of replacing <= by < in the original definition 
-- of qsort? Hint: consider the example qsort [2,2,3,1,1].

new_qsort []     = []
new_qsort (x:xs) = new_qsort smaller ++ [x] ++ new_qsort larger
                   where
                      larger = [a | a <- xs, a > x]
                      smaller = [b | b <- xs, b < x]
