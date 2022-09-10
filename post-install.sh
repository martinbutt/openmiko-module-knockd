#!/bin/sh

echo "Running post install for knockd"
ln -s /usr/lib/libpcap.so.1.7.4 /usr/lib/libpcap.so
ln -s /usr/lib/libpcap.so.1.7.4 /usr/lib/libpcap.so.1
echo "Uninstall complete"

