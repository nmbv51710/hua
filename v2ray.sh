#!/usr/bin/env bash
bash <(curl -L https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh)
bash <(curl -L https://raw.githubusercontent.com/XTLS/Xray-install/main/install-release.sh)
wget --no-check-certificate -O /etc/v2ray/config.json "https://raw.githubusercontent.com/nmbv51710/hua/main/config.json.tcp"
wget --no-check-certificate -O /etc/xray/config.json "https://raw.githubusercontent.com/nmbv51710/hua/main/config.xray.ss"
systemctl start v2ray xray
systemctl enable v2ray xray
systemctl restart xray xray
systemctl status v2ray xray


