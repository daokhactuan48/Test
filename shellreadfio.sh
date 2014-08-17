#!/bin/bash
apt-get install fio
mkdir /root/fio
cd /root/fio
wget https://raw.githubusercontent.com/daokhactuan48/Test/master/Read.fio
fio Read.fio >> /root/fio/`date +"%d%m%y-%H%M%S"`-kq.txt
