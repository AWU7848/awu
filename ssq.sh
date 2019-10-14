#!/bin/sh
red=()
while [ ${#red[@]} -lt 6 ];do
	num=$[RANDOM%33+1]
	flag=0
	for i in ${!red[*]};do
		[ "${red[$i]}" == $num ]&&flag=1&&break
	done
	[ $flag == 0 ]&&red[$j]=$num&&let j++
done
blue=$[RANDOM%16+1]
echo -e "开奖结果:\e[31m${red[*]}\e[0m+\e[34m$blue\e[0m"
