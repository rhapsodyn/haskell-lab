import System.Environment   
import System.Directory  
import System.IO  
import Data.List  

dispather :: [(String, [String] -> IO ())]
dispather = [("foo", foo),
             ("bar", bar)]

foo :: [String] -> IO ()
foo (first:rest) = print ("foo:" ++ first)

bar :: [String] -> IO ()
bar (first:rest) = print ("bar:" ++ first)

main = do
    (cmd:args) <- getArgs
    let (Just handler) = lookup cmd dispather
    handler args