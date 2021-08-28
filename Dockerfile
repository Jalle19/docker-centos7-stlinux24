FROM centos:7

RUN yum -y update && \
  yum -y install wget

RUN wget http://archive.stlinux.com/stlinux/2.4/install && \
  chmod +x install && \
  sed -i 's/www.stlinux.com/archive.stlinux.com/g' install && \
  sed -i 's/pub\/stlinux/stlinux/g' install && \
  ./install all-sh4-glibc
