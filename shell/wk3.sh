#!/bin/sh
#求100以内所有正整数之和
sum=0
if [ "$1" == "--help" -o "$1" == "-h" -o -z "$1" ];then
	echo "Usage: $(basename $0) [int1] int2"
	echo "Print the sum of that from int1 to int2, if no int1 there, print the sum of that from 1 to int2."
	exit
fi
[ "$#" -gt 2 ] && echo "错误：参数过多,请查看帮助信息" && exit
for j in $@;do
	[[ "$j" =~ [^0-9] ]] && echo "错误：参数错误,请查看帮助信息" && exit
done
for i in $(seq $*);do
    sum=$[sum+$i]
done
echo "$1以内所有正整数之和为$sum"
