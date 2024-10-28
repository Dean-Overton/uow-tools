#!/usr/bin/env python3

import sys

for line in sys.stdin:
    line = line.strip() 
    items = line.split()
    
    item_name, ppu, total_units = items[0], float(items[1]), int(items[2])
    
    total_value = ppu * total_units
    
    print(f"{item_name}\t{total_value}")