#!/bin/bash

source versions.sh

# Install
cd /usr/src/
wget -qO bison.tar.gz "http://ftp.gnu.org/gnu/bison/bison-${bison_version}.tar.gz"
tar -zxf bison.tar.gz
cd bison-${bison_version}
./configure --prefix=/usr/local/bison --with-libiconv-prefix=/usr/local/libiconv/
make -j$(nproc) >/dev/null
make install

# Configure
ln -s /usr/local/bison/bin/bison /usr/bin/bison
ln -s /usr/local/bison/bin/yacc /usr/bin/yacc