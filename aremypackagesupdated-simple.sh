#!/bin/bash
sudo apt update | grep "All packages are up to date.";

if [ $? -eq 0 ]; then
	echo "yes"
else
	echo "no"
fi
