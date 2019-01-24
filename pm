#!/bin/bash

# foreach all sources files put it to array
function files_list(){
    a=()
    i=0
    for file in `ls $1`
    do
	if test -d $1"/"$file 
	  then
		  files_list $1"/"$file
	  else
		  a[$i]=$1"/"$file
		  echo ${a[$i]}"f"
		  ((i++));
        fi
	echo "arr count: ${#a[@]}"
    done
}

function auto_compile(){
   # accept a variable of project name
   pro_name = $1
   # foreach all sources files put it to array

   # if sources files is exist and not compile just compile
   # if is compiled , but time out also re-comoile 
}

function mkpro(){
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
}

files_list $1
