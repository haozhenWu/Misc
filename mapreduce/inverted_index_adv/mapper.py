#!/usr/bin/python

import sys
import json

for line in sys.stdin:
    record = json.loads(line)
    key = record[0]
    value = record[1]
   
    words = value.split()
    for word in words:

        print '%s\t%s' % (word, key)

























