#!/bin/sh

mkdir raspbian-root

debootstrap --arch armhf --variant minbase --no-check-gpg --foreign buster raspbian-root http://archive.raspbian.org/raspbian

tar -C raspbian-root -c . | docker import - raspbian-temp
