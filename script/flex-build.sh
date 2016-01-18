#!/bin/bash

source versions.sh

# Install
cd /usr/src/
wget -qO flex.tar.gz "http://netix.dl.sourceforge.net/project/flex/flex-${flex_version}.tar.gz"
tar -zxf flex.tar.gz
cd flex-${flex_version}
./configure --prefix=/usr/local/flex
make -j$(nproc) >/dev/null
make install

# Configure