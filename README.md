# sys-perf-charts-tool
Scripts to measure and generate graphs for network, memory cpu and
load-avg of the system.

Prereq packages:

  dstat package
  gnuplot

How to run:

  To measure perf, run the following command:
  % ./generate-perf-graph.sh
  

Run the above command for some period (2min - 2days) and once you
exit this process (you need to kill it), it generates 4 graphs in
png format.
