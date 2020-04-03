#!/bin/sh

set -e

rm ~/.xinitrc
cp ~/.xinitrc_nvidia ~/.xinitrc

sudo sh -c 'cp /etc/X11/xorg.conf.nvidia /etc/X11/xorg.conf'
sudo systemctl restart nodm
