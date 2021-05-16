-- exercise 2.7.3
n = a `div` length xs
    where
       a = 10
       xs = [1,2,3,4,5]

-- exercise 2.7.4
last1 ns = head (reverse ns)
last2 ns = ns !! (length ns - 1)

-- exercise 2.7.5
init1 ns = take (length ns - 1) ns
init2 ns = reverse (tail (reverse ns))
init3 ns = reverse (drop 1 (reverse ns))
