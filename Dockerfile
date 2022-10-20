FROM balenalib/rpi-debian

RUN install_packages dnsmasq wireless-tools

WORKDIR /usr/src/app

COPY target/wifi-connect .

COPY scripts/start.sh .

CMD ["bash", "start.sh"]
