#!/bin/bash

source versions.sh

# Install
yum -y install gcc gcc-c++ make libmpc-devel

cd /usr/src/
#wget -qO gcc.tar.gz "http://ftp.mirrorservice.org/sites/sourceware.org/pub/gcc/releases/gcc-${gcc_version}/gcc-${gcc_version}.tar.gz"
wget -qO gcc.tar.gz "http://120.52.72.58/ftp.mirrorservice.org/sites/sourceware.org/pub/gcc/releases/gcc-${gcc_version}/gcc-${gcc_version}.tar.gz"
tar -zxf gcc.tar.gz
cd gcc-${gcc_version}
./configure --disable-multilib --enable-languages=c,c++ --prefix=/usr
make -j$(nproc) >/dev/null
make install

# Configure
