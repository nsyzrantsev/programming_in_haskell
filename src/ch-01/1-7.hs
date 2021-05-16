-- exercise 1.7.3
product' []     = 1
product' (x:xs) = x * product' xs

-- exercise 1.7.4
qsort_decreasing []     = []
qsort_decreasing (x:xs) = qsort_decreasing larger ++ [x] ++ qsort_decreasing smaller
                          where
                            larger = [a | a <- xs, a > x]
                            smaller = [b | b <- xs, b <= x]

-- exercise 1.7.5
qsort_without_duplicates []     = []
qsort_without_duplicates (x:xs) = qsort_without_duplicates smaller ++ [x] ++ qsort_without_duplicates larger
                                  where
                                    larger = [a | a <- xs, a > x]
                                    smaller = [b | b <- xs, b < x
