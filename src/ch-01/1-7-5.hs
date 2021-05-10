qsort_without_dublicates []     = []
qsort_without_dublicates (x:xs) = qsort_without_dublicates smaller ++ [x] ++ qsort_without_dublicates larger
                   where
                      larger = [a | a <- xs, a > x]
                      smaller = [b | b <- xs, b < x]
