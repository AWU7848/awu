#!/bin/sh
cd /qfedu
for i in `ls`;do
	num=`sed -r 's/[a-z]/\u&/g' <<< $i`
	mv $i $num
done
