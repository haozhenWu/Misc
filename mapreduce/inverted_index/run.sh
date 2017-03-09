#!/bin/bash
hadoop jar /usr/hdp/2.5.4.0-121/hadoop-mapreduce/hadoop-streaming.jar -file ./mapper.py -mapper ./mapper.py -file ./reducer.py -reducer ./reducer.py -input /hz_temp/input/books.json -output /hz_temp/output 
