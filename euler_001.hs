res1 = sum [ x | x <- [1..1000], x `rem` 5 == 0 && x `rem` 3 == 0 ]

multiple_of n = \ x -> (x `rem` n) == 0

res2 = sum [y | y <- [1..1000], multiple_of 3 y && multiple_of 5 y]

