#!/bin/sh

DATE= $(date +"%d-%m-%Y")
count=0

if [ -f "usernumbers.$DATE" ]
then
	rm usernumbers.$DATE
	touch usernumbers.$DATE
else
	touch usernumbers.$DATE
fi

echo "Please enter your 5 lottery numbers."

while true
do
	read draw
	if [[ ($draw -ge 1 && $draw -le 50) ]]
	then
		grep -w $draw lottery.$DATE > /dev/null
		exit=$(echo $?)
		if [[ ($exit == 0) ]]
		then
			((count++))
			echo "Congrats!!You have a matching number!"
		else
			echo "Unfortunately, you do not have any matching numbers. Better luck next time!"
		fi
		echo $draw >> usernumbers.$DATE
		num=$(wc -l usernumbers.$DATE | awk '{print$1}')
		if [ $num -gt 4 ]
		then
			echo "Please enter the number of your bonus ball."
			read bonus
			grep -w $bonus bounusball.$DATE > /dev/null
			exit=$(echo $?)
			if [[ (exit == 0) ]]
			then
				((count++))
				echo "Awesome! You have a matching number!"
			else
				echo "Sorry, you do not have a match. Try again next time!"
			fi
			echo $bonus >> usernumbers.$DATE
			echo "Winnter, Winner!! You have $count matches. Thanks for playing!"
		       break
	       else
			echo "Sorry, that number is not within range"
			continue
		fi
	else
		continue
	fi
else
		echo "Sorry, that number is not within range."
fi
done


