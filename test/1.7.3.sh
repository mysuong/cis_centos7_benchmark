#!/bin/sh
# ** AUTO GENERATED **

# 1.7.3 - Ensure remote login warning banner is configured properly (Automated) - Server1 Workstation1

out=$(egrep '(\\v|\\r|\\m|\\s)' /etc/issue.net)
[[ -z "${out}" ]] || exit 1
