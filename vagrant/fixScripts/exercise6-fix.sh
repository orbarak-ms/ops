#!/bin/bash
#add fix to exercise6-fix here
if [ "$#" -lt 2 ]; then
    echo "illegal number of parameters"
else
	for last; do true; done
	TARGET_FOLDER=${@: -1}
	CURRENT_HOST=`hostname`
	TOTAL_FILESIZE=0
	if [ $CURRENT_HOST == "server1" ]; then
		TARGET_HOST=server2
	else
		TARGET_HOST=server1
	fi
	for FILE in "$@"; do
		if [ -e $FILE ]; then
			if [ $FILE != $TARGET_FOLDER ]; then
				FILESIZE=$(stat -c%s "$FILE")
				TOTAL_FILESIZE=$((TOTAL_FILESIZE+FILESIZE))
				scp -q $FILE $TARGET_HOST:$TARGET_FOLDER  
			fi
		fi
	done
	echo $TOTAL_FILESIZE
fi