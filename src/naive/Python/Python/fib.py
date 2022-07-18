"""
Naive implementation of fibbonaci sequence
"""
import sys


def fib(num):
    """Return nth fibonacci number"""
    return 1 if num < 3 else fib(num-1) + fib(num-2)


def main():
    """Entry poing"""
    num = int(sys.argv[1])
    print("{}".format(fib(num)))


if __name__ == "__main__":
    main()
