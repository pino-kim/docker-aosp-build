# AOSP BUILD Dockerfile

FROM ubuntu:18.04

MAINTAINER sungwon.pino "sungwon.pino@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

# Update apt-get
RUN apt-get update
RUN apt-get dist-upgrade -y

# Install build dependency package
RUN apt-get install -y \
        bc \
        build-essential \
        ccache \
        curl \
        g++-multilib \
        gcc-multilib \
        git \
        gnupg \
        gperf \
        imagemagick \
        lib32ncurses5-dev \
        lib32readline-dev \
        lib32z1-dev \
        liblz4-tool \
        libncurses5-dev \
        libsdl1.2-dev \
        libssl-dev \
        libwxgtk3.0-dev \
        libxml2 \
        libxml2-utils \
        lzop \
        m4 \
        openjdk-8-jdk \
        pngcrush \
        repo \
        rsync \
        schedtool \
        squashfs-tools \
        xsltproc \
        zip \
        zlib1g-dev \
        bison gperf \
        libxml2-utils \
        make \
        zlib1g-dev \
        liblz4-tool \
        libncurses5 \
        lunch \
        unzip \
        clang \
        locales \
        apt-utils \
        --no-install-recommends

# Sets language to UTF8 : this works in pretty much all cases
ENV LANG en_US.UTF-8
RUN locale-gen $LANG

