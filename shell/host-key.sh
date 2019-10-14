#!/bin/sh
num=$(cat /data/host.txt|wc -l)
for i in $(seq $num);do
	IP=$(awk 'NR=='$i'{print $1}' /data/host.txt)
	PASS=$(awk 'NR=='$i'{print $2}' /data/host.txt)
	if ping -c 1 -w 2 $IP &> /dev/null ;then	
		expect <<-eof
		spawn ssh-copy-id root@$IP
		expect {
    		"continue connecting (yes/no)?" { send "\n"; exp_continue }
			"password:" { send "$PASS\n" }
		}	
		expect eof
		eof
	fi	
done
