#!/bin/bash

version=5.3.0

# Install
yum -y install gcc gcc-c++ make libmpc-devel

cd /usr/src/
wget -O gcc.tar.gz "http://ftp.mirrorservice.org/sites/sourceware.org/pub/gcc/releases/gcc-{$version}/gcc-{$version}.tar.gz"
tar -zxvf gcc.tar.gz
cd gcc-{$version}
./configure --disable-multilib --enable-languages=c,c++
make
make install

# Configure