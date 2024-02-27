#!/bin/bash

while :
do
	RpiLight=$(python3 /home/g6/emli/lesson04/read_mcp3008.py)
	python3 /home/g6/emli/lesson04/servo_control.py $RpiLight
	sleep 1s
done
