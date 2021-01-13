#!/bin/bash
wget https://github.com/erebe/wstunnel/releases/download/v3.0/wstunnel-x64-linux.zip
unzip wstunnel-x64-linux.zip
mv wstunnel /usr/local/bin/wstunnel
chmod +x /usr/local/bin/wstunnel
cat > /etc/systemd/system/wstunnel.service <<EOF
[Unit]
Description=wstunnel
[Service]
User=root
ExecStart=/usr/local/bin/wstunnel -D 0.0.0.0:1080 wss://10.10.10.1:1080 -u
[Install]
WantedBy=multi-user.target
EOF
systemctl enable wstunnel
systemctl start wstunnel
systemctl status wstunnel