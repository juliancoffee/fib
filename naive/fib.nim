import os, strutils

proc fib(n: int): int =
  if n < 3:
    return 1

  result = fib(n - 1) + fib(n - 2)

let n = paramStr(1).parseInt
echo fib(n)
