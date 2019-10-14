#!/bin/sh
for i in {2..254};do
	(ping -c 1 -w 2 10.3.145.$i &> /dev/null&&echo "10.3.145.$i") &
done
wait
