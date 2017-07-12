This repository contains a custom builds of tensorflow. To install
one of these on your system, download the correct file according
to your version of python and gcc and run the following command.
```
pip install --ignore-installed --upgrade /path/to/binary.whl
```
| TF       | OS           | GCC            | Python | Supports                                |                                                                                                                         |
|----------|--------------|----------------|--------|-----------------------------------------|-------------------------------------------------------------------------------------------------------------------------|
| 1.1.0    | Arch Linux   | 6.3            | 3.6.1  | FMA, AVX, AVX2, SSE4.1, SSE4.2, XLA     | [Download](https://github.com/lakshayg/tensorflow-build/raw/master/tensorflow-1.1.0-cp36-cp36m-linux_x86_64.whl)        |
| 1.2.0rc1 | Arch Linux   | 6.3            | 3.6.1  | Optimized for Intel Core i7-4500U       | [Download](https://github.com/lakshayg/tensorflow-build/raw/master/tensorflow-1.2.0rc1-cp36-cp36m-linux_x86_64.whl)     |
| 1.2.0rc2 | Arch Linux   | 7.1            | 3.6.1  | Optimized for Intel Core i7-4500U + MKL | [Download](https://github.com/lakshayg/tensorflow-build/raw/master/tensorflow-1.2.0rc2-cp36-cp36m-linux_x86_64.whl)     |
| 1.2.1    | Ubuntu 16.04 | 5.4            | 3.5.2  | FMA, AVX, AVX2, SSE4.1, SSE4.2          | [Download](https://github.com/lakshayg/tensorflow-build/raw/master/tensorflow-1.2.1-cp35-cp35m-linux_x86_64.whl)        |
| 1.2.1    | Ubuntu 16.04 | 5.4            | 2.7.12 | FMA, AVX, AVX2, SSE4.1, SSE4.2          | [Download](https://github.com/lakshayg/tensorflow-build/raw/master/tensorflow-1.2.1-cp27-cp27mu-linux_x86_64.whl)       |
| 1.2.1    | macOS Sierra | clang-802.0.42 | 2.7.13 | FMA, AVX, SSE4.1, SSE4.2                | [Download](https://github.com/lakshayg/tensorflow-build/raw/master/tensorflow-1.2.1-cp27-cp27m-macosx_10_12_x86_64.whl) |
| 1.2.1    | macOS Sierra | clang-802.0.42 | 3.6.1  | FMA, AVX, SSE4.1, SSE4.2                | [Download](https://github.com/lakshayg/tensorflow-build/raw/master/tensorflow-1.2.1-cp36-cp36m-macosx_10_12_x86_64.whl) |


**Note** If the configuration you need is not present in the above list then please check [tensorflow-community-wheels](https://github.com/yaroslavvb/tensorflow-community-wheels/issues) to see if someone has built TF with that configuration before opening a new issue.
