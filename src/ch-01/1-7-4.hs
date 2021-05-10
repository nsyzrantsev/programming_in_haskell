qsort_decreasing []     = []
qsort_decreasing (x:xs) = qsort_decreasing larger ++ [x] ++ qsort_decreasing smaller
                       where
                          larger = [a | a <- xs, a > x]
                          smaller = [b | b <- xs, b <= x]
