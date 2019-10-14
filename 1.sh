#!/bin/sh
#打印出所有用户的用户名及基本组组名
for i in `cat /etc/passwd |cut -d: -f1`;do
	printf "用户名：`id -un $i`\t基本组名：`id -gn $i`\n"
done
