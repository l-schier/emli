#!/bin/bash

count=0
while :
do
	if [ $(sudo bash /home/g6/emli/lesson04/read_switch.sh) == 1 ]; then
		((count++)) 
		if (($count > 2)); then
			sudo shutdown now
		fi
	else
		count=0
	fi
	sleep 1s
done
