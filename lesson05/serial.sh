#!/bin/bash

# Define the serial device
SERIAL_DEVICE="/dev/ttyACM0"

# Prompt the user to input an angle
read -p "Enter the angle: " ANGLE

# Send the angle over the serial connection
echo "$ANGLE" > "$SERIAL_DEVICE"
