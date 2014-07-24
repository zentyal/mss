#!/bin/bash

. ../functions.sh
check_root
check_mmc_configured

smb_mode="$1"
smb_domain="$2"
smb_passwd="$3"
fw_lan="$4"
fw_wan="$5"

python -u ./provision.py "$smb_mode" "$smb_domain" "$smb_passwd"
if [ "$?" != "0" ]; then
    exit 1
else
    # configure the Firewall
    [ $fw_lan == "on" ] && mss-add-shorewall-rule -a SMB/ACCEPT -t lan
    [ $fw_wan == "on" ] && mss-add-shorewall-rule -a SMB/ACCEPT -t wan
    restart_service shorewall
    info "Samba4 has been provisioned successfully"
fi

# confirmation
info_b $"You can now use the management interface to manage your Windows users and shares at https://@HOSTNAME@/mmc/."

exit 0
