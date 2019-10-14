#!/bin/sh
for i in $(seq 100 999);do
	a=$[i/100]
	b=$[i/10%10]
	c=$[i%10]
	num=$[a**3+b**3+c**3]
  	[ "$num" == "$i" ]&&printf "$i是一个水仙花数\n"
done
