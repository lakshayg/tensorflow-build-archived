This repository contains custom builds of tensorflow. To install
one of these on your system, download the correct file according
to your version of python and gcc and run the following command.
```
pip install --ignore-installed --upgrade /path/to/binary.whl
```
You can also install directly from github using
```
pip install --ignore-installed --upgrade "Download URL"
```

| TF       | HW  | OS           | GCC              | Python      | Supports                                  |                                                                                                                         |
|----------|-----|--------------|------------------|-------------|-------------------------------------------|-------------------------------------------------------------------------------------------------------------------------|
| 1.4.0    | CPU | Ubuntu 16.04 | 5.4              | 3.5.2       | FMA, AVX, AVX2, SSE4.1, SSE4.2            | [Download](https://github.com/lakshayg/tensorflow-build/raw/master/tensorflow-1.4.0-cp35-cp35m-linux_x86_64.whl)        |
| 1.4.0    | CPU | Ubuntu 16.04 | 5.4              | 3.6.3       | FMA, AVX, AVX2, SSE4.1, SSE4.2            | [Download](https://github.com/sigilioso/tensorflow-build/raw/master/tensorflow-1.4.0-cp36-cp36m-linux_x86_64.whl)       |
| 1.4.0    | CPU | Ubuntu 16.04 | 5.4              | 2.7.12      | FMA, AVX, AVX2, SSE4.1, SSE4.2            | [Download](https://github.com/lakshayg/tensorflow-build/raw/master/tensorflow-1.4.0-cp27-cp27mu-linux_x86_64.whl)       |
| 1.4.0    | CPU | macOS Sierra | clang-802.0.42   | 3.6.3       | SSE4.1, SSE4.2, AVX, AVX2, FMA            | [Download](https://github.com/lakshayg/tensorflow-build/raw/master/tensorflow-1.4.0-cp36-cp36m-macosx_10_12_x86_64.whl) |
| 1.4.1    | CPU | macOS Sierra | clang-900.0.39.2 | 2.7.14      | SSE4.1, SSE4.2, AVX, AVX2, FMA            | [Download](https://github.com/lakshayg/tensorflow-build/raw/master/tensorflow-1.4.1-cp27-cp27m-macosx_10_12_x86_64.whl) |
| 1.4.1    | CPU | macOS High Sierra | clang-900.0.38 | 3.6.2      | SSE4.1, SSE4.2, AVX, AVX2, FMA            | [Download](https://github.com/lakshayg/tensorflow-build/raw/master/tensorflow-1.4.1-cp36-cp36m-macosx_10_13_x86_64.whl) |
| 1.4.1    | CPU | macOS Sierra | clang-900.0.39.2   | 2.7.13    | AVX, SSE4.1, SSE4.2                       | [Download](https://github.com/lakshayg/tensorflow-build/releases/download/v1.4.1-macosx_10_12-py27-py36-avx-sse41-sse42/tensorflow-1.4.1-cp27-cp27m-macosx_10_12_intel.whl) |
| 1.4.1    | CPU | macOS Sierra | clang-900.0.39.2   | 3.6.1       | AVX, SSE4.1, SSE4.2                       | [Download](https://github.com/lakshayg/tensorflow-build/releases/download/v1.4.1-macosx_10_12-py27-py36-avx-sse41-sse42/tensorflow-1.4.1-cp36-cp36m-macosx_10_12_x86_64.whl) |
| 1.5.0    | CPU | macOS High Sierra | clang-900.0.39.2   | 3.6.4       | SSE4.2, AVX, AVX2, FMA                        | [Download](https://github.com/lakshayg/tensorflow-build/raw/53f39575cdd0912e561a67f0afe844ff4b8ef655/tensorflow-1.5.0-cp36-cp36m-macosx_10_13_x86_64.whl) |
| 1.5.0    | CPU | macOS High Sierra | clang-900.0.39.2   | 3.6.4       | AVX, SSE4.1, SSE4.2                        | [Download](https://github.com/lakshayg/tensorflow-build/raw/master/tensorflow-1.5.0-cp36-cp36m-macosx_10_13_x86_64.whl) |
| 1.6.0    | CPU | Ubuntu 16.04      | 5.4                | 2.7.12      | SSE4.1, SSE4.2, AVX, AVX2, FMA             | [Download](https://github.com/lakshayg/tensorflow-build/releases/download/v1.6.0-ubuntu_16_04-py27-avx-avx2-fma-sse41-sse42/tensorflow-1.6.0-cp27-cp27mu-linux_x86_64.whl) |
| 1.8.0    | CPU | macOS High Sierra      | clang-902.0.39.1  | 3.6.5      | SSE4.1, SSE4.2, AVX, AVX2, FMA, SSSE3, POPCNT, CX16  | [Download](https://github.com/lakshayg/tensorflow-build/raw/master/tensorflow-1.8.0-cp36-cp36m-macosx_10_7_x86_64.whl) |
| 1.8.0    | CPU | macOS High Sierra      | clang-902.0.39.1  | 3.6.5      | SSE4.1, SSE4.2, AVX, AVX2, FMA  | [Download](https://github.com/lakshayg/tensorflow-build/releases/download/v1.8.0-macos-py27-py36-avx-avx2-fma-sse41-sse42/tensorflow-1.8.0-cp36-cp36m-macosx_10_13_x86_64.whl) |
| 1.8.0    | CPU | macOS High Sierra      | clang-902.0.39.1  | 2.7.15     | SSE4.1, SSE4.2, AVX, AVX2, FMA  | [Download](https://github.com/lakshayg/tensorflow-build/releases/download/v1.8.0-macos-py27-py36-avx-avx2-fma-sse41-sse42/tensorflow-1.8.0-cp27-cp27m-macosx_10_13_x86_64.whl) |

**External Links** (Please consider giving a :star: or :+1: to the original sources in case you use external links)

| TF       | HW       | OS           | Python        | Supports                            |                                         |
|----------|----------|--------------|---------------|-------------------------------------|-----------------------------------------|
| 1.1-1.4  | CPU, GPU | Ubuntu 16.04 | 2.7, 3.5, 3.6 | FMA, AVX, AVX2, SSE4.1, SSE4.2, MPI | [Link](https://github.com/mind/wheels)  |
| 1.2.1    | CPU      | Ubuntu 17.04 | 3.5.3         | XLA, AVX, AVX2, FMA, SSE4.1, SSE4.2 | [Link](https://github.com/yaroslavvb/tensorflow-community-wheels/issues/26) |
| 1.0-1.8  | CPU, GPU | Windows      | 2.7, 3.5, 3.6 | AVX, AVX2                           | [Link](https://github.com/fo40225/tensorflow-windows-wheel) |

**If you find a binary present on the internet, consider opening a pull request to add a link to it. You can also contribute binaries by sharing a link via email**

**Visit [tensorflow.org][1] for instructions on building tensorflow for your machine.**

**I sometimes use git commands which modify repo's history to keep repo size in check, due to which your forks might get invalidated from time-to-time. If such a case try `git pull --rebase` on your machine.**

[@lakshayg_](https://twitter.com/lakshayg_)

[1]: https://www.tensorflow.org/install/install_sources
