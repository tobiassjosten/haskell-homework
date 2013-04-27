module Main where

	size [] = 0
	size (h:t) = 1 + size t

	prod [] = 1
	prod (h:t) = h * prod t

	revlist [] = []
	revlist (h:t) = revlist t ++ [h]

	twoers [] = []
	twoers x = filter (\x -> x == 2) x

	sort [] = []
	sort (h:t) = (sort (filter (< h) t)) ++ [h] ++ (sort (filter (>= h) t))

	sortFunc [] _ = []
	sortFunc (h:t) cmp = (sortFunc lt cmp) ++ [h] ++ (sortFunc gt cmp)
		where
			lt = filter (not . cmp h) t
			gt = filter (cmp h) t

	convert :: String -> Double
	convert "" = 0
	convert str = read $ dropWhile (== '0') $ filter (/= ',') $ filter (/= '$') str

	-- Write a function that takes an argument x and returns a lazy sequence that
	-- has every third number, starting with x. Then write a function that
	-- includes every fifth number, beginning with y. COmbine these functions
	-- through composition to return every eithth number, beginning with x+y.
	numcomp1 x = [x, x + 3 ..]
	numcomp2 y = [y, y + 5 .. ]
	numcomp x y = zipWith (+) (numcomp1 x) (numcomp2 y)

	-- Use a partially applied function to define a function that will return half
	-- of a number and another that will append \n to the end of any string.
	part :: Double -> Double
	part = (/ 2)

	append "" = "\n"
	append (h:t) = h:append t

	append2 "" = "\n"
	append2 (++ "\n")
