#!/bin/sh


#This script monitors the process in which we need to pass the process name as a parameter eg:    sudo sh monitorProcess.sh apache2

SERVICE="$1"
RESULT=`ps -a | sed -n /${SERVICE}/p`

if [ "${RESULT:-null}" = null ]; then
    echo "not running"
else
    echo "running"
fi
