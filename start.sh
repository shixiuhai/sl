#!/bin/bash
while true
do
  sleep 15
  ping -c5 -q 114.114.114.114 # -c 5 是ping 5次的意思，-q 是隐藏ping的结果
  if [ $? -eq 0 ];then
    echo "---校园网在现中---"
   else
    python3 jxnu_wifi.py
done
