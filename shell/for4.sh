#!/bin/sh
cd /haowan
for i in $(ls up*);do
	name=$(seq 's/up/down/' $i)
	echo $name
    #mv /haowan/up-$i /haowan/down-$i
done
