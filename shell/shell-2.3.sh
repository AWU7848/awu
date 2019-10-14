#!/bin/sh
for i in {1..10};do
	echo $RANDOM $i
done|sort -n|awk '{print $2}'|tr -s "\n" " "
echo
