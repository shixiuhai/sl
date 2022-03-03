## 这个脚本只对linux有效，手机上需要安装termux windows电脑上可以写dos脚本或者将项目运行到linux子系统上
#!/bin/bash
while true
do
  # 每隔5秒钟判断一次校园网是否在线
  sleep 5
  hh==`date '+%H'`
  ping -c 5 -q 114.114.114.114 # -c 5 是ping 5次的意思，-q 是隐藏ping的结果
  # 当有网络的时候判定校园网在线
  if [ $? -eq 0 ];then
    echo "---校园网在线中---"
  # 在晚上0点到早上6点间，校园网认证功能关闭
  elif [ $hh -ge 00 -a  $hh -le 06 ];then
    echo "---现在是休息时间---"
  # 在需要认证的时间内运行自动认证的python3脚本
  else
    python3 jxnu_wifi.py
  fi
done
