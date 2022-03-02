## 这个脚本只对linux有效，手机上需要安装termux windows电脑上可以写dos脚本或者将项目运行到linux子系统上
#!/bin/bash
while true
do
  sleep 15
  ping -c 5 -q 114.114.114.114 # -c 5 是ping 5次的意思，-q 是隐藏ping的结果
  if [ $? -eq 0 ];then
    echo "---校园网在线中---"
   else
    python3 jxnu_wifi.py
done
