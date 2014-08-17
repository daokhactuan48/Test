#!/bin/bash
cd /root/fio/read
wget https://raw.githubusercontent.com/daokhactuan48/Test/master/Read.fio
fio Read.fio >> /root/fio/read/`date +"%d%m%y-%H%M%S"`-kq.txt
