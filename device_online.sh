#!/bin/sh
file=/tmp/k3screenctrl/device_online
pid_file=/var/run/device_online.sh.pid
[ -f $pid_file ] && kill $(cat $pid_file) >/dev/null 2>&1
echo $$ > $pid_file
rm -f $file
# device_list=$(grep -w br-lan /proc/net/arp | grep -w 192.168 | awk '{print $1}')
device_list=$(cat $(uci get dhcp.@dnsmasq[0].leasefile) | awk '{print $3}')
for device in $device_list
do
    echo "$device 0" >> $file
done
for device in $device_list
do
    arping -I br-lan -f -w 3 -q $device
    sed -i 's/'$device' 0/'$device' '$?'/' $file
done
rm $pid_file