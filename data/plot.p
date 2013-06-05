set terminal postscript eps enhanced mono font 'Helvetica,10'
set output 'out64.eps'
set ylabel "number of packet drops"
set xlabel "test duration in seconds"
plot "./shm64_100" using 2 title "packet drop with modified Open vswitch + Cassandra" with lp, \
"./ntop64_100" using 2 title "packet drop with ntop + RRDTool" with lp, \
"./ntop_cassa64_100" using 2 title "packet drop ntop + Cassandra" with lp
