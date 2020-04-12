#! /bin/bash

FILE=$1
LOG=$2

if [ -e "$FILE" ]; then
	if[];
		echo "$(date +"%Y-%m-%d %T) - File \"$FILE\" has been found" >> $LOG
	fi
	if[]; then
		echo "found" >> $LOG
	fi
else
	if[]; then
		echo "$(date +"%Y-%m-%d %T) - File \"$FILE\" has been lost" >> $LOG
	fi
	if[]; then
		echo "lost" >> $LOG
		
	fi
fi
