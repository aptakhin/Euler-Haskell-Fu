-- Largest prime factor
--
module Main where

is_divisor num primes = null divisors where
	divisors = [i | i <- primes, i <= round(sqrt(fromIntegral(num))), num `mod` i == 0]

next_prime [] = [2]
next_prime primes = primes ++ add where
	add = take 1 [i | i <- [last(primes) + 1..], is_divisor i primes]

primesList n = take n $ iterate next_prime [] !! n

--primesTill n = primes where
--	primes = takeWhile (last <= n) $ iterate next_prime []

main :: IO()
main = do
	let number = 600851475143  
	let till   = round(sqrt(fromIntegral(number)))
	print $ number `mod` 2 == 0
	let primes = primesList 20000
	print primes
	let divisors = [i | i <- primes, number `mod` 100 == 0]
	print [i | i <- primes, number `mod` i == 0]
	--print divisors
	--print $ primesList 1000
