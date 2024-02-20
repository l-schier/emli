#!/bin/bash

free=$(free -m | awk '/Mem/{print $4}')
total=$(free -m | awk '/Mem/{print $2}')
echo $(bc <<< "scale = 1; ($free / $total) * 100")'%'
