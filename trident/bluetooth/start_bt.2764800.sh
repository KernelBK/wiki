#!/bin/sh
killall hciattach 
killall hidd
killall bluetoothd

sleep 1

bluetooth_reset

bccmd -t BCSP -d /dev/ttyS3  psload -rs psram pskey.2764800

hciattach  -n  -s 2500000  ttyS3  bcsp  2500000 &

sleep 5

hciconfig hci0 up

hidd -n -t 300 -i hci0 --nocheck --server & 

bluetoothd &

#/hdisk/bluez/sbin/btctld &
