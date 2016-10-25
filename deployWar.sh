
# Bash Script to deploy war file onto tomcat

TOMCATLOC="apache-tomcat-6"    # path of tomcat directory
WAR_FILE=$1                     # argument that has to contain war file.

#validating parameters
if [ $# -ne 1 ] ; then
        echo "Illegal Number of parameters.  You should run script as <scriptname> <path/warfile.war>"
        exit 1
fi

#checking whether user has write permissions
if [ ! -w $TOMCATLOC -o ! -w $TOMCATLOC/webapps ]; then
    echo "$TOMCATLOC and $TOMCATLOC/webapps should have write permissions" 1>&2
    exit 1
fi

# installing war into tomcat webapps
if [ ! -r $WAR_FILE ]; then
    echo "$WAR_FILE could not be found. Check the war file location and try again." 1>&2
else
    cp $WAR_FILE $TOMCAT_WEBAPPS
fi

#Starting tomcat after deploying the war
sh $TOMCATLOC/bin/startup.sh
