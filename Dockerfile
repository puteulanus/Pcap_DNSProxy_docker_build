FROM centos:centos7

# Add scripts
ADD script /tmp/script

# Update
RUN yum update -y

# Install tools
RUN yum install wget tar file texinfo unzip -y

# Build gcc
RUN cd /tmp/script; bash ./gcc-build.sh

# Build m4
RUN cd /tmp/script; bash ./m4-build.sh

# Build bison
RUN cd /tmp/script; bash ./bison-build.sh

# Build flex
RUN cd /tmp/script; bash ./flex-build.sh

# Build cmake
RUN cd /tmp/script; bash ./cmake-build.sh

# Build libpcap
RUN cd /tmp/script; bash ./libpcap-build.sh

# Build libsodium
RUN cd /tmp/script; bash ./libsodium-build.sh

# Build Pcap_DNSProxy
RUN cd /tmp/script; bash ./pcap_dnsproxy-build.sh

# Expose Ports
EXPOSE 53

# RUN
CMD ["supervisord", "-nc", "/etc/supervisord.conf"]
