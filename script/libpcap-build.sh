#!/bin/bash

source versions.sh

# Install
cd /usr/src/
wget -qO libpcap.tar.gz "http://www.tcpdump.org/release/libpcap-${libpcap_version}.tar.gz"
tar -zxf libpcap.tar.gz
cd libpcap-${libpcap_version}
./configure
make -j$(nproc)
make install

# Configure