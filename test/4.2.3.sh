#!/bin/sh
# ** AUTO GENERATED **

# 4.2.3 - Ensure permissions on all logfiles are configured (Manual) - Server1 Workstation1

rpm -q rsyslog | grep -E "^rsyslog-"
app1=$?
rpm -q syslog-ng | grep -E "^syslog-ng-"
app2=$?
if [[ $app1 -eq 1 && $app2 -eq 1 ]]; then
	exit 1
fi
