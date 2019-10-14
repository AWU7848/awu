#!/bin/sh
num=({a..z})
CHAR(){
for i in $(seq 10);do
    index=$[RANDOM%26]
    echo -n ${num[$index]}
done
}
[ -d "/qfedu" ]||mkdir /qfedu
for i in {1..10};do
	touch /qfedu/$(CHAR)
done
