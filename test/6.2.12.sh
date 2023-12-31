#!/bin/sh
# ** AUTO GENERATED **

# 6.2.12 - Ensure users own their home directories (Automated) - Server1 Workstation1

awk -F: '($1!~/(halt|sync|shutdown|nfsnobody)/ && $7!~/^(\/usr)?\/sbin\/nologin(\/)?$/ && $7!~/(\/usr)?\/bin\/false(\/)?$/) { print $1 " " $6 }' /etc/passwd | while read -r user dir; do
   if [ ! -d "$dir" ]; then
   echo "User: \"$user\" home directory: \"$dir\" does not exist."
   exit 1
   else
   owner=$(stat -L -c "%U" "$dir")
   if [ "$owner" != "$user" ]; then
   echo "User: \"$user\" home directory: \"$dir\" is owned by \"$owner\""
   exit 1
   fi
   fi
done
