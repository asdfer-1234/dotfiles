#!/bin/bash

CHARGE=$(cat /sys/class/power_supply/BAT1/capacity)
STATUS=$(cat /sys/class/power_supply/BAT1/status)

if [ "$STATUS" = "Charging" ]; then
	if (( CHARGE <= 12)); then
		printf ""
	elif (( CHARGE <= 25 )); then
		printf ""
	elif (( CHARGE <= 37 )); then
		printf ""
	elif (( CHARGE <= 50 )); then
		printf ""
	elif (( CHARGE <= 62 )); then
		printf ""
	elif (( CHARGE <= 75 )); then
		printf ""
	elif (( CHARGE <= 87 )); then
		printf ""
	else
		printf ""
	fi
else
	printf ""
fi
