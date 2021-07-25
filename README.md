# Benchmarks for Financial computing on various architectures

This repository holds benchmarks, primarily looking at Intel vs ARM and financial workloads

We run on Red Hat Enterprise Linux so all benchmarks are run on Rhel 8.

## Pyperformance benchmarks ARM vs Intel on AWS

[The Pyperformance Benchmark Suite](https://pyperformance.readthedocs.io/#) provides benchmarks for Python.



## Numpy and Scipy

The pyperformance suite does not include in BLAS/LAPACK workloads which are typically used in financial computing. 
To give more indictive results we need to run some numpy or scipy benchmarks.


## Do different BLAS libraries make a meaningful difference ?



## References

1. [Is your Numpy optimized for speed?](https://towardsdatascience.com/is-your-numpy-optimized-for-speed-c1d2b2ba515)
2. [Boosting Numpy: Why BLAS Matters](http://markus-beuckelmann.de/blog/boosting-numpy-blas.html)

