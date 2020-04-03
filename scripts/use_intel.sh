#!/bin/sh

cp ~/.xinitrc_intel ~/.xinitrc

sudo sh -c 'rm /etc/X11/xorg.conf'
sudo systemctl restart nodm
