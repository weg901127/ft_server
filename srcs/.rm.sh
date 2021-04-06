#!/bin/bash
docker stop first > /dev/null 2>&1
if [ "${?}" = 0 ] ; then
	echo -e "\033[32;1m"STOP CONTAINER COMPLETE"\033[m"
else
	echo -e "\033[31;1m"STOP ERROR"\033[m"
fi
docker rm first > /dev/null 2>&1
if [ "${?}" = 0 ] ; then
	echo -e "\033[32;1m"RM CONTAINER COMPLETE"\033[m"
else
	echo -e "\033[31;1m"RM ERROR"\033[m"
fi
docker rmi gilee:0.1 > /dev/null 2>&1
if [ "${?}" = 0 ] ; then
	echo -e "\033[32;1m"RMI COMPLETE"\033[m"
else
	echo -e "\033[31;1m"RMI ERROR"\033[m"
	${?} = 1 > /dev/null 2>&1
fi
if [ "${?}" = 0 ] ; then
	echo -e "\033[32;1m"ALL DONE"\033[m"
fi
docker images
