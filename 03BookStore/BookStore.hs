data BookInfo = Book Int String [String]
				deriving (Show)
-- Book: value/data constructor //use to create a value of bookInfo Type
-- //fields:
-- Int: id
-- String: name
-- [String]: authors
-- //print instruction:
-- Show: how to print value //for ghci

data MagazineInfo = Magazine Int String [String]
				deriving (Show)

myInfo = Book 9620165012455 "Concepts of Programming"
	["Orlando James", "Mark Jackson"]