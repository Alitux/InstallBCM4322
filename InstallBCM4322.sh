#!/bin/bash
echo "deb http://http.debian.net/debian/ wheezy main contrib non-free" >> /etc/apt/sources.list
apt-get update
apt-get -y install linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') broadcom-sta-dkms
modprobe -r b44 b43 b43legacy ssb brcmsma
modprobe wl
echo "Todo deberia funcionar... Suerte"
