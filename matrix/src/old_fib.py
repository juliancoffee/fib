import sys


def fib(n):
    A = [[1, 1], [1, 0]]
    R = m_power(A, n)
    res = R[1][1]
    return res


def m_power(A, n):
    Step = list(A)
    for i in range(n):
        A = m_mult(A, Step)

    return A


def m_mult(A, B):
    n1 = len(A)
    m1 = len(A[0])

    n2 = len(B)
    m2 = len(B[0])

    if m1 != n2:
        sys.exit("Man, you cannot do this")
    else:
        res = []
        for i in range(n1):
            row = []
            for j in range(m2):
                a = get_row(A, j)
                b = get_column(B, i)
                row.append(dot(a, b))
            res.append(row)
    return res


def get_row(A, n):
    return A[n]


def get_column(A, n):
    res = []
    for i in range(len(A)):
        res.append(A[i][n])
    return res


def dot(a, b):
    n = len(a)
    m = len(b)

    if n != m:
        sys.exit("Man, they must be equal")
    else:
        res = 0
        for i in range(n):
            res += a[i] * b[i]
    return res


def main():
    n = int(sys.argv[1])
    print("res = {}".format(fib(n)))

if __name__ == "__main__":
    main()
