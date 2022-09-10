# Openmiko Knockd Module

This module installs `knockd` to allow you to hide SSH and other services until you need them.

You will need to add `knockd.conf` file to your SD card's `/config/overlay/etc/`.

Here is an example config that stops the SSH service.
```
[options]
        UseSyslog

[openSSH]
        sequence    = 7000,8000,9000
        seq_timeout = 5
        command     = /etc/init.d/S50dropbear start
        tcpflags    = syn

[closeSSH]
        sequence    = 9000,8000,7000
        seq_timeout = 5
        command     = /etc/init.d/S50dropbear stop
        tcpflags    = syn
```
