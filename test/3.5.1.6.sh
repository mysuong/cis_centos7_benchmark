#!/bin/sh
# ** AUTO GENERATED **

# 3.5.1.6 - Ensure network interfaces are assigned to appropriate zone (Manual) - Server1 Workstation1

systemctl is-enabled firewalld | grep "enabled" || exit $?
find /sys/class/net/* -maxdepth 1 | awk -F"/" '{print $NF}' | while read -r netint; do [ "$netint" != "lo" ] && firewall-cmd --get-active-zones | grep -B1 $netint; done || exit $?
