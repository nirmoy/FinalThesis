set terminal postscript eps enhanced mono font 'Helvetica,10'
set output 'peaknetperf.eps'
set ylabel "number of NetFlow packets/second"
set xlabel "number of netperf client"
plot "./peak_netperf" using 1:3 title "bidirectional flows with 5 VM" with lp, \
"./peak_netperf_uni" using 1:3 title "unidirectional flows with 5 VM" with lp
