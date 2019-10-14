#!/bin/sh
#学生管理系统
cho=1
add(){
	printf "Please enter ID："
	read id
	printf "Please enter name："
	read name
	echo -e  "ID:$id\t\tNAME:$name" >> /test/stu.txt
}
del(){
	printf "Please enter the ID for del:"
	read del
	sed -i "/ID:$del/d" /test/stu.txt
}
search(){
	printf "Please enter the ID for search:"
        read sea
        sed -n "/ID:$sea/p" /test/stu.txt
}
Display(){
	cat /test/stu.txt
}
clear
printf "\n\n\n\n\n\n\n\n"
printf "\t\t\t\t〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓\n\n"
printf "\t\t\t\t\t欢迎登陆学生信息管理系统\n\n"
printf "\t\t\t\t〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓〓\n\n"
printf "\t\t\t\t\t页面将在3秒后跳转……"
sleep 3
while [ $cho -gt 0 ]
do
	clear
	printf "\n\n\n"
	printf "\t-----------------------\n"
	printf "\t-----   1.add     -----\n"
	printf "\t-----   2.del     -----\n"
	printf "\t-----   3.search  -----\n"
	printf "\t-----   4.Display -----\n"
	printf "\t-----   5.exit    -----\n"
	printf "\t-----------------------\n"
	printf "\nPlease choose\n"
	read cho
	cho=$cho
	case $cho in
		1)add
		read -p "Press any key to continue" var
		;;
		2)del
		read -p "Press any key to continue" var
		;;
		3)search
		read -p "Press any key to continue" var
		;;
		4)Display
		read -p "Press any key to continue" var
		;;
		5)exit
		;;
		*)
		;;
	esac
done
