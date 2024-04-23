#!/bin/bash

temp=$(($(cat /sys/class/thermal/thermal_zone0/temp) / 1000))

while : 
do
	mosquitto_pub -h localhost -p 1883 -u g6 -P letmein -t g6/temp -m $temp
	sleep 15
done
