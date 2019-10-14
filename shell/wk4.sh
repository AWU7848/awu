#!/bin/sh
#求100以内所有正整数之和
sum=0
if [ "$1" == "--help" -o "$1" == "-h" -o -z "$1" ];then
    echo "Usage: $basename [int1] int2"
    echo "Print the sum of that from int1 to int2, if no int1 there, print the 
sum of that from 1 to int2."
    exit    
elif [ "$#" -gt 2 ];then
    echo "错误：参数过多,请查看帮助信息"
    exit   
elif [[ "$1" =~ [^0-9] ]];then
    echo "错误：参数错误,请查看帮助信息"
    exit
elif [ "$#" == 1 ];then
    for i in $(seq 1 $1);do
        sum=$[sum+$i] 
    done 
    echo "$1以内所有正整数之和为$sum"
elif [ "$#" == 2 ];then
    for i in $(seq $1 $2);do
        sum=$[sum+i]
    done
    echo "$1到$2以内所有正整数之和为$sum"
fi
