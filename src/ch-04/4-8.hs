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
a || b | b         = b
       | c         = c
       | otherwise = False
