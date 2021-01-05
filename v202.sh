#!bin/bash
USERCONFIG=$(cd /etc/v2ray && wget https://raw.githubusercontent.com/gfh889527/nicolay/master/config.json && cd)
USERDATE=$(rm -rf /etc/localtime && ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime)
USERAPT=$(apt-get update -y&&apt-get install docker -y&&apt-get install curl -y)
USERV2RAY=$(bash <(curl -L -s https://install.direct/go.sh))
UAERDEL=$(cd /etc/v2ray && rm -rf config.json && cd)
USERSTRATV2RAY=$(service v2ray start)
USERRESTARTV2RAY=$(service v2ray restart)
USERPORT="16823"
USERUUID="b831381d-6324-4d53-ad4f-8cda48b30811"
USERNETWORK="ws"
USERALTERID="64"

#调整时间为上海时间
echo $USERDATE
#安装V2RAY环境
echo $USERAPT
#安装v2ray
echo $USERV2RAY
#删除旧的config.json文件
echo $UAERDEL
#创建新的config.json配置文件
echo $USERCONFIG
#重启v2ray
echo $USERRESTARTV2RAY
#启动v2ray
echo $USERSTRATV2RAY
echo "#######你的账号信息如下#######"
echo "端口：${USERPORT}"
echo "UUID：${USERUUID}"
echo "网络协议：${USERNETWORK}"
echo "额外ID：${USERALTERID}"



















