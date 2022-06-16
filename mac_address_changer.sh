#!/bin/bash 

###THIS SCRIPT CHANGES YOUR MAC ADDRESS IN LINUX

#ENSURE YOU HAVE ROOT PRIVILEDGES

figlet "MY MAC ADDRESS CHANGER" | lolcat


 #THIS COMMAND DISPLAYS YOUR CURRENT MAC ADDRESS AND IP NUMBER 
 echo
echo "[X] Changing Mac Address..." | lolcat
sleep 1
ifconfig eth0 down #THIS COMMAND BRINGS YOUR ETH0 DOWN FOR MANIPULATION
macchanger -r eth0 #THIS COMMAND CHANGES YOUR MAC ADDRESS TO A RANDOM MAC ADDRESS
sleep 1
ifconfig eth0 up
sleep 1
echo "[X] Mac Address Changed Successfully!" | lolcat
