# Benchmarks for Financial Computing comparing architectures (Intel vs Arm (Graviton) vs AMD) and BLAS/LAPACK libs

This repository holds benchmarks, primarily looking at Intel vs ARM and financial workloads

We run on Red Hat Enterprise Linux so all benchmarks are run on Rhel 8.

## Hardware

Using AWS hardware with these instance types

| Attribute            | r4.large |
| -------------------- | ----------- |
| Architecture         | x86_64 |
| CPU op-mode(s)       | 32-bit, 64-bit |
| Byte Order           | Little Endian |
| CPU(s):              | 2 |
| On-line CPU(s) list: | 0,1 |
| Thread(s) per core:  | 2 |
| Core(s) per socket:  | 1 |
| Socket(s):           | 1 |
| NUMA node(s):        | 1 |
| Vendor ID:           | GenuineIntel |
| CPU family:          | 6 |
| Model:               | 79 |
| Model name:          | Intel(R) Xeon(R) CPU E5-2686 v4 @ 2.30GHz |
| Stepping:            | 1 |
| CPU MHz:             | 2704.230 |
| CPU max MHz:         | 3000.0000 |
| CPU min MHz:         | 1200.0000 |
| BogoMIPS:            | 4600.04 |
| Hypervisor vendor:   | Xen |
| Virtualization type: | full |
| L1d cache:           | 32K |
| L1i cache:           | 32K |
| L2 cache:            | 256K |
| L3 cache:            | 46080K |
| NUMA node0 CPU(s):   | 0,1 |
| Flags:               | fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall nx pdpe1gb rdtscp lm constant_tsc rep_good nopl xtopology cpuid aperfmperf pni pclmulqdq ssse3 fma cx16 pcid sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand hypervisor lahf_lm abm 3dnowprefetch cpuid_fault invpcid_single pti fsgsbase bmi1 hle avx2 smep bmi2 erms invpcid rtm rdseed adx xsaveopt |




## Python Performance benchmarks 

[The Python Performance Benchmark Suite](https://pyperformance.readthedocs.io/#) provides benchmarks for Python.



## Numpy and Scipy

The pyperformance suite does not include in BLAS/LAPACK workloads which are typically used in financial computing. 
To give more indictive results we need to run some numpy or scipy benchmarks.


## Do different BLAS libraries make a meaningful difference ?



## References

1. [Is your Numpy optimized for speed?](https://towardsdatascience.com/is-your-numpy-optimized-for-speed-c1d2b2ba515)
2. [Boosting Numpy: Why BLAS Matters](http://markus-beuckelmann.de/blog/boosting-numpy-blas.html)

