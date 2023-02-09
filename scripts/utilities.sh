#!/bin/bash

echo -n "Arguments: "
for arg in ${BASH_ARGV[*]}; 
do
    echo -n "$arg "
done
echo

# Parameters: compile
if [ "$1" = "compile" ];
then
	echo  Compiling Kernel
	cd backports-5.3.6-1/
	modprobe -r ath9k
	make defconfig-ath9k
	make menuconfig 
	make && make install
	modprobe ath9k
	cd ~
fi


# Parameters: AP $IP
if [ "$1" = "AP" ];
then 
	echo Creating Access Point at 192.168.2.$2

	MODULE="ath9k"

	if lsmod | grep "$MODULE" &> /dev/null; 
	then
		echo "Module $MODULE is Already Loaded"
	else
	  	echo "Module $MODULE is Being Loaded"
    		modprobe ath9k
	fi    
	
	ifconfig wlan0 192.168.2.$2 up	
	hostapd -dd hostap.conf
fi


# Parameters: STA $IP $AP
if [ "$1" = "STA" ];
then 
	echo Creating Station at 192.168.2.$2

	MODULE="ath9k"

	if lsmod | grep "$MODULE" &> /dev/null; 
	then
		echo "Module $MODULE is Already Loaded"
	else
	  	echo "Module $MODULE is Being Loaded"
    		modprobe ath9k
	fi    
	
	ifconfig wlan0 192.168.2.$2 up	
	
	echo Connecting Station "(192.168.2.$2)" to Access Point "($3)"
	iw dev wlan0 connect $3
fi


# Parameters: LISTEN
if [ $1 = "LISTEN" ];
then
	iperf -s -u -p 5004 -i 1

fi 


# Parameters: CONNECT $IP $BW
if [ $1 = "CONNECT" ];
then
	iperf -u -c 192.168.2.$2 -b $3M -p 5004 -t 15 -i 1

fi 









