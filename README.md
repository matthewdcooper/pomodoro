# Pomodoro in Bash

> A bash script that functions as a Pomodoro timer.

![notification examples](/notifaction-examples.png?raw=true)

The [Pomodoro Technique](https://en.wikipedia.org/wiki/Pomodoro_Technique) (named after a tomato-shaped timer) is a productivity method that involves deciding on a particular task and then working on it in a sequence of short intervals separated by small breaks. The main advantages I've found are that a) it focuses your time on a specific task and b) the regular short breaks help you to maintain concentration for a longer period overall than you might otherwise have done.

Usage is simple:

	- Decide on a task you want to complete.
	- Run the script to start the timer: ```./pomodoro.sh```

The script will run in the background and send Desktop notifications about which interval you are in and when to take a 5 minute break. After four intervals the script will end and it is time to take a longer break before getting back to work.
