#!/bin/bash

IFS=';' read up sec_up < <(/usr/lib/update-notifier/apt-check 2>&1)

if [ $up == 0 ]; then
	if [ $sec_up == 0 ]; then
		echo "yes"
	else
		echo "no"
	fi
else
	echo "no"
fi
