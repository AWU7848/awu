#!/bin/sh
#打印"2的N次方是XX"(N的值从1到32)
for i in {1..32};do
	a=$[ 2**$i ]
	echo "2的$i次方是$a"
done
