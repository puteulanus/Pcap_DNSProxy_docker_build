FROM centos:centos7

# Add scripts
ADD script /tmp/script

# Update
RUN yum update -y

# Install tools
RUN yum install wget tar -y

# Build gcc
RUN bash /tmp/script/gcc-build.sh

# Expose Ports
EXPOSE 53

# RUN
CMD ["supervisord", "-nc", "/etc/supervisord.conf"]
