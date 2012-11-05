#!/bin/bash
# .xsession

# Remove the obnoxiously pretty purple Ubuntu background.
xsetroot -solid midnightblue

# Start a screensaver
gnome-screensaver &

# Make wireless networks available
nm-applet --sm-disable &

# Remap CapsLock to Control
xmodmap ~/.Xmodmap

# Remap to Colemak keyboard layout


xmonad
