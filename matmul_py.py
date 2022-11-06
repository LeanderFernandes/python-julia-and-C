import numpy as np
import sys
from time import perf_counter

def matmul(x):
    matrix1  = np.random.randn(x,x)
    matrix2  = np.random.randn(x,x)
    ans = matrix1*matrix2


if __name__ == "__main__":
    if len(sys.argv) == 2:
        start = perf_counter()
        matmul(int(sys.argv[1]))
        end = perf_counter()
        print(f'Time to do {sys.argv[1]}x{sys.argv[1]} matrix multiplication is: {end-start}')
    else:
        print("Usage: Python {} <MATRIX SIZE> ".format(sys.argv[0]))