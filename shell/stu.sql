#!/bin/sh
sex=(male female)
for i in {1..100};do
	num=$[RANDOM%2]
	mysql -uroot -p123 -D qfedu -e "insert into stu values ($i,'user$i','${sex[$num]}');"
	mysql -uroot -p123 -D qfedu -e "insert into score values ($i,$[RANDOM%51+50],$[RANDOM%51+50],$[RANDOM%51+50]);"
done
