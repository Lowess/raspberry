#!/usr/bin/env bash

#auto eth0
#allow-hotplug eth0
#iface eth0 inet static
#    address 192.168.111.1
#    network 192.168.111.0
#    gateway 0.0.0.0
#    broadcast 192.168.111.255
#    netmask 255.255.255.0
#    dns-nameservers 8.8.8.8

iptables --table nat --append POSTROUTING --out-interface wlan0 -j MASQUERADE
iptables --append FORWARD --in-interface eth0 -j ACCEPT
echo 1 > /proc/sys/net/ipv4/ip_forward
