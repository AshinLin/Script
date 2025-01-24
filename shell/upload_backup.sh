#!/bin/bash

# 设置默认值
SOURCE_FOLDER="/root"   # 默认为 /root 文件夹
DESTINATION_URL="https://alist.739999.xyz/dav"   # WebDAV服务器的URL
BACKUP_NAME="backup_$(date +'%Y%m%d_%H%M%S').tar.gz"  # 压缩文件名，带时间戳

# 解析参数
while getopts "u:p:f:s:" opt; do
    case ${opt} in
        u) USER=${OPTARG} ;;  # WebDAV用户名
        p) PASSWORD=${OPTARG} ;;  # WebDAV密码
        f) SOURCE_FOLDER=${OPTARG} ;;  # 待压缩文件夹路径
        s) SERVER_ID=${OPTARG} ;;  # 服务器标识
        \?) echo "Usage: $0 [-u USERNAME] [-p PASSWORD] [-f FOLDER_PATH] [-s SERVER_ID]" ;;
    esac
done

# 检查是否提供了 USER 和 PASSWORD
if [ -z "$USER" ] || [ -z "$PASSWORD" ] || [ -z "$SERVER_ID" ]; then
    echo "用户名、密码和服务器标识是必需的！"
    exit 1
fi

# 生成备份文件名
BACKUP_NAME="${SERVER_ID}_${SOURCE_FOLDER//\//_}_backup_$(date +'%Y%m%d_%H%M%S').tar.gz"

# 1. 压缩文件夹
echo "压缩文件夹 $SOURCE_FOLDER 为 $BACKUP_NAME ..."
tar -czf "$BACKUP_NAME" -C "$(dirname "$SOURCE_FOLDER")" "$(basename "$SOURCE_FOLDER")"

# 2. 上传文件到WebDAV
UPLOAD_PATH="$SERVER_ID/$BACKUP_NAME"
echo "上传 $BACKUP_NAME 到 $DESTINATION_URL/$UPLOAD_PATH ..."
curl -u "$USER:$PASSWORD" -T "$BACKUP_NAME" "$DESTINATION_URL/$UPLOAD_PATH"

# 3. 删除本地压缩文件（如果不再需要）
echo "删除本地压缩文件 $BACKUP_NAME ..."
rm -f "$BACKUP_NAME"

# 完成
echo "操作完成！"
