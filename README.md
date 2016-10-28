# sys-perf-chart-tools
Scripts to measure and generate graphs for network, memory cpu and
load-avg of the system.

Prereq packages:
```
  dstat package
  gnuplot
```
How to run:

  To measure perf, run the following command:
```
  % ./generate-perf-graph.sh
```  

Run the above command for some period (2min - 2days) and once you
exit this process (you need to kill it), it generates 4 graphs in
png format.

###Examples

**Memory**

![alt tag](https://raw.githubusercontent.com/prbinu/sys-perf-chart-tools/master/examples/memory.png)

**Network**

![alt tag](https://raw.githubusercontent.com/prbinu/sys-perf-chart-tools/master/examples/network.png)

**CPU**

![alt tag](https://raw.githubusercontent.com/prbinu/sys-perf-chart-tools/master/examples/cpu.png)

**Load average**

![alt tag](https://raw.githubusercontent.com/prbinu/sys-perf-chart-tools/master/examples/loadavg.png)
