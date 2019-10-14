#!/bin/sh
red=({1..33})
while :;do
	index=$[RANDOM%33]
	[ -n "${red[index]}" ]&& echo -e -n "\e[031m${red[index]}\e[0m "&&unset red[$index]
	[ ${#red[*]} -eq 27 ]&&break
done
echo -e -n "+\e[034m$[RANDOM%16+1]\e[0m"
echo
