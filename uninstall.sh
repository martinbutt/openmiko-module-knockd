#!/bin/sh

echo "Uninstalling knockd"

rm -f /usr/bin/knockd
rm -f /etc/init.d/S99knockd
rm -f /etc/default/knockd
rm -f /usr/lib/libpcap.so
rm -f /usr/lib/libpcap.so.1
rm -f /usr/lib/libpcap.so.1.7.4

echo "Uninstall complete"
