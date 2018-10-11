-- word counter
main = interact wordCount
	where wordCount input = show (length (lines input)) ++ "\n"

--runghc WC < Samples/cities.txt