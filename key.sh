#/bin/bash
apt-get update -y
apt-get install curl -y
echo '============================
      SSH Key Installer
	 V1.0 Alpha
	Author:Kirito
============================'
cd ~
mkdir .ssh
cd .ssh
curl https://github.com/$1.keys > authorized_keys
chmod 700 authorized_keys
cd ../
chmod 600 .ssh
cd /etc/ssh/
wget --no-check-certificate -O /etc/ssh/sshd_config https://git.io/JtIbm
systemctl restart sshd
cd ~
rm -rf key.sh
