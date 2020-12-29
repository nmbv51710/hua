#!/usr/bin/env bash
mkdir -p /etc/v2ray
docker run -d -p 8388:8388 -p 8388:8388/udp --name v2ray --restart=always -v /etc/v2ray:/etc/v2ray v2fly/v2fly-core
wget --no-check-certificate -O /etc/v2ray/config.json "https://raw.githubusercontent.com/nmbv51710/hua/master/config.json.tcp"
docker restart v2ray
mkdir -p /etc/xray
docker run -d -p 8488:8488 -p 8488:8488/udp --name xray --restart=always -v /etc/xray:/etc/xray teddysun/xray
wget --no-check-certificate -O /etc/xray/config.json \
"https://raw.githubusercontent.com/nmbv51710/hua/master/config.xray.ss"
docker restart xray
docker logs v2ray
docker logs xray
docker ps -a

