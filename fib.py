import sys


def fib(n):
    if n == 1:
        return 1
    if n == 2:
        return 2
    return fib(n-1) + fib(n-2)


if __name__ == "__main__":
    n = int(sys.argv[1])
    print(fib(n))
