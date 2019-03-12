#!/usr/bin/env bash
#$1 pgrep budgie-wm
if [[ $(pgrep deepin-wm ) > 0 ]]; then
  #sleep 3 &
  #killall variety &
  conky -c ~/.config/conky/russ.conkyrc  &
elif [[ $(pgrep gnome-shell) > 0 ]]; then
  #sleep 3 &
  gnome-pie &
  gnome-screensaver &
elif [[ $(pgrep budgie-wm ) > 0 ]] ; then
  #sleep 3 &
  variety &  
fi
