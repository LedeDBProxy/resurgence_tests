#!/bin/bash

if [ "$1" == "start" ]; then
    ARG="start"
elif [ "$1" == "stop" ]; then
    ARG="stop"
else
    echo "Wrong arguments. Exit"
    exit 1
fi

/usr/bin/ssh -t -p8822 $2 "sudo mysqld_multi --defaults-extra-file=/etc/my_multi.cnf $ARG 2 && sleep 1" > /dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "Error! Please check 'base/t/pooling_backend_down_stop_service.sh' script to fix."
    echo "e.g.: set 'mysqld_multi' command to sudo file on $2"
    exit 2
fi
