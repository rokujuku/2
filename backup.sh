#!/bin/bash
data=$(date +%d.%m.%Y-%H:%M:%S)
mkdir /var/backup/$data
cp -r /etc/frr /var/backup/$data
cp -r /etc/dhcp /var/backup/$data
cp -r /etc/NetworkManager/system-connections /var/backup/$data
cp -r /etc/nftables.conf /var/backup/$data
cd /var/backup
tar czfv "./$data.tar.gz" ./$data
rm -r /var/backup/$data