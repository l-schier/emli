#!/bin/bash
df --total -hl | grep "total" | awk '{print $5}'
