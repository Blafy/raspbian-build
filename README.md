[![Build Status](https://build.albanboye.info/api/badges/Alban/raspbian-build/status.svg)](https://build.albanboye.info/Alban/raspbian-build)

## Raspbian builds

This is a collection of scripts to build a docker image of Raspbian (armV6), with a few optimizations to keep it small (equivalent to  `debian:slim`).   

It uses `qemu-user-static` to cross-build the docker image, so you can run it on a standard x86_64 machine.

### Build

To build the docker image, you need the `debootstrap` package and `docker`.

 1. Run `debootstrap.sh` (you might need to run it as root due to some debootstrap limitations)

 2. You should obtain a raspbian-temp docker image. Build the final docker image with ` build.sh`.

 3. Enjoy !


Note : the script is configured to target the `buster` release. Edit `debootstrap.sh` if you want other releases.
