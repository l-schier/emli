#!/bin/bash

RESP=$(curl -s "https://kjen.dk/courses/emli/co2/")

echo $RESP | jq ".[].co2" | tr '\n' ',' | sed 's/,$//' | ./termplot.py

