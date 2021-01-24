#!/usr/bin/env bash
wget --no-check-certificate -O /root/.config/rclone/rclone.conf \
"https://raw.githubusercontent.com/nmbv51710/hua/master/rclone.conf"
mkdir -p /mnt/gshare
wget --no-check-certificate -O /etc/systemd/system/gshare.service \
"https://raw.githubusercontent.com/nmbv51710/hua/master/gshare.service"
systemctl enable gshare
systemctl start gshare
systemctl status gshare