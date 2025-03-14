# Script

## 1. delete_empty_folders.sh - 删除空文件夹

### 修改 `/path/to/your/folder`
```bash
curl -s https://raw.githubusercontent.com/AshinLin/Script/main/shell/delete_empty_folders.sh | bash -s /path/to/your/folder
```

### 在当前目录运行
```bash
curl -s https://raw.githubusercontent.com/AshinLin/Script/main/shell/delete_empty_folders.sh | bash -s .
```

---

## 2. install_docker.sh - 一键安装 Docker
```bash
curl -s https://raw.githubusercontent.com/AshinLin/Script/main/shell/install_docker.sh | bash
```

---

## 3. install_freshrss.sh - 一键部署 FreshRSS
```bash
curl -s https://raw.githubusercontent.com/AshinLin/Script/main/shell/install_freshrss.sh | bash
```

---

## 4. install_frpc.sh - 一键安装 frp 客户端

### 默认版本
```bash
curl -O https://raw.githubusercontent.com/AshinLin/Script/main/shell/install_frpc.sh && chmod +x install_frpc.sh && ./install_frpc.sh
```

### 指定版本
```bash
curl -O https://raw.githubusercontent.com/AshinLin/Script/main/shell/install_frpc.sh && chmod +x install_frpc.sh && ./install_frpc.sh 0.61.1
```

---

## 5. install_frps.sh - 一键安装 frp 服务端

### 默认版本
```bash
curl -s https://raw.githubusercontent.com/AshinLin/Script/main/shell/install_frps.sh | bash
```

### 指定版本
```bash
curl -s https://raw.githubusercontent.com/AshinLin/Script/main/shell/install_frps.sh | bash -s 0.61.1
```

---

## 6. install_memos.sh - 一键部署 Memos
```bash
curl -s https://raw.githubusercontent.com/AshinLin/Script/main/shell/install_memos.sh | bash
```

---

## 7. install_nginx_proxy_manager.sh - 一键部署 nginx_proxy_manager
```bash
curl -s https://raw.githubusercontent.com/AshinLin/Script/main/shell/install_nginx_proxy_manager.sh | bash
```

---

## 8. install_rsshub.sh - 一键部署 RSSHub

```bash
curl -s https://raw.githubusercontent.com/AshinLin/Script/main/shell/install_rsshub.sh | bash
```

---

## 9. install_syncthing.sh - 一键部署 Syncthing
```bash
curl -s https://raw.githubusercontent.com/AshinLin/Script/main/shell/install_syncthing.sh | bash
```

---

## 10. install_tools.sh - Debian/Ubuntu 一键安装常用工具
```bash
curl -s https://raw.githubusercontent.com/AshinLin/Script/main/shell/install_tools.sh | bash
```

---

## 11. iptables_redirect.sh - iptables 端口转发

### 修改参数：  
- `transfer_port` - 本地端口  
- `target_domain_or_ip` - 目标服务器域名或 IP（域名会被解析成 IP 后写入规则）  
- `target_port` - 目标服务器端口  

```bash
curl -s https://raw.githubusercontent.com/AshinLin/Script/main/shell/iptables_redirect.sh | bash -s <transfer_port> <target_domain_or_ip> <target_port>
```

---

## 12. iptables_reset.sh - iptables 清除所有规则
```bash
curl -s https://raw.githubusercontent.com/AshinLin/Script/main/shell/iptables_reset.sh | bash
```

---

## 13. upload_backup.sh - 备份文件夹到 WebDAV

### 修改参数：  
- `-u` - WebDAV 用户名  
- `-p` - WebDAV 密码  
- `-f` - 待压缩文件夹路径  
- `-s` - 服务器标识，用于构建上传路径  
- `-d` - WebDAV 服务器的 URL  

```bash
curl -s https://raw.githubusercontent.com/AshinLin/Script/main/shell/upload_backup.sh | bash -s -- -u your_username -p your_password -s your_server_id -d https://dav.com/dav -f /path/to/folder
```

---