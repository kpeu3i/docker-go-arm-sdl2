# GoArmSDL2

Dockerfile for Golang cross-compilation dedicated to ARM architecture.

## Usage

    $ docker run -it --rm -v "$PWD":/go/src/app -w /go/src/app kpeu3i/go-arm-sdl2:1.9 go build
