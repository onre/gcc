# gcc 4.7.4 cross-compiler for IRIX

## Disclaimer

I am not an expert on compilers, linkers or anything. If you know how to do things better, please do tell.

## What is this?

It's a branch of gcc 4.7.4 with two modifications to make it possible
to cross-build software:

1. support for cross-building libstdc++ for IRIX targets
2. use GNU binutils (2.17a works decently)

## How do I build it?

First, install build dependencies. On a Debian or Ubuntu system they would be:

- build-essential
- bison
- flex
- libgmp-dev
- libmpfr-dev
- libmpc-dev
- texinfo

You also need a copy of IRIX headers and libraries somewhere. We call
that location `$IRIXROOT` from now on.

The build will want to access a couple of specific .o files from
$IRIXROOT/usr/lib32. I am a terrible person so I just symlinked
$IRIXROOT/usr/lib32 to /usr/lib32 as Linux doesn't use it for
anything.

Then, get GNU binutils 2.17a source and build it to a prefix of your choice with these flags:
```
./configure --target=mips-sgi-irix6.5 --prefix=$BINUTILS_PREFIX --with-sysroot=$IRIXROOT --enable-werror=no
```

Add $BINUTILS_PREFIX to your path.

Clone this repo somewhere, let's call it `$GCCSRC`.

Create a build directory, then run:
```
export AS_FOR_TARGET="mips-sgi-irix6.5-as"
export LD_FOR_TARGET="mips-sgi-irix6.5-ld"
export NM_FOR_TARGET="mips-sgi-irix6.5-nm"
export OBJDUMP_FOR_TARGET="mips-sgi-irix6.5-objdump"
export RANLIB_FOR_TARGET="mips-sgi-irix6.5-ranlib"
export STRIP_FOR_TARGET="mips-sgi-irix6.5-strip"
export READELF_FOR_TARGET="mips-sgi-irix6.5-readelf"
export target_configargs="--enable-libstdcxx-threads=no"

$GCCSRC/configure --enable-obsolete --disable-multilib --prefix=$HOME/irix-gcc --target=mips-sgi-irix6.5 --disable-nls --enable-languages=c,c++ --with-sysroot=$IRIXROOT
```
Run `make`. Building GNU Info file for gcc might fail - if it does, just `touch gcc/doc/gcc.info` and rerun `make`. You can also do the `touch` part before running make.

## What is there to be done?

- multilib may actually work. Haven't needed, so haven't tried.
- ditto for libstdcxx threads.