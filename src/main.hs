-- main.hs
-- main entry point for our program
-- import the Add module
import Add

-- main function that will be called when the program is run
main :: IO ()
main = do
    putStrLn "Enter two numbers:"
    num1Str <- getLine
    num2Str <- getLine
    let num1 = read num1Str :: Int
        num2 = read num2Str :: Int
    -- call the add function from the Add module
    let result = add num1 num2
    -- print the result
    putStrLn $ "The sum is: " ++ show result
