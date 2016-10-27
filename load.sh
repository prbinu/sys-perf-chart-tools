#!/usr/bin/gnuplot

# Copyright (c) 2016, Yahoo Inc.
# Copyrights licensed under the New BSD License. See the
# accompanying LICENSE.txt file for terms.

set terminal png
set output "loadavg.png"
set title "loadavg (`grep 'model name' /proc/cpuinfo | wc -l` cores)"
set xlabel "time"
set ylabel "percent"
set xdata time
set timefmt "%d-%m %H:%M:%S"
set format x "%M:%S"
set datafile separator ","
plot "stat.dat" using 1:14 title "1-min" with lines, \
"stat.dat" using 1:15 title "5-min" with lines, \
"stat.dat" using 1:16 title "15-min" with lines
