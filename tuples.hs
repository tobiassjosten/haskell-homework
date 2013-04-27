module Main where

	combos :: [String] -> [(String, String)]
	combos [] = []
	combos colors = [(x, y) | x <- colors, y <- colors, x < y ]
