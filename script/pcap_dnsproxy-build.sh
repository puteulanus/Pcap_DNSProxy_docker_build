#!/bin/bash

# Install
cd /usr/src/
wget -qO pcapdns.zip "https://github.com/chengr28/Pcap_DNSProxy/archive/master.zip"
tar -zxf pcapdns.zip
cd Pcap_DNSProxy-master/Source/Scripts
bash ./Linux_Build.sh --enable-static

# Configure