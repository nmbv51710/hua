#/bin/sh
apt-get update -y
apt-get install curl -y
echo '============================
      SSH Key Installer
         V1.0 Alpha
        Author:Kirito
============================'
cd /root
mkdir /root/.ssh
cd /root/.ssh
curl https://github.com/$1.keys > authorized_keys
chmod 700 authorized_keys
cd  /root
chmod 600 .ssh
cd /etc/ssh/
wget --no-check-certificate -O /etc/ssh/sshd_config https://git.io/JtIbm
systemctl restart sshd
rm -rf /root/key.sh
