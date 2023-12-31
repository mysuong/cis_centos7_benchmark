#!/bin/sh
# ** AUTO GENERATED **

# 6.2.14 - Ensure users' dot files are not group or world writable (Automated) - Server1 Workstation1

awk -F: '($1!~/(halt|sync|shutdown|nfsnobody)/ && $7!~/^(\/usr)?\/sbin\/nologin(\/)?$/ && $7!~/(\/usr)?\/bin\/false(\/)?$/) { print $1 " " $6 }' /etc/passwd | while read -r user dir; do
   if [ -d "$dir" ]; then
   for file in "$dir"/.*; do
   if [ ! -h "$file" ] && [ -f "$file" ]; then
   fileperm=$(stat -L -c "%A" "$file")
   if [ "$(echo "$fileperm" | cut -c6)" != "-" ] || [ "$(echo "$fileperm" | cut -c9)" != "-" ]; then
   echo "User: \"$user\" file: \"$file\" has permissions: \"$fileperm\""
   fi
   fi
   done
   fi
done
