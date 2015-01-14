FROM ubuntu:14.04.1

MAINTAINER Izhar ul Hassan "ezhaar@gmail.com"

RUN apt-get update && apt-get install -y \
    dnsmasq 

COPY conf_files/dnsmasq.conf /etc/dnsmasq.conf
COPY conf_files/dnsmasq_sighup.sh /root/
COPY conf_files/initialize.sh /root/
COPY conf_files/resolv.dnsmasq.conf /etc/resolv.dnsmasq.conf
ENV TERM xterm
RUN touch /etc/hosts.localdomain
CMD ["/root/initialize.sh"]
