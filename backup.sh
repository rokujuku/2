data=$(date +%d.%m.%Y-%H:%M:%S)
mkdir /var/backup/$data
cp -r /frr /var/backup/$data
cp -r /dhcp /var/backup/$data
cp -r /NetworkManager/system-connections /var/backup/$data
cp -r /nftables /var/backup/$data
cd /var/backup
tar czfv "./$data.tar.gz" ./$data
rm -r /var/backup/$data
