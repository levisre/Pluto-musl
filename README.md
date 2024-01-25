# Pluto-musl

An effort to compile [Pluto O-LLVM](https://github.com/bluesadi/Pluto) inside Alpine to achieve full static build support with `musl`.

**CAUTION**: Compling LLVM is time-consuming and require high resources (RAM, CPU, Disk,...).

Run: `docker build -t pluto-musl:<version> .` to make an image.

TODO: Add compiled llvm toolchain to `$PATH`.

