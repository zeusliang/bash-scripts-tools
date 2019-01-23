#!/bin/bash

#echo $1
apps="/usr/local/tomcat9/webapps/"
echo $apps$1
web_inf=$apps$1"/WEB-INF/"
classes=$web_inf"classes"
#exit 0
if test -d $apps$1
then
	echo "exist"
	exit 0
else
        mkdir  $apps$1
	mkdir $web_inf $classes
	echo " directory $1 is finished"
fi
