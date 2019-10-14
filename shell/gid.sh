#!/bin/sh
[ "$1" == "--help" -o "$1" == "-h" ] && echo "Usage: gid [group]" && exit
group_curr=$(id -gn)
group_r=${1:-$group_curr}
! grep "^$group_r\>" /etc/group &>/dev/null && echo "No such group" && exit
for user in $(awk -F: '{print $1}' /etc/passwd);do
	group=$(id -gn $user)
	if [ "$group" == "$group_r" ];then
		mem_p="$mem_p,$user(p)"
	fi
done
mem_s=$(awk -F: '/^'"$group_r"':/{print $4}' /etc/group)
group_id=$(awk -F: '/^'"$group_r"':/{print $3}' /etc/group)
members=$(echo $mem_p,$mem_s | sed -r 's/^,|,$//g')
echo "Group: $group_r"
echo "GroupID: $group_id"
echo "Members: $members"
