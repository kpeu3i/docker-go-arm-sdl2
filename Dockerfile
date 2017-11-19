FROM golang:1.9

MAINTAINER Andrey Bukatov <andrey.bukatov@gmail.com>

RUN dpkg --add-architecture armel && \
    apt-get update && apt-get install -y --no-install-recommends \
        linux-libc-dev-armel-cross \
        libc6-armel-cross \
        libc6-dev-armel-cross \
        binutils-arm-linux-gnueabi \
        libsdl1.2-dev:armel \
        libsdl2-dev:armel \
        gcc-arm-linux-gnueabi

ENV PKG_CONFIG_PATH /usr/lib/arm-linux-gnueabi/pkgconfig
ENV CC arm-linux-gnueabi-gcc
ENV GOOS linux
ENV GOARCH arm
ENV GOARM 7
ENV CGO_ENABLED 1
ENV CGO_LDFLAGS -L/usr/lib/arm-linux-gnueabi -lSDL2
ENV CGO_CFLAGS -I/usr/include/SDL2 -D_REENTRANT
