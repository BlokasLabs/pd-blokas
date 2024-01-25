#!/bin/sh

mkdir -p build
cd build

cmake ../MEC -DDISABLE_LIBUSB=1 -DDISABLE_SOUNDPLANELITE=1 -DDISABLE_PUSH2=1 -DDISABLE_EIGENHARP=1 -DCPU_OPTIMIZATION_FLAGS=""

make KontrolRack KontrolModule -j4
