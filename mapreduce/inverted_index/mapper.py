#!/usr/bin/python

import sys
import re

pattern = '\["(.*?)", \"\[(.*?)"\]'
# input comes from STDIN (standard input)
for line in sys.stdin:
    # mathc regular expression
    match =  re.match(pattern,line)
    key = match.group(1)
    value = match.group(2)
  
    # split the line into words
    words = value.split()
    # increase counters
    for word in words:
        # write the results to STDOUT (standard output);
        # what we output here will be the input for the
        # Reduce step, i.e. the input for reducer.py
        #
        # tab-delimited; the trivial word count is 1
        print '%s\t%s' % (word, key)
