#!/bin/sh
# ** AUTO GENERATED **

# 1.5.2 - Ensure XD/NX support is enabled (Automated) - Server1 Workstation1

dmesg | grep NX | grep "NX (Execute Disable) protection: active" || exit $1
