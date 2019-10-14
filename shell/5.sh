#!/bin/sh
#设置tom用户登录后可以使用命令hello,效果是输出"Hello,tom"
for i in {1..32};do
    a=$[ 2**$i ]
    echo "2的$i次方是$a"
done
