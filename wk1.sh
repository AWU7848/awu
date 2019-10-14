#!/bin/sh
#打印出100以内所有能被7整除的数
for i in {1..100};do
	if (( "$i"%7 == 0 ));then
		echo "$i"
	fi
done
 
