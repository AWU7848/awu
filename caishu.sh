#!/bin/bash
echo "猜一个1-100的整数:" 
num=$[$RANDOM%100+1]
for i in {0..5};do
    read -p "你还有$[6-i]次机会!请猜:" gnum
    [[ "$gnum" =~ [^0-9] || -z "$gnum" ]]&&echo "你浪费了一次机会，请输入数字"&&continue
	[ "$gnum" -gt "$num" ]&&echo "大了"
    [ "$gnum" -lt "$num" ]&&echo "小了"
    [ "$gnum" == "$num" ]&&echo "你赢了"&&exit
done
echo "机会已用完，你输了！正确答案为$num"
