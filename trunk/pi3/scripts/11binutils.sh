#!/bin/bash

# binutils

VERSION_binutils=2.30

echo 
echo ..... compile binutils-$VERSION_binutils .....

cd $dir_dev
rm -rf binutils-$VERSION_binutils
bunzip2 -cd $dir_archive/binutils-$VERSION_binutils.tar.bz2 | tar -x
cd $dir_dev/binutils-$VERSION_binutils && ./configure --target=$TARGET --with-arch=armv8-a --with-fpu=neon-fp-armv8 --with-float=hard --prefix=$dir_tools
cd $dir_dev/binutils-$VERSION_binutils && make all install
    
#mkdir -p $(dir_bin_target)
#mkdir -p $(dir_drivers)
#mkdir -p $(dir_boot)
#rm -rf binutils-$(VERSION_binutils)

