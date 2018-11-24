
data BookInfo = Book Int String [String]
				deriving (Show)
-- BookInfo: type constructor //return value
-- Book: value/data constructor (use to refer to BookInfo) //use to create a value of bookInfo Type
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

-- using same name: type constructor and value constructor
data BookReview = BookReview BookInfo CustomerID String

-- synonyms: more descriptive name
-- use to clarify fields:
-- type = introduce a synonym
type CustomerID = Int
type ReviewBody = String

data BetterReview = BetterReview BookInfo CustomerID ReviewBody

-- type for shorter name (verbose type)
-- usar como sinonimo para tupla:
type BookRecord = (BookInfo, BookReview)

type CardHolder = String
type CardNumber = String
type Address = [String]

data BillingInfo= CreditCard CardNumber CardHolder Address
				| CashOnDelivery
				| Invoice CustomerID
					deriving (Show)

nicerID 		(Book id 	_		_ ) = id 
nicerTitle 		(Book _ 	title	_ ) = title
nicerAuthors	(Book _		_		authors) = authors

data Customer = Customer {
	customerID 		:: CustomerID,
	customerName 	:: String,
	customerAddress :: Address
	} deriving (Show)