#!/bin/bash
#
# Copyright (c) 2016, Yahoo Inc.
# Copyrights licensed under the New BSD License. See the
# accompanying LICENSE.txt file for terms.
#
# This script runs 'x' period of time and generate cpu, network, load avg and 
# memory charts using gnuplot
#
# Modified version of:
# http://www.linuxuser.co.uk/tutorials/create-a-graph-of-your-systems-performance/1
#
# Usage: 
# % generate-perf-graph.sh <time-interval> 
# Run in background mode:
# % nohup generate-perf-graph.sh <time-interval> &

rm dstat.dat
time=$1
if [ -z "$time" ]
then 
    #dstat -tcmnl > dstat.dat
    dstat -tcm  --net-packets -l --output dstat.dat
else
    dstat -tcm  --net-packets -l "${time}" --output dstat.dat
fi

tail -n+8 dstat.dat > stat.dat

./network.sh
./cpu.sh
./memory.sh
./load.sh
