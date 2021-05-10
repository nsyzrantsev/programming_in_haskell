qsort_without_duplicates []     = []
qsort_without_duplicates (x:xs) = qsort_without_duplicates smaller ++ [x] ++ qsort_without_duplicates larger
                   where
                      larger = [a | a <- xs, a > x]
                      smaller = [b | b <- xs, b < x]
