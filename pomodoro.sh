#!/bin/bash

interval_length=$(( 25 * 60 ))
break_length=$(( 5 * 60 ))

# override defaults with two command line arguments
if  [ $# -eq 2 ]; then
	interval_length=$(( $1 * 60 ));
	break_length=$(( $2 * 60 ));
fi

function pomo() {
	for i in {1..2}
	do
		now=$(date +%H:%M)
		fin=$(date -d "$now today + $interval_length seconds" +%H:%M)
		notify-send -i user-available "interval $i $now - $fin";
		sleep $(( $interval_length ));

		now=$(date +%H:%M)
		fin=$(date -d "$now today + $interval_length seconds" +%H:%M)
		notify-send -i user-busy "break $now - $fin";
		sleep $(( $break_length ));
	done;
}

pomo &

