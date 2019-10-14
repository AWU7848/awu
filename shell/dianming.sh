#!/bin/sh
STA(){
	k=0;j=0
	for i in `cat name.txt|sed -n '2,$p'`;do
		name[j]=$i&&let j++
	done
}
while :;do
	num=$[RANDOM%7]
	if ! [ -z "${name[$num]}" ];then
		echo ${name[$num]}&&unset name[$num]
		read -p "请按任意键继续" var
	else
		let k--
	fi
	let k++
	[ "${#name[*]}" -eq 0 ]&&STA
done
