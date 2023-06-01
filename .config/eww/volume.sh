#!/bin/bash
STATUS=$(amixer sget Master | tail -n1 | sed -r "s/.*\[(.*)\]/\1/")
VOL=$(amixer get Master | tail -n1 | sed -r "s/.*\[(.*)%\].*/\1/")
if [[ ! "$STATUS" = "off" && ! "$VOL" = "0" ]]; then
	if [ "$VOL" -le 33 ]; then
		printf "󰕿"
	elif [ "$VOL" -le 66 ]; then
		printf "󰖀"
	else
		printf "󰕾"
	fi
	printf "%2s" "$VOL"
fi
