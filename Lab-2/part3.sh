#! /bin/bash

FILE=$1
LOG=$2

if [ -e "$FILE" ]; then
	if[ $(tail -n 1 "$LOG" | grep "lost" | wc -1) -eq 1 ]; then
		echo "$(date +"%Y-%m-%d %T) - File \"$FILE\" has been found" >> $LOG
	fi
	if[ $(tail -n 1 "$LOG" | grep "lost" | wc -1) -eq 0 ]; then
		echo "found" >> $LOG
	fi
else
	if[ $(tail -n 1 "$LOG" | grep "found" | wc -1) -eq 1 ]; then
		echo "$(date +"%Y-%m-%d %T) - File \"$FILE\" has been lost" >> $LOG
		counter2=$((counter1 + 1))
	fi
	if[ $(tail -n 1 "$LOG" | grep "found" | wc -1) -eq 0 ]; then
		echo "lost" >> $LOG
		
	fi
fi
