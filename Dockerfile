FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true
RUN apt-get update && apt-get install -y \
        u-boot-tools device-tree-compiler autoconf automake dh-autoreconf libssl-dev zip \
        openssl python-pip flex bison bc git gcc vim ethtool wget ftp make makedev tclsh \
        binfmt-support qemu-system-common qemu-user-static debootstrap sudo ncurses-dev  \
        gcc-arm-linux-gnueabihf crossbuild-essential-arm64 gcc-aarch64-linux-gnu file    \
        build-essential gdb u-boot-tools device-tree-compiler python python-dev curl     \
        libxml2-dev libsensors4-dev libssl-dev libedit-dev liblzma-dev tree binutils-dev \
        libnuma-dev libpcap-dev libtool mtd-utils libncurses5-dev libelf-dev net-tools   \
        libcunit1-dev pkg-config autotools-dev crossbuild-essential-armhf openssh-server \
        openssh-client crossbuild-essential-armhf qemu-utils kmod g++-aarch64-linux-gnu  \
	cpp-arm-linux-gnueabihf dosfstools

RUN pip install six
