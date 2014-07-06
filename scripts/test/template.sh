#!/bin/bash
#Program
#
#History
#
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

#read -p "Please input host ip: " -t 5  host_ip_tmp
#host_ip=${host_ip_tmp:-59.66.132.144}
#echo $host_ip

#test ! {"$1" = "-n" -o "$1" = "-a" -o "$1" = "-s"} && echo "wrong argument!" && exit 1 
#echo "This is my info:"
#[ "$1" == "-n" ] && echo "My name is Xu Jianlin."
#[ "$1" == "-a" ] && echo "I'm 20 years old."
#[ "$1" == "-s" ] && echo "I'm a boy."

#if [ "$1" == "-n" ]; then
#	echo "My name is Xu Jianlin."
#elif [ "$1" == "-a" ]; then
#	echo "I'm 20 years old."
#elif [ "$1" == "-s" ]; then
#	echo "I'm a boy."
#else
#	echo "Losing parameter! Usage : -nas."
#fi

case $1 in
	"-n")
		echo "My name is Xu Jianlin."
		;;
	"-a")
		echo "I'm 20 years old."
		;;
	"-s")
		echo "I'm a boy."
		;;
	*)
		echo "Wrong argument! Usage "$0" {-n -a -s}"
		;;
esac
exit 0

