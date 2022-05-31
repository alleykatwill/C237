#!/bin/sh

function numcheck()
{
        echo $input | grep [0-9] > /dev/null
        exit=$(echo $?)
        echo $input | grep [a-z] > /dev/null
        exit2=$(echo $?)
        echo $input | grep [A-Z] > /dev/null
        exit3=$(echo $?)
}

while true
do
	read -p "Please enter a number that contains more than two digits: " input
	numcheck
	if [[ ($exit == 0 && $exit2 != 0 && $exit3 != 0) ]]
	then
		echo $input | rev
		break
	else
	
		echo "Please try again, that's not a number."
		continue
	fi
done
