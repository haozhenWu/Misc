#!/bin/bash
hadoop jar /usr/hdp/2.5.4.0-121/hadoop-mapreduce/hadoop-streaming.jar -files ./mapper.R -archives ./Rlibs.tar.gz#myRLibs -mapper ./mapper.R -reducer cat -input /hz_temp/input/number.csv -output /hz_temp/output 
