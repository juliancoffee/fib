import sys


def fib(n):
    n1 = 1
    n2 = 1
    for i in range(n-2):
        n1, n2 = n2, n1+n2
    return n2

if __name__ == '__main__':
    n = int(sys.argv[1])
    print("res = {}".format(fib(n)))
