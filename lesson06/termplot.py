#!/usr/bin/env python3

import uniplot
import sys

for line in sys.stdin:
	lst = line.rstrip().split(",")

lst_num = list(map(float, lst))

uniplot.plot(lst_num, lines=True, title="CO2 level (PPM)")
