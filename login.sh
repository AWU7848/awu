#!/bin/sh
read -p "请输入用户名: " name
if [ -z "$name" ];then
    echo "输入不能为空!"
    exit
elif  id $name &> /dev/null;then
    read -p "请输入密码: " pas
	spawn su - $name
    expect "password:"   
    send "$pas\n"
    expect "$"                    
    send "pwd"
    interact
else
	echo "用户不存在或密码输入错误!"
	exit
fi
