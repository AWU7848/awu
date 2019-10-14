#!/bin/sh
echo -n "1000以内所有的质数为2 "
for i in $(seq 1 2 1000);do
	count=0
	for j in $(seq 2 $i);do
		num=$[i%j]
		[ $num -eq 0 ]&&let count++
		[ $count -gt 1 ]&&break
	done
	[ $count == 1 ]&&echo -n "$i "
done
echo

