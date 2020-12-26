#!/usr/bin/env bash
mkdir -p /etc/frps
cat >/etc/frps/frps.ini <<EOF
[common]
bind_addr = 0.0.0.0
bind_port = 7000
auto_token = watch?v=w_Ma8oQLmSM

dashboard_port = 7500
dashboard_user = admin
dashboard_pwd = McZeLEz88RE
EOF
docker run -d --restart=always --name frps --network host -v /etc/frps/frps.ini:/etc/frp/frps.ini snowdreamtech/frps
docker ps -a
docker logs frps
