FROM raspbian-temp

COPY trimming.sh /

RUN /debootstrap/debootstrap --second-stage

RUN echo 'deb http://raspbian.raspberrypi.org/raspbian/ buster main contrib non-free rpi' > /etc/apt/sources.list

RUN apt remove -y --allow-remove-essential e2fsprogs gcc-4.9-base gcc-5-base gcc-6-base gcc-7-base

RUN rm -r /var/lib/apt/lists /var/cache/apt/archives

RUN chmod +x trimming.sh && ./trimming.sh

RUN rm trimming.sh

FROM scratch

COPY --from=0 / /

CMD ['/bin/sh']
