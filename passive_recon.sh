#!/bin/bash

#MY PASSIVE RECON AUTOMATION FOR HACKING
figlet PASSIVE RECON


read -p "Enter Host: " name

sleep 1
echo "================================================"
echo "WHOIS:"
echo "================================================"
whois ${name} | head -n 18
sleep 1
echo

echo "================================================"
echo "NSLOOKUP:"
echo "================================================"
nslookup -type=A  ${name} 8.8.8.8
sleep 1

echo
echo "================================================"
echo "DIG:"
echo "================================================"
dig ${name} CNAME

echo
echo "================================================"
echo "WAWWOOF:"
echo "================================================"
wafw00f ${name}


echo
echo "================================================"
echo "LOAD BALANCING DETECTOR:"
echo "================================================"
lbd ${name}