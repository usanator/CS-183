#! /bin/bash

FILE=$1
LOG=$2

declare -i counter1=0
declare -i counter2=0

if [ -e "$FILE" ]; then
	if[ "$counter1" -eq 0 ];
		echo "$(date +"%Y-%m-%d %T) - File \"$FILE\" has been found" >> $LOG
		counter1=$((counter1 + 1))
	fi
	if[ "$counter1" -ge 1 ]; then
		echo "found" >> $LOG
	fi
else
	if[ "$counter2" -eq 0 ]; then
		echo "$(date +"%Y-%m-%d %T) - File \"$FILE\" has been lost" >> $LOG
		counter2=$((counter1 + 1))
	fi
	if[ "$counter2" -ge 1 ]; then
		echo "lost" >> $LOG
		
	fi
fi
