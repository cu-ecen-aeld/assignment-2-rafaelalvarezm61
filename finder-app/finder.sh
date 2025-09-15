#!/bin/bash
filesdir=$1
searchstr=$2


if [ "$#" -lt 2 ] ; then 
	echo "Error: Missinf required parameters"
	echo "Usage: $0 <parameter1> <parameter2>"
	exit 1
fi
if [ ! -d "$filesdir" ] ; then
	echo "Error '$filesdir' is not a directory."
	exit 1
fi 
X1=$(grep  -rl $searchstr $filesdir | wc -l)
X=$((X1 / 2)) 
Y1=$(grep -rl $searchstr $filesdir | wc -l)
Y=$((Y1 / 2))
#

echo  "The number of files are $X and the number of matching lines are $Y"
exit  0
