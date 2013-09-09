--
-- 001 - Multiples of 3 and 5
--
p001 = sum [x | x <- [1..999], x `mod` 3 == 0 || x `mod` 5 == 0]

--
-- 002 - Even Fibonacci numbers
--
fib 0 = 0
fib 1 = 1
fib n = fib(n - 1) + fib(n - 2)

p002 = do
	--let x = [1..4000000]
	let f = sum [k = fib(x) | x <- [1..4000000], k `mod` 2 == 0]