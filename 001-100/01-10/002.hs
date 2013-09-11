-- Even Fibonacci numbers
--

module Main where

-- Simple recursive method
fib 0 = 0
fib 1 = 1
fib n = fib(n - 1) + fib(n - 2)

-- Making list
fibList n = map fib [1..n]

-- Functional tail recursion optimization madness
fibq n = take n fiblist
	where fiblist = 0:1:(zipWith (+) fiblist (tail fiblist))
 
main :: IO ()
main = do
	let seq = [i | i <- fibq 50, i `mod` 2 == 0, i <= 4000000]
	print seq
	print $ sum $ seq
