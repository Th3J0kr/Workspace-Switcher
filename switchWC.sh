#!/bin/bash

if [ $( wmctrl -d | grep \* | awk '{print $1 +1}') -gt 2 ];then
	wmctrl -s 0
else
	wmctrl -s $( wmctrl -d | grep \* | awk '{print $1 +1}')
fi

