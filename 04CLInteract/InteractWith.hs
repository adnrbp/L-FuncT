import System.Environment (getArgs)

interactWith function inputFile outputFile = do
	input <- readFile inputFile
	writeFile outputFile (function input)

main = mainWith myFunction
  where mainWith function = do     -- "unction" =this
          args <- getArgs			-- up arguments
          case args of 				-- 2 values or nothing
            [input,output] -> interactWith function input output
            _ -> putStrLn "error: exactly two arguments neeed"
        -- reemplazara "id" con el nombre de nuestra funcion abajo
        myFunction = id

-- ghc --make InteractWith.hs -o InteractWith.exe
-- echo "files" >> hello-in.try
-- ./InteractWith.exe hello-in.try hello-out.try