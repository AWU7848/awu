#!/bin/sh
for i in {01..10};do
	useradd user$i
	echo "pass$i" |passwd --stdin user$i
done
