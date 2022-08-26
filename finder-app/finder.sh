#!/bin/sh

filesdir=$1
searchstr=$2 

if [ "$#" != "2" ];
then
	echo "Two arguments needs to be passed"
	exit 1
else
	if [ ! -d "$1" ];
	then
		echo "$filesdir does not represent a directory on a file system"
		exit 1
	else
		num_files=$(grep -lr "$2" ".$1" | wc -l)
		num_lines=$(grep -r "$2" ".$1" | wc -l)
		echo "The number of files are $num_files and the number of matching lines are $num_lines"
	fi
fi






