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


| Benchmark               | m6g.large | r4.large               |
| ----------------------- | --------- | ---------------------- |
| 2to3                    | 489 ms    | 592 ms: 1.21x slower   |
| chameleon               | 17.7 ms   | 19.0 ms: 1.07x slower  |
| chaos                   | 172 ms    | 197 ms: 1.15x slower   |
| crypto_pyaes            | 170 ms    | 183 ms: 1.08x slower   |
| deltablue               | 13.5 ms   | 13.4 ms: 1.01x faster  |
| django_template         | 109 ms    | 126 ms: 1.15x slower   |
| dulwich_log             | 90.4 ms   | 186 ms: 2.06x slower   |
| fannkuch                | 804 ms    | 839 ms: 1.04x slower   |
| float                   | 193 ms    | 196 ms: 1.01x slower   |
| go                      | 406 ms    | 440 ms: 1.08x slower   |
| hexiom                  | 17.7 ms   | 18.3 ms: 1.04x slower  |
| json_dumps              | 19.9 ms   | 22.0 ms: 1.10x slower  |
| json_loads              | 43.2 us   | 45.5 us: 1.05x slower  |
| logging_format          | 15.9 us   | 21.9 us: 1.37x slower  |
| logging_simple          | 13.9 us   | 18.2 us: 1.31x slower  |
| mako                    | 33.7 ms   | 35.1 ms: 1.04x slower  |
| meteor_contest          | 159 ms    | 178 ms: 1.12x slower   |
| nbody                   | 203 ms    | 204 ms: 1.00x slower   |
| nqueens                 | 166 ms    | 170 ms: 1.03x slower   |
| pathlib                 | 29.8 ms   | 35.2 ms: 1.18x slower  |
| pickle                  | 17.6 us   | 16.8 us: 1.05x faster  |
| pickle_dict             | 59.2 us   | 56.4 us: 1.05x faster  |
| pickle_pure_python      | 773 us    | 868 us: 1.12x slower   |
| pidigits                | 298 ms    | 271 ms: 1.10x faster   |
| pyflate                 | 1.15 sec  | 1.18 sec: 1.03x slower |
| python_startup          | 12.9 ms   | 18.5 ms: 1.44x slower  |
| python_startup_no_site  | 7.28 ms   | 11.0 ms: 1.51x slower  |
| raytrace                | 853 ms    | 959 ms: 1.12x slower   |
| regex_compile           | 270 ms    | 340 ms: 1.26x slower   |
| regex_dna               | 311 ms    | 293 ms: 1.06x faster   |
| regex_effbot            | 5.54 ms   | 4.90 ms: 1.13x faster  |
| regex_v8                | 40.8 ms   | 39.0 ms: 1.05x faster  |
| richards                | 129 ms    | 132 ms: 1.02x slower   |
| scimark_fft             | 568 ms    | 571 ms: 1.01x slower   |
| scimark_lu              | 390 ms    | 396 ms: 1.01x slower   |
| scimark_monte_carlo     | 179 ms    | 188 ms: 1.06x slower   |
| scimark_sor             | 388 ms    | 390 ms: 1.00x slower   |
| scimark_sparse_mat_mult | 7.96 ms   | 7.34 ms: 1.08x faster  |
| spectral_norm           | 247 ms    | 235 ms: 1.05x faster   |
| sqlalchemy_declarative  | 228 ms    | 313 ms: 1.37x slower   |
| sqlalchemy_imperative   | 24.3 ms   | 54.4 ms: 2.24x slower  |
| sqlite_synth            | 4.45 us   | 4.56 us: 1.02x slower  |
| sympy_expand            | 836 ms    | 1.12 sec: 1.34x slower |
| sympy_integrate         | 38.8 ms   | 50.8 ms: 1.31x slower  |
| sympy_sum               | 258 ms    | 405 ms: 1.57x slower   |
| sympy_str               | 498 ms    | 701 ms: 1.41x slower   |
| telco                   | 11.3 ms   | 11.5 ms: 1.02x slower  |
| tornado_http            | 196 ms    | 321 ms: 1.63x slower   |
| unpack_sequence         | 94.2 ns   | 86.1 ns: 1.09x faster  |
| unpickle                | 23.3 us   | 22.5 us: 1.04x faster  |
| unpickle_list           | 6.35 us   | 6.29 us: 1.01x faster  |
| unpickle_pure_python    | 588 us    | 631 us: 1.07x slower   |
| xml_etree_parse         | 254 ms    | 243 ms: 1.05x faster   |
| xml_etree_iterparse     | 197 ms    | 192 ms: 1.03x faster   |
| xml_etree_generate      | 177 ms    | 183 ms: 1.03x slower   |
| xml_etree_process       | 146 ms    | 148 ms: 1.01x slower   |
| Geometric mean          | (ref)     | 1.12x slower           |

Benchmark hidden because not significant (2): logging_silent, pickle_list

## Numpy and Scipy

The pyperformance suite does not include in BLAS/LAPACK workloads which are typically used in financial computing. 
To give more indictive results we need to run some numpy or scipy benchmarks.


## Do different BLAS libraries make a meaningful difference ?



## References

1. [Is your Numpy optimized for speed?](https://towardsdatascience.com/is-your-numpy-optimized-for-speed-c1d2b2ba515)
2. [Boosting Numpy: Why BLAS Matters](http://markus-beuckelmann.de/blog/boosting-numpy-blas.html)

