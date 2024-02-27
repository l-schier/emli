#!/bin/bash
while :
do
	RpiLight=$(python3 /home/g6/emli/lesson04/read_mcp3008.py)

	curl -X POST https://api.thingspeak.com/update \
		-d "api_key=ENEZCBVB9BAR6WF2&field1=$RpiLight"
	sleep 1m
done
