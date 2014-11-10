-- Slow
fib 0 = 1
fib 1 = 1
fib n = fib (n - 2) + fib (n - 1)

res1 = sum [x | x <- takeWhile (< 4000000) (map fib [1..]), mod x 2 == 0] -- 4613732

-- Fast
--http://blog.srinivasan.biz/software/fibonacci-numbers-the-slow-way-or-the-fast-and-lazy-way
fast_fibs = 1:1:zipWith (+) fast_fibs (tail fast_fibs)
res2 = sum [x | x <- takeWhile (< 4000000) fast_fibs, mod x 2 == 0] -- 4613732