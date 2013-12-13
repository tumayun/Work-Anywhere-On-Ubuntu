#!/bin/bash
# 警告：这个文件修改后不要提交，以免泄漏密码!!
vpn_host=YOUR_VPN_SERVER #VPN服务器
user=USER_NAME #用户名
key=YOUR_STATIC_PASSWORD #密码中不变的部分

sudo whoami > /dev/null
read -s -p "Enter dynamic digital password: " passwd 
echo ""

#vpnc运行必须要有root权限,
#因为需要创建网络连接tun0
sudo `dirname $0`/array_vpnc.bin $vpn_host $user $key$passwd
