-- represent range of possible JSON types:
data JValue = JString String
			| JNumber Double
			| JBool Bool
			| JNull
			| JObject [(String, Jvalue)]
			| JArray [JValue]
				deriving (Eq, Ord, Show)

-- extract string from JSON value

getString :: JValue -> Maybe String

getString (Jstring s) = Just s -- contains a string
getString _			  = Nothing


-- more accesors
getInt (JNumber n) = Just (truncate n)
getInt _		   = Nothing