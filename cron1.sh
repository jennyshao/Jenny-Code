#!/bin/sh

rq=`date +%Y-%m-%d`
fname=iperf$rq
touch $fname.txt
echo "This is result for ucsd perfsonar box  85 host $rq">iperf$rq.txt
echo " "

for ((i=1;i<10;i++))
do
rq1=`date +%H:%M:%S`
echo "@@@@@This is the $i testing@@@@@">>$fname.txt
echo $rq1>>$fname.txt
iperf -c 169.228.130.85 -P 1 -d -i 10 -f m -t 30 >>$fname.txt
echo " "
sleep 30
done
~      
