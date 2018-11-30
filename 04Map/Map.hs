square :: [Double] -> [Double]

square (x:xs) = x*x : square xs
square [] 	  = []


import Data.Char (toUpper)

upperCase :: String -> String

upperCase (x:xs) = toUpper x : upperCase xs
upperCase [] 	 = []
