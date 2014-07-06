#!/bin/bash
#Program
#
#History
#
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

iplist=`cat ip.list`
for netnum in $(seq 1 100)
do
	echo "ping -s 65507 59.66.132.144 &" >> ping.ping
done
chmod +x ping.ping
exit 0
