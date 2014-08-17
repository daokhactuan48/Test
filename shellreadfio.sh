#!/bin/bash
apt-get install fio
mkdir /root/fio
mkdir /root/fio/read
cd /root/fio/read
wget https://raw.githubusercontent.com/daokhactuan48/Test/master/Read.fio
fio Read.fio >> /root/fio/read/`date +"%d%m%y-%H%M%S"`-kq.txt
