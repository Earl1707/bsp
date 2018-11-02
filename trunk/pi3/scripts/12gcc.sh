#!/bin/bash

# gcc

VERSION_gcc=8.1.0
VERSION_gmp=6.1.2
VERSION_mpc=1.1.0
VERSION_mpfr=4.0.1

echo 
echo ..... compile gcc-$VERSION_gcc .....

cd $dir_dev
rm -rf gcc-$VERSION_gcc
rm -rf build-gcc
tar -xvzf $dir_archive/gcc-$VERSION_gcc.tar.gz
#tar xvfJ $dir_archive/gmp-$VERSION_gmp.tar.xz && mv $dir_dev/gmp-$VERSION_gmp $dir_dev/gcc-$VERSION_gcc/gmp 
#tar -xvzf $dir_archive/mpc-$VERSION_mpc.tar.gz && mv $dir_dev/mpc-$VERSION_mpc $dir_dev/gcc-$VERSION_gcc/mpc 
#tar -xvzf $dir_archive/mpfr-$VERSION_mpfr.tar.gz && mv $dir_dev/mpfr-$VERSION_mpfr $dir_dev/gcc-$VERSION_gcc/mpfr 
mkdir build-gcc && cd build-gcc
../gcc-$VERSION_gcc/configure --prefix=$dir_tools --build=i686-pc-linux-gnu --host=i686-pc-linux-gnu --target=$TARGET \
--with-arch=armv8-a \
--disable-shared \
--disable-libmudflap \
--disable-libssp \
--disable-libstdcxx-pch \
--disable-threads \
--disable-libgomp \
--without-headers \
--disable-decimal-float \
--disable-libffi \
--enable-languages=c,c++ \
--enable-poison-system-directories 

make all-gcc all-target-libgcc && make install-gcc install-target-libgcc


