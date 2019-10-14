#!/bin/sh
#打印出uid小于99的用户的用户名及uid
for i in $(cat /etc/passwd |cut -d: -f1);do
	a=`id -u $i`
	if [ $a -lt 99 ];then
		printf "用户名：$i\tUID：$a\n"
	fi
done
