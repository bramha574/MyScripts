#!/bin/sh


#This script monitors the process in which we need to pass the process name as a parameter eg:    sudo sh monitorProcess.sh apache2

#!/bin/sh

PROCESS="$1"
PROCANDARGS=$*

    RESULT=`pgrep ${PROCESS}`

    if [ "${RESULT:-null}" = null ]; then
            echo "${PROCESS} not running, starting "$PROCANDARGS
            $PROCANDARGS &
    else
            echo "running"
    fi

