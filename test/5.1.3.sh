#!/bin/sh
# ** AUTO GENERATED **

# 5.1.3 - Ensure permissions on /etc/cron.hourly are configured (Automated) - Server1 Workstation1

stat -L -c "%a %u %g" /etc/cron.hourly | grep -q "700 0 0$" || exit $?
