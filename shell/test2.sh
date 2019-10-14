#!/bin/sh
read -p "请输入出生年份： " year
if [ -z "$year" ];then
	echo "输入不能为空"
	exit 1
elif [ "$year" !~ ^[0-9]+$ ];then
	echo "输入错误"
	exit 2
elif [ "$year" == 2000 ];then
	echo "00后"
elif [ "$year" -ge 1990 -a "$year" -le 1999 ];then
	echo "90后"
else 
	echo "老年人"
fi
