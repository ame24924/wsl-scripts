#!/bin/bash
#sudo service x11-common start && sudo service dbus start
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0.0
/mnt/c/Program\ Files/VcXsrv/vcxsrv.exe :0 -ac -keyhook&
#XDG_CURRENT_DESKTOP=ubuntu:GNOME 
#XDG_SESSION_TYPE=x11 gnome-session
gnome-shell --x11 -r
