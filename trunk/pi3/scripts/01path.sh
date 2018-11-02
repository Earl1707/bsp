#!/bin/bash

#
# This packets must be installed
#   gawk
#   libgmp-dev
#   libmpfr-dev
#   libmpc-dev 
#   bison 
#   mkimage (u-boot-tools)
#   device-tree-compiler
#   flex 
#   libncurses-dev
#   netpbm

# base definitions
CPU=aarch64
CARD=pi3
BOARD=$CARD

export TARGET="$CPU-$CARD-linux-gnueabihf"
echo $TARGET

# working directory
export dir_home="/home/roby"
export dir_base="$dir_home/bsp/trunkl/$BOARD"
export dir_archive="$dir_base/archives"
export dir_dev="$dir_base/dev64"
export dir_tools="$dir_dev/tools"
export dir_bin="$dir_tools/bin"

export PATH=$PATH:$dir_bin

echo dir_home = $dir_home
echo dir_archive = $dir_archive
echo dir_dev = $dir_dev

