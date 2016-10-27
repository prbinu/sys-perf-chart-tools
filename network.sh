#!/usr/bin/gnuplot

# Copyright (c) 2016, Yahoo Inc.
# Copyrights licensed under the New BSD License. See the
# accompanying LICENSE.txt file for terms.

set terminal png
set output "network.png"
set title "network"
set xlabel "time"
set ylabel "packets"
set xdata time
set timefmt "%d-%m %H:%M:%S"
set format x "%M:%S"
set datafile separator ","
plot "stat.dat" using 1:12 title "recv" with lines, \
"stat.dat" using 1:13 title "send" with lines
