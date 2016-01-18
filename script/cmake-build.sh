#!/bin/bash

source versions.sh

# Install
cd /usr/src/
wget -qO cmake.tar.gz "https://cmake.org/files/v${cmake_big_version}/cmake-${cmake_version}.tar.gz"
tar -zxf cmake.tar.gz
cd cmake-${cmake_version}
./bootstrap >/dev/null
make -j$(nproc) >/dev/null
make install

# Configure