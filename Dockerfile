FROM debian-base
RUN apt-get -y install squid
COPY squid.conf /etc/squid/squid.conf
VOLUME ["/etc/squid/"]
USER proxy
CMD [ "sh", "-c", "/usr/sbin/squid -f /etc/squid/squid.conf -N -z && exec /usr/sbin/squid -NYCd 1 -f /etc/squid/squid.conf" ]
