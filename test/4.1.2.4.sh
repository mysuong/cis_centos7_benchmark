#!/bin/sh
# ** AUTO GENERATED **

# 4.1.2.4 - Ensure audit_backlog_limit is sufficient (Automated) - Server2 Workstation2

# IF check passes return PASSED
efidir=$(find /boot/efi/EFI/* -type d -not -name 'BOOT') gbdir=$(find /boot -maxdepth 1 -type d -name 'grub*')
if [ -f "$efidir"/grub.cfg ]; then
	grep "^\s*linux" "$efidir"/grub.cfg | grep -Evq "audit_backlog_limit=\S+\b" && echo -e "\n\nFAILED" || echo -e "\n\nPASSED:\n \"$(grep "audit_backlog_limit=" "$gbdir"/grub.cfg)\""
elif [ -f "$gbdir"/grub.cfg ]; then
	grep "^\s*linux" "$gbdir"/grub.cfg | grep -Evq "audit_backlog_limit=\S+\b" && echo -e "\n\nFAILED" || echo -e "\n\nPASSED:\n \"$(grep "audit_backlog_limit=" "$gbdir"/grub.cfg)\""
else
	echo "FAILED"
fi
exit 1
