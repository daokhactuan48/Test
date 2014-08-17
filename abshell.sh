#!/bin/bash
mkdir /root/kq
ab -n 1000 -c 100 http://172.16.69.41/ >> /root/kq/`date +"%d%m%y-%H%M%S"`-kq.txt
