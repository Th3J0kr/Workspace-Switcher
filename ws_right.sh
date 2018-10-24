wmctrl -s $( wmctrl -d | grep \* | awk '{print $1 +1}')
