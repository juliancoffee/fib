import sys

def fib(n):
    """Return nth fibonacci number"""
    return 1 if n < 3 else fib(n-1) + fib(n-2)


if __name__ == "__main__":
    N = int(sys.argv[1])
    print("{}".format(fib(N)))
