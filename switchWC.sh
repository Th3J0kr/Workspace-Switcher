#!/bin/bash

############################
#Chage this for your needs #
############################
                           #
WORKSPACE_COUNT=3          # 
                           #
############################
# Don't change below here  #
#########################################

actual_count=`expr $WORKSPACE_COUNT - 1`

if [ $( wmctrl -d | grep \* | awk '{print $1 +1}') -gt $actual_count ];then
	wmctrl -s 0
else
	wmctrl -s $( wmctrl -d | grep \* | awk '{print $1 +1}')
fi

