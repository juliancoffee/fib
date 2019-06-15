import sys


def fib(n):
    def fibtail(n, second, first):
        if n < 3:
            return first + second
        return fibtail(n - 1, first, first + second)
    return fibtail(n, 0, 1)

if __name__ == '__main__':
    limit = 1000000000
    sys.setrecursionlimit(limit)

    n = int(sys.argv[1])
    print("res = {}".format(fib(n)))
