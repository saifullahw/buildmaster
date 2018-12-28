FROM centos:7

RUN yum -y clean all
RUN rpm --rebuilddb
RUN yum install -y yum-plugin-ovl \
	&& yum clean all
RUN yum groups mark convert

RUN yum install -y \
	git \
	libtool \
	lsof \
	nc \
	net-tools \
	sudo \
	tree \
	valgrind \
	vi \
	wget \
	which \
	&& yum clean all

RUN yum -y groupinstall "Development Tools" \
	&& yum clean all

RUN	yum -y update \
	&& yum -y install \
	czmq-devel \
	gnutls-devel \
	hiredis-devel \
	java-1.8.0-openjdk \
	java-1.8.0-openjdk-devel \
	libcurl-devel \
	libdbi-dbd-mysql \
	libdbi-devel \
	libfaketime \
	libgcrypt-devel \
	libmaxminddb-devel \	
	libnet libnet-devel \
	libuuid-devel \
	mongo-c-driver-devel \
	mysql-devel \
	net-snmp-devel \
	openssl-devel \
	postgresql-devel \
	python-devel \
	python-docutils \
	python-sphinx \
	qpid-proton-c-devel \
	redhat-rpm-config \
	snappy-devel \
	systemd-devel \
	tcl-devel \
	zlib-devel \
	&& yum clean all

RUN	yum -y install epel-release \
	&& yum clean all

