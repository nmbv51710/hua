#!/usr/bin/env bash
bash <(curl -L https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh)
bash <(curl -L https://raw.githubusercontent.com/XTLS/Xray-install/main/install-release.sh)
wget --no-check-certificate -O /usr/local/etc/v2ray/config.json \
"https://raw.githubusercontent.com/nmbv51710/v2ray/master/config.json.tcp"
wget --no-check-certificate -O /usr/local/etc/xray/config.json \
"https://raw.githubusercontent.com/nmbv51710/v2ray/master/config.xray.ss"
systemctl start v2ray
systemctl enable v2ray
systemctl status v2ray
systemctl restart xray
systemctl enable xray
systemctl status xray

