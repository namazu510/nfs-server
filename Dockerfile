From centos:centos7
MAINTAINER Namazu510 <namazu510@hotmail.co.jp>

ENV contaienr=docker

RUN yum clean all && \
    yum -y --setopt=tsflags=nodocs install nfs-utils

COPY run-mountd.sh /
EXPOSE 111/udp 2049/tcp

ENTRYPOINT ["/run-mountd.sh"]
