#!/bin/bash
mkdir /root/iperf
cd /root/iperf
iperf -c 172.16.69.75 -u -b 300m  -t 86400 -i 300 > /root/iperf/`date +"%d%m%y-%H%M%S"`-kq.txt
