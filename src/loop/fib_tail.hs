import System.Environment

fib :: Int -> Integer
fib n = fib_tail n 0 1

fib_tail :: Int -> Integer -> Integer -> Integer
fib_tail n second first | n < 3 = second + first
fib_tail n second first = fib_tail (n - 1) first (second + first)

main = do
    args <- getArgs
    let n = read (args !! 0) :: Int
    print(fib n)
