#!/bin/sh

mkdir raspbian-root

debootstrap --arch armhf --variant minbase --no-check-gpg --foreign buster raspbian-root http://archive.raspbian.org/raspbian

tar -C raspbian-root -c . | docker import - raspbian-temp

docker run --rm --privileged multiarch/qemu-user-static --reset -p yes

docker build -t blafy/raspbian .
