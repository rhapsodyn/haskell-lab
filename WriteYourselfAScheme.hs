import Text.ParserCombinators.Parsec
import System.Environment

symbol :: Parser Char
symbol = oneOf "!#$%&|*+-/:<=>?@^_~"

readExpr :: String -> String
readExpr input = case parse symbol "lisp" input of 
                    Left err -> "no match" ++ show err
                    Right value -> "found"

main = do
        (expr:_) <- getArgs
        print $ readExpr expr