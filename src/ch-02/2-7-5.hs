init1 ns = take (length ns - 1) ns
init2 ns = reverse (tail (reverse ns)) -- or init2 ns = reverse (drop 1 (reverse ns))
