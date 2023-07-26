#!/bin/sh
# ** AUTO GENERATED **

# 1.1.1.3 - Ensure mounting of udf filesystems is disabled (Automated) - Server1 Workstation1

modprobe -n -v udf 2>&1 | grep -E "(install /bin/true|FATAL: Module udf not found.)" || echo $?
[[ -z "$(lsmod | grep udf)" ]] || exit 1
