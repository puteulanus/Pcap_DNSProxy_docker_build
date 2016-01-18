#!/bin/bash

source versions.sh

# Install
yum install -y aclocal autoscan autoconf autoheader automake libtool

cd /usr/src/
wget -qO libsodium.tar.gz "https://download.libsodium.org/libsodium/releases/libsodium-${libsodium_version}.tar.gz"
tar -zxf libsodium.tar.gz
cd libsodium-${libsodium_version}
./autogen.sh
./configure
make -j$(nproc) >/dev/null
make install

# Configure
ldconfig