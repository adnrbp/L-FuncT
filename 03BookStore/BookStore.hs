
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


-- pattern match alg data type (using its value constructor)
bookID 		(Book id title authors) = id -- obtener id si tiene esa estructura
bookTitle 	(Book id title authors) = title
bookAuthors	(Book id title authors) = authors

-- omitir si tiene o no esos valores (wildcard "_")
nicerID 		(Book id 	_		_ ) = id 
nicerTitle 		(Book _ 	title	_ ) = title
nicerAuthors	(Book _		_		authors) = authors

-- using a record syntax #evitar repetitir accesors Book Book Book...
-- define data type and accesors for each component (same time)
data Customer = Customer {
	customerID 		:: CustomerID, 	--int
	customerName 	:: String,
	customerAddress :: Address 	--list
	} deriving (Show)

-- using smae syntax
 customer1 = Customer 276826 "B.K. Master"
 			["932 Denveri Cf",
 			"minder, CA 88235",
 			"Canada"]

 			