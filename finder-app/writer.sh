#!/bin/bash
echo "inicia el writer"
writefile=$1
writestr=$2
if [ "$#" -lt 2 ]; then
	echo "Error: Insuficient arguments provided."
	echo "usage: $0 <argument1> <argument2>"
	exit 1
fi
echo $writefile
echo $writestr
touch $writefile
echo "$writestr" > "$writefile"
if  [ $?  -eq 0 ]; then
	echo "File $writefile ecreated successfully"
else
	echo "Error, file could not be created"
	exit 1
fi
