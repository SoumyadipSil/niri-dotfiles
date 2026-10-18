#!/bin/sh

if niri msg outputs | awk '/\(eDP-1\)/ { getline; if ($1 == "Disabled") found=1 } END { exit !found }'; then
    niri msg output eDP-1 on
    niri msg output eDP-1 position set 1920 0
    niri msg output HDMI-A-1 position set 0 0
else
    niri msg output eDP-1 off
    niri msg output HDMI-A-1 position set 0 0
fi