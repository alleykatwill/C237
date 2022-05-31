#!/bin/sh

DATE=$(date +"%d-%m-%Y")

if [ -f "lottery.$DATE" ]
then
	rm lottery.$DATE
	touch lottery.$DATE
else
	touch lottery.$DATE
fi

while true
do
	num='echo $((1 + RANDCOM % 50))'
	grep -w $num lottery.$DATE > /dev/null
	extit=$(echo $?) 
	if [[ ($exit == 0)]]
	then
		continue
	else
		echo $num >> lottery.$DATE
		ball=$(wc -l lottery.$DATE | awk '{print$1}')
		if [ $ball -gt 4 ]
		then
			bonusball='echo $((1 + RANDOM % 10))'
		        echo $bonusball > bonusball.$DATE
			break
		else
			continue
		fi
	fi
done

