#!/bin/bash
name=$(awk -F: '{print $1}' /etc/passwd)
for i in $name;do
	echo -e "用户名：${i}\tUID：`id -u $i`"
done
