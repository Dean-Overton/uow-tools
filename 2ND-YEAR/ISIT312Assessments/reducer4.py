#!/usr/bin/env python3
from itertools import groupby
from operator import itemgetter

import sys


def read_mapper_output(file, separator='\t'):
    for line in file:
        yield line.rstrip().split(separator, 1)


def main(separator='\t'):
    data = read_mapper_output(sys.stdin, separator=separator)
    for current_item, group in groupby(data, itemgetter(0)):
        try:
            total_item_value = sum([float(item_value)
                                   for current_item, item_value in group])
            print(f"{current_item}\t{separator}\t{total_item_value}")
        except ValueError:
            pass


if __name__ == "__main__":
    main()
