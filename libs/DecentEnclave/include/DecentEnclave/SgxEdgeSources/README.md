# Headers and sources for SGX edge functions (ECalls & OCalls)

## Source files (in `*.cpp` files) (ACTION REQUIRED)

This directory contains all the implementations of edge
functions provided by DecentEnclave library.

Since this is a header-only library, it will not compile these sources for you.
**So you have to include these sources in your compilation setup.**

You can achieve these by adding the path to these C files to your CMake script

In addition, `*_u.cpp` files are expected to be compiled with the
untrusted part, while `*_t.cpp` files should be compiled with the trusted part.

## Header files (in `*.h` files) (usually no action required)

These header files are only provided for your convenience.

However, in most cases, you don't need to include these headers, since we have
provided C++ wrapper for these functions.

With these header files, you can only include a small set of functions in your
sources.

You may still choose to include `Enclave_*.h` headers generated by the edger
tool.

Similar to the source files, `*_u.h` headers are expected to be included in the
untrusted part, while `*_t.h` headers should be included with the trusted part.
