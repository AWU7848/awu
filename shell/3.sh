#!/bin/sh
#打印出uid和gid不相等的用户的用户名,uid,gid
for i in $(cat /etc/passwd |cut -d: -f1);do
    uid=`id -u $i`
	gid=`id -g $i`
    if [ $uid -ne $gid ];then
        printf "用户名：$i\tUID：$uid\tGID：$gid\n"
    fi
done
