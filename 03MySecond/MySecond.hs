mySecond :: [a] -> a

mySecond xs = if null (tail xs)
			  then error "list too short"
			  else head (tail xs)

-- Control possible errors with option
safeSecond :: [a] -> Maybe a

safeSecond [] = Nothing -- if recieve empty array/list
safeSecond xs = if null (tail xs)
				then Nothing
				else Just (head (tail xs))
