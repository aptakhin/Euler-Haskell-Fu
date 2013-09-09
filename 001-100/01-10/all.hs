let p001 = sum [x | x <- [1..999], x `mod` 3 == 0 || x `mod` 5 == 0]

fibonacci :: Int -> Int -> Int  
fibonacci a b = a + b
fibonacci 1 1

lucky :: (Integral a) => a -> String  
lucky 7 = "LUCKY NUMBER SEVEN!"  
lucky x = "Sorry, you're out of luck, pal!"   

let p002 = sum [x | x <- [1..999], x `mod` 3 == 0 || x `mod` 5 == 0]
