This repository contains a custom builds of tensorflow. To install
one of these on your system, make sure you choose the correct file
according to your version of python and gcc and run the following
command

pip install --ignore-installed --upgrade /path/to/binary.whl

* tensorflow-1.1.0-cp36-cp36m-linux_x86_64.whl
Flags: -msse4.1 -msse4.2 -mavx -mavx2 -mfma
Other: Compiled with support for XLA JIT
Config: Arch Linux, GCC 6.3, Python 3.6.1

* tensorflow-1.2.0rc1-cp36-cp36m-linux_x86_64.whl
Flags: -march=native -mtune=native -O3
CPU Info: Intel(R) Core(TM) i7-4500U CPU @ 1.80GHz
Config: Arch Linux, GCC 6.3, Python 3.6.1

* tensorflow-1.2.0rc1-cp35-cp35m-linux_x86_64.whl
Flags:  -msse4.1 -msse4.2 -mavx -mavx2 -mfma -O3
Config: Ubuntu 16.04, GCC 5.4, Python 3.5.2

* tensorflow-1.2.0rc1-cp27-cp27mu-linux_x86_64.whl
Flags:  -msse4.1 -msse4.2 -mavx -mavx2 -mfma -O3
Config: Ubuntu 16.04, GCC 5.4, Python 2.7.12

* tensorflow-1.2.0rc2-cp36-cp36m-linux_x86_64.whl
Flags: -march=native -mtune=native -O3
CPU Info: Intel(R) Core(TM) i7-4500U CPU @ 1.80GHz
Config: Arch Linux, GCC 7.1, Python 3.6.1
Comments: Built with MKL support
