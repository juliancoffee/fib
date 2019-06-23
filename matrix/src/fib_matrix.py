import sys
import numpy as np
from numpy import linalg as LA

def fib(n):
    A = np.matrix([[1, 1], [1, 0]], dtype='object')
    R = LA.matrix_power(A, n - 1)
    return R.item((0, 0))

n = int(sys.argv[1])
print("res = ", fib(n))
