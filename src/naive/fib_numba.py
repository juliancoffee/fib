from numba import jit
import sys


@jit
def fib(n):
    return 1 if n < 3 else fib(n-1) + fib(n-2)


if __name__ == "__main__":
    n = int(sys.argv[1])
    print("res = {}".format(fib(n)))
