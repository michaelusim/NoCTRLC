#!usr/bin/bash

function no_ctrlc()
{
	let ctrlc_count++
	echo
	if [[ $ctrlc_count == 1 ]]; then
		echo "Stop that."
	elif [[ $ctrlc_count == 2 ]]; then
		echo "Stop !"
	elif [[ $ctrlc_count == 3 ]]; then
		echo "You have till the count of three"
	elif [[ $ctrlc_count == 4 ]]; then
		echo "Once more and I quit."
	else
		echo "That's it. I quit."
		exit
	fi
}
	trap no_ctrlc SIGINT

	while true
	do
		echo Sleeping
		sleep 10
	done
