#!/bin/bash


dbus-daemon --config-file=/usr/share/dbus-1/system.conf --print-address
#Xvfb :0 -screen 0 1920x1200x24+32 &
#x11vnc -display :0.0 -forever -xkb -rfbport 5900 &
/usr/bin/vncserver -xstartup Xvfb :0 -rfbport 5900 -SecurityTypes None &
DISPLAY=:0 python3 imageGen.py