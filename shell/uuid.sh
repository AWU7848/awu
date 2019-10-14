#!/bin/sh
num=({0..9} {a..f})
CHAR(){
for i in $(seq $1);do
	index=$[RANDOM%16]
	echo -n ${num[$index]}
done
}
case "$1" in
uuid)echo $(CHAR 8)-$(CHAR 4)-$(CHAR 4)-$(CHAR 4)-$(CHAR 12);;
mac)echo $(CHAR 2):$(CHAR 2):$(CHAR 2):$(CHAR 2):$(CHAR 2):$(CHAR 2);;
*)echo "请接uuid|mac" ;;
esac
