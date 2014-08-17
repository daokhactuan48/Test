#!/bin/bash
ab -n 1000 -c 100 http://172.16.69.75/html/tam.html > /root/test.txt
#Bỏ các dòng request
#
echo -n -e "Server Hostname:\t \t\t" > /root/test1.txt
awk -F: '/Server Hostname/ {print $2;}' /root/test.txt >> /root/test1.txt

echo -n -e "Tong so request hoan thanh: \t     \t  " >>/root/test1.txt
awk -F: '/Complete requests/ {print $2;}' /root/test.txt >>/root/test1.txt

echo -n -e "Request dong thoi:\t \t     \t  " >> /root/test1.txt
awk -F: '/Concurrency Level/ {print $2;}' /root/test.txt >> /root/test1.txt

echo -n -e "Request That bai:\t \t   \t" >> /root/test1.txt
awk -F: '/Failed requests/ {print $2;}' /root/test.txt >> /root/test1.txt

echo -n -e "Thoi gian hoang thanh qua trinh test:\t     " >> /root/test1.txt
awk -F: '/Time taken for tests/ {print $2;}' /root/test.txt >> /root/test1.txt

echo -n -e "Tong so byte nhan tu server: \t     \t  " >>/root/test1.txt
awk -F: '/Total transferred/ {print $2}' /root/test.txt >>/root/test1.txt

echo -n -e "Tong so byte cua document: \t    \t " >>/root/test1.txt
awk -F: '/HTML transferred/ {print $2}' /root/test.txt >>/root/test1.txt

echo -n -e "Tong so byte cua document:\t \t   \t" >> /root/test1.txt
awk -F: '/Document Length/ {print $2;}' /root/test.txt >> /root/test1.txt

echo -n -e "So request server xu ly trong 1s:\t   \t" >> /root/test1.txt
awk -F: '/Requests per second/ {print $2;} ' /root/test.txt | awk '{print $1}'>> /root/test1.txt

echo -n -e "Thoi gian xu ly 1 request (ms):  \t" >> /root/test1.txt
awk -F":" '/Time per request/ {print $2}' /root/test.txt | awk '$4 ~ "across" {print $1}' >>/root/test1.txt

echo -n -e "Toc do truyen tai:\t \t \t   \t" >> /root/test1.txt
awk -F":" '/Transfer rate/ {print $2}' /root/test.txt | awk ' {print $1,$2}' >>/root/test1.txt

cat /root/test1.txt
