-- exercise 4.8.1
halve_1 ns = splitAt (length ns `div` 2) ns
halve_2 ns = (take (length ns `div` 2) ns, drop (length ns `div` 2) ns)
halve_3 ns = (take n ns, drop n ns)
               where n = length ns `div` 2

-- exercise 4.8.2
third_a ns = head (tail (tail ns))
third_b ns = ns !! 3
third_c (_:_:n:_) = n

-- exercise 4.8.3
safetail_a ns = if null ns then [] else tail ns
safetail_b ns | null ns   = []
              | otherwise = tail ns
safetail_c (_:ns) = ns

-- exercise 4.8.4
a || b | a         = a
       | b         = b
       | otherwise = False

-- exercise 4.8.5
a && b = if a then b else if b then a else False

-- exercise 4.8.6
a && b = if a then b else False

-- exercise 4.8.7
mult = \x -> (\y -> (\z -> x*y*z))

-- exercise 4.8.8
luhnDouble x | 2*x > 9   = 2*x - 9
             | otherwise = 2*x
luhn a b c d | (luhnDouble a + b + luhnDouble c + d) `mod` 10 == 0 = True
             | otherwise                                           = False
