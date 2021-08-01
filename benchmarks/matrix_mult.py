#!/usr/bin/env python
# -*- coding: UTF-8 -*-

from __future__ import print_function

import numpy as np
from time import time

import pyperf


# Matrix multiplication
def mat_mult(A, B):
    np.dot(A, B)


if __name__ == "__main__":
    runner = pyperf.Runner()
    runner.metadata['description'] = "Matrix multiplication benchmark"

    # Let's take the randomness out of random numbers (for reproducibility)
    np.random.seed(0)
    size = 4096
    A, B = np.random.random((size, size)), np.random.random((size, size))
    runner.bench_func('mat_mul', mat_mult, A, B)
    del A, B
