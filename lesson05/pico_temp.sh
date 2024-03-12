#!/bin/bash

DEVICE="/dev/ttyACM0"

read -r MESSAGE < "$DEVICE"

echo $MESSAGE
