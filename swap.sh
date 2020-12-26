cd /var
dd if=/dev/zero of=swapfile bs=1024 count=1024000
/sbin/mkswap swapfile
ls -al /var/swapfile
chmod 600 /var/swapfile
/sbin/swapon swapfile
/sbin/swapon -s
echo "/var/swapfile swap swap defaults 0 0" >> /etc/fstab
