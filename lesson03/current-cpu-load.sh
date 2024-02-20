#!/bin/bash
echo $(top -bn1 | awk '/Cpu/{print 100-$8}')'%'
