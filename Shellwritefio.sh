#!/bin/bash
cd /root/fio/write
wget https://raw.githubusercontent.com/daokhactuan48/Test/master/Write.fio
fio Read.fio >> /root/fio/write/`date +"%d%m%y-%H%M%S"`-kq.txt
