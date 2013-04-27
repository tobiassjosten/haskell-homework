module Main where

	-- Break a long string into individual lines at proper word boundaries.
	--wordbr :: String -> [String]
	--wordbr string = [word | word <- dropWhile (== 'a') string]
	--wordbr string = case dropWhile isSpace string of
	--	"" -> []
	--	s' -> w : words s''
	--		where
	--			(w, s'') = break isSpace s'

	token = words

	capital :: String -> String
	capital "" = "Empty string!"
	capital str@(h:_) = "First letter of " ++ str ++ " is " ++ [h]
