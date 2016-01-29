#!/bin/sh
killall hciattach 
killall hidd
killall bluetoothd

sleep 1

bluetooth_reset

bccmd -t BCSP -d /dev/ttyS3  psload -rs psram pskey.115200

hciattach  -n  -s 115200  ttyS3  bcsp  115200 &

sleep 5

hciconfig hci0 up

hidd -n -t 300 -i hci0 --nocheck --server & 

bluetoothd &

#/hdisk/bluez/sbin/btctld &
