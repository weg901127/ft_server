#!/bin/bash
docker build --tag gilee:0.1 .. > /dev/null 2>&1
if [ "${?}" = 0 ] ; then
	echo -e "\033[32;1m"BUILD COMPLETE"\033[m"
else
	echo -e "\033[31;1m"BUILD ERROR"\033[m"
	exit 0
fi
docker run --name first -d -p 80:80 -p 443:443 gilee:0.1 > /dev/null 2>&1
if [ "${?}" = 0 ]
then
	echo -e "\033[32;1m"NOW RUNNING"\033[m"
else
	echo -e "\033[31;1m"RUN ERROR"\033[m"
fi
echo -e "\033[33;1m"DOCKER PS"\033[m"
docker ps
echo -e "\033[33;1m"SERVICES"\033[m"
sleep 3
docker exec first service --status-all
