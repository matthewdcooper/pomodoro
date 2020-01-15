#!/bin/bash

function pomo() {
	for i in {1..4}
	do
		notify-send -i user-available "interval $i";
		sleep $(( 25*60 ));
		notify-send -i user-busy "break";
		sleep $(( 5*60 ));
	done;
}

pomo &

