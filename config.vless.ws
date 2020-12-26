{
 "log": {
  "loglevel": "warning",
  "access": "/var/log/v2ray/access.log",
  "error": "/var/log/v2ray/error.log"
 },
  "inbounds": [
    {
      "port": 8388,
      "protocol": "vless",
      "settings": {
        "clients": [
          {
            "id": "91cb66ba-a373-43a0-8169-33d4eeaeb857",
            "level": 0,
            "email": "vless@v2fly.org"
          }
        ],
      "decryption": "none"
      },
      "streamSettings": {
        "network": "ws",
        "wsSettings": {
        "path": "/newsline"
        }
      }
    }
  ],
  "outbounds": [
    {
      "protocol": "freedom",
      "settings": {}
    }
  ]
}
