import System.Environment

fib :: Int -> Int
fib n | n < 3 = 1
fib n = fib (n-1) + fib (n-2)

main = do
    args <- getArgs
    let n = read (args !! 0) :: Int
    print(fib n)
