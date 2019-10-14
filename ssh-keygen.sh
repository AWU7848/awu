#!/bin/bash
[ -x /usr/bin/expect ] || yum install expect -y
host=192.168.236.131
user=root
pass=1
expect << eof
spawn ssh-keygen
expect ".ssh/id_rsa):"
send "\n"
expect {
	"(empty for no passphrase):" {
		send "\n"
		expect "same passphrase again:"
		send "\n"
	}
	"Overwrite (y/n)?" { send "n\n" }
}
spawn ssh-copy-id $user@$host
expect {
	"continue connecting (yes/no)?" { send "\n"; exp_continue }
	"password:" { send "$pass\n" }
}
expect eof
eof

