#!/bin/bash

source versions.sh

# Install
cd /usr/src/
wget -qO m4.tar.gz "http://ftp.gnu.org/gnu/m4/m4-${m4_version}.tar.gz"
tar -zxf m4.tar.gz
cd m4-${m4_version}
./configure --prefix=/usr/local/m4
make -j$(nproc) >/dev/null
make install

# Configure

ln -s /usr/local/m4/bin/m4 /usr/bin/m4