#!/bin/bash

CHARGE=$(cat /sys/class/power_supply/BAT1/capacity)
STATUS=$(cat /sys/class/power_supply/BAT1/status)

if [ "$STATUS" = "Charging" ]; then
	if (( CHARGE <= 10 )); then
		printf "󰢜"
	elif (( CHARGE <= 20 )); then
		printf "󰂆"
	elif (( CHARGE <= 30 )); then
		printf "󰂇"
	elif (( CHARGE <= 40 )); then
		printf "󰂈"
	elif (( CHARGE <= 50 )); then
		printf "󰢝"
	elif (( CHARGE <= 60 )); then
		printf "󰂉"
	elif (( CHARGE <= 70 )); then
		printf "󰢞"
	elif (( CHARGE <= 80 )); then
		printf "󰂊"
	elif (( CHARGE <= 90 )); then
		printf "󰂋"
	else
		printf "󰂄"
	fi
else
	if (( CHARGE <= 10 )); then
		printf "󰁺"
	elif (( CHARGE <= 20 )); then
		printf "󰁻"
	elif (( CHARGE <= 30 )); then
		printf "󰁼"
	elif (( CHARGE <= 40 )); then
		printf "󰁽"
	elif (( CHARGE <= 50 )); then
		printf "󰁾"
	elif (( CHARGE <= 60 )); then
		printf "󰁿"
	elif (( CHARGE <= 70 )); then
		printf "󰂀"
	elif (( CHARGE <= 80 )); then
		printf "󰂁"
	elif (( CHARGE <= 90 )); then
		printf "󰂂"
	else
		printf "󰁹"
	fi
fi
