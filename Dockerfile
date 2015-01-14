FROM ubuntu:14.04.1

MAINTAINER Izhar ul Hassan "ezhaar@gmail.com"

RUN apt-get update && apt-get install -y \
    dnsmasq \
    supervisor

COPY conf_files/dnsmasq.conf /etc/dnsmasq.conf
COPY conf_files/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY conf_files/dnsmasq_sighup.sh /root/
ENV TERM xterm
RUN touch /etc/hosts.localdomain
CMD ["/usr/bin/supervisord"]

