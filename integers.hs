module Main where

	-- Write a function to determine the greatest common denominator of two
	-- integers.
	gcomden :: Integer -> Integer -> Integer
	gcomden x 0 = x
	gcomden x y = gcomden y (x `mod` y)

	-- Create a lazy sequence of prime numbers.
	primes = prime [2 .. ]
		where
			prime (h:t) = h : prime [x | x <- t, x `mod` h > 0]
