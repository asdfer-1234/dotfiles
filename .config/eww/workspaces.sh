#!/bin/sh
workspaces() {

	workspace_names=()
	while IFS= read -r line; do
		workspace_names+=( $line )
	done < <(bspc query -D --names)

	# Unoccupied
	un="0"

	workspace_status=()


	for i in ${workspace_names[@]}
	do

		if [ $(bspc query -D -d focused --names | grep $i) ]; then
			workspace_status+=( focused )
		elif [ $(bspc query -D -d .occupied --names | grep $i) ]; then
			workspace_status+=( occupied )
		else
			workspace_status+=( inactive )
		fi
	done

	declare -i index=0

	echo "(box :orientation \"vertical\" :spacing 8"

	for i in ${workspace_status[@]}
	do
		echo "(workspace :name ${workspace_names[$index]} :status \"$i\")"
		index+=1
	done
	echo ")"
}
workspaces
