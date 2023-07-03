#!/bin/bash
VOLUME=$(amixer get Master | tail -n1 | sed -r "s/.*\[(.*)%\].*/\1/")
STATUS=$(amixer sget Master | tail -n1 | sed -r "s/.*\[(.*)\]/\1/")


if [ "$STATUS" = 'off' ]; then
	printf ""
elif (( VOLUME == 0)); then
	printf ""
else
	printf ${VOLUME}
fi
