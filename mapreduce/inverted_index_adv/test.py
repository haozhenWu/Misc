import sys
import json

for line in sys.stdin:
     record = json.loads(line)
     print record[0]
     
    
   
     print "Another \t"

     print record[1]
