#!/usr/bin/gnuplot

# Copyright (c) 2016, Yahoo Inc.
# Copyrights licensed under the New BSD License. See the
# accompanying LICENSE.txt file for terms.

set terminal png
set output "cpu.png"
set title "CPU usage"
set xlabel "time"
set ylabel "percent"
set xdata time
set timefmt "%d-%m %H:%M:%S"
set format x "%M:%S"
set datafile separator ","
plot "stat.dat" using 1:3 title "system" with lines, \
"stat.dat" using 1:2 title "user" with lines, \
"stat.dat" using 1:4 title "idle" with lines
