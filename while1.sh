#!/bin/sh
i=0
while [ $i -lt 10 ];do
	let i++
	[ $i == 5 ]&&continue
	useradd user$i
	echo pass$i | passwd --stdin user$i
done
