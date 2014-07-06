#!/bin/bash
#Program
#
#History
#
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

server=59.66.132
for netnum in $(seq 1 254)
do
#	echo ${server}.${netnum}
	ping -c 1 -w 1 ${server}.${netnum} > /dev/null && result=1 || result=0
	if [ "$result" == "1" ]; then
		echo "${server}.${netnum}" | tee -a ip.list
	fi
done
