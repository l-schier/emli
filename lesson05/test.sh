#!/bin/bash

# Define the log file
LOG_FILE="/var/www/html/log.txt"

# Read the last 60 lines of the log file and extract the last element of each line
LAST_60_VALUES=$(tail -n 60 "$LOG_FILE" | awk '{print $NF}')

# Create a comma-separated list
LIST=$(echo "$LAST_60_VALUES" | tr '\n' ',' | sed 's/,$//')

# Pass the comma-separated list to thing.py
echo "$LIST" | python3 shellplot.py
