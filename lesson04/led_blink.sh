#!/bin/bash
echo "26" > /sys/class/gpio/export
echo "out" > /sys/class/gpio/gpio26/direction

while : 
do 
	echo "1" > /sys/class/gpio/gpio26/value
	sleep 1s
	echo "0" > /sys/class/gpio/gpio26/value
	sleep 1s
done

trap echo "26" > /sys/class/gpio/unexport
