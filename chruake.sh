#!/bin/bash

WID=`xdotool search "Google Chrome" | head -1`
echo $WID

if [ -z "$WID" ]; then
	google-chrome
else
	ACTIVE=`xdotool getactivewindow`
	if [ "$WID" -eq "$ACTIVE" ]; then
		xdotool windowminimize --sync $WID
	else
		xdotool windowactivate --sync $WID
	fi
fi
