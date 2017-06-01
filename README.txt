This repository contains a custom builds of tensorflow. Details about
for all the binaries are mentioned in their name itself. All the
binaries have been built using GCC 6.3 and Python 3.6

To install one of these on your system, make sure you choose the
correct file according to your version of python and gcc and run the
following command

pip install --ignore-installed --upgrade /path/to/binary.whl


* tensorflow-1.1.0-cp36-cp36m-linux_x86_64.whl
compiled with support for AVX, AVX2, SSE4.1, SSE4.2, FMA & XLA JIT

* tensorflow-1.2.0rc1-cp36-cp36m-linux_x86_64.whl
compiled with -march=native -mtune=native -O3
CPU Info:
Vendor ID:             GenuineIntel
CPU family:            6
Model:                 69
Model name:            Intel(R) Core(TM) i7-4500U CPU @ 1.80GHz

