#!/bin/sh
for i in {1..9};do
	for j in $(seq 1 $i);do
		echo -e -n "$j*$i=$[i*j]\t"
	done
	echo
done

