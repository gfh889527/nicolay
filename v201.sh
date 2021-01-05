#!/bin/bash
#脚本适用系统【Debian10 64位】，其他系统没有测试
#一键安装v2ray脚本
#作者：大春
#联系方式：1286908023@qq.com
USERCONFIG=$(cd /etc && mkdir v2ray && cd v2ray && wget https://raw.githubusercontent.com/gfh889527/nicolay/master/config.json && cd)
USERDATE=$(rm -rf /etc/localtime && ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime)
USERAPT=$(apt-get update -y&&apt-get install docker -y&&apt-get install curl -y)
USERDOCKER=$(docker version > /dev/null || curl -fsSL get.docker.com | bash)
USERDOCKER-RESTART=$(service docker restart)
USETPULLV2RAY=$(docker run -d --name v2ray -v /etc/v2ray:/etc/v2ray -p 16823:16823 v2ray/official  v2ray -config=/etc/v2ray/config.json)
USERPORT="16823"
USERUUID="b831381d-6324-4d53-ad4f-8cda48b30811"
USERNETWORK="ws"
USERALTERID="64"



#创建config.json配置文件
echo $USERCONFIG

#调整时间为上海时间
echo $USERDATE
#安装docker环境
echo $USERAPT
#安装docker
echo $USEDOCKER
#初始化docker
echo $USERDOCKERRESTART
#运行docker镜像
echo $USETPULLV2RAY
echo "#######你的账号信息如下#######"
echo "端口：${USERPORT}"
echo "UUID：${USERUUID}"
echo "网络协议：${USERNETWORK}"
echo "额外ID：${USERALTERID}"

