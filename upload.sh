#!/bin/bash
#下载后移动的文件夹路径
RemoteDIR="cloud"; 
Uploader="/usr/local/bin/OneDriveUploader";  #上传的程序完整路径，默认为本文安装的目录
Config="/root/auth.json";  #初始化生成的配置auth.json绝对路径，参考第3步骤生成的路径

if [[ ${CLD_TYPE} == "torrent" ]]; then
eval /usr/local/bin/OneDriveUploader -c /root/auth.json -s \'"${CLD_DIR}/${CLD_PATH}"\' -r "${RemoteDIR}" -t 15 -b 20;
eval rm -rf \'"${CLD_DIR}/${CLD_PATH}"\';
#移动后停止该任务
/usr/bin/curl --data "stop:${CLD_HASH}" "http://127.0.0.1:3000/api/torrent";
#停止后清除该任务，也就是不会出现在Web界面了
/usr/bin/curl --data "delete:${CLD_HASH}" "http://127.0.0.1:3000/api/torrent";
fi
