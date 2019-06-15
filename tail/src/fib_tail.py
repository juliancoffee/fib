import sys


def fib(n):
    def fibtail(n, second, first, res):
        if n == 1:
            return res
        return fibtail(n - 1, first, res, first + res)
    return fibtail(n, 0, 0, 1)

if __name__ == '__main__':
    limit = 1000000000
    sys.setrecursionlimit(limit)

    n = int(sys.argv[1])
    print("res = {}".format(fib(n)))
