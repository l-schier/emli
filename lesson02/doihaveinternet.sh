#!/bin/bash

wget -q --spider http://google.com

if [ $? -eq 0 ]; then
	echo "yes"
else
	echo "no"
fi
