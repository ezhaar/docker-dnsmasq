#!/bin/bash
sed -i "s/__IP__/$(hostname -i)/g" /etc/dnsmasq.conf
/usr/sbin/dnsmasq --no-daemon
