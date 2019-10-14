#!/bin/sh
#求100以内所有正整数之和
for i in {1..100};do
	sum=$[sum+i]
done
echo "100以内所有正整数之和为$sum"
