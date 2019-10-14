#!/bin/sh
read -p "请输入用户名: " name
if [ -z "$name" ];then
    echo "输入不能为空!"
    exit 
elif  id $name &> /dev/null;then
	echo "用户$name已存在"
elif [[ "${name}" =~ ^([[:alpha:]]+[[:digit:]]*){4,}$ ]];then
	echo "$name用户不存在,现在系统为你创建$name用户"
    read -s -p "请输入密码: " passwd
	echo
	if [ -z "$passwd" ];then
    	echo "输入不能为空!"
    	exit
	fi 
	if [[ "$passwd" =~ ^[[:alnum:]]{8,}$ ]];then
    	read -s -p "请重复输入密码: " passwd2
		echo
		if [ -z "$passwd2" ];then
    		echo "输入不能为空!"
    		exit
		fi 
    	if [ "$passwd" == "$passwd2" ];then
        	echo "恭喜用户$name注册成功!"
   			useradd $name &> /dev/null
        	echo "$passwd" |passwd --stdin $name &> /dev/null
			pas=$(echo -n "$passwd"|md5sum)
        	echo "$name:$pas" >> passwd.txt
   		else
    	    echo "两次密码输入不一致!"
			exit
	    fi
	else
		echo "密码长度少于8位"
		exit
	fi
else
    echo "$name用户不存在或$name用户名不规范"
fi
