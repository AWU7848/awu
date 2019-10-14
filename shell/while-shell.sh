#!/bin/sh
declare -A count
while read line;do
	shell=$(awk -F: '{print $7}' <<< $line)
	let count[$shell]++
done < /etc/passwd
for i in ${!count[@]};do
	echo "${count[$i]} $i"
done|sort -nr
	echo "${count[*]}"
	echo "${count[@]}"
