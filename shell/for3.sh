#!/bin/sh
! [ -d /haowan ] && mkdir /haowan
for i in {1..10};do
	touch /haowan/up-$i
done
	
