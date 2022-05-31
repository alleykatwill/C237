#!/bin/sh


echo "Welcome to Office Trivia! Hope you are ready to test your Dunder Mifflin knowledge!"
echo "Question1: The Office is based in Scranton, PA" "T/F?"
read a
correctanswer=T

if [ ${a^^} = ${correctanswer^^} ]
then 
	echo "Great job! You earned one Schrute Buck"
else
	echo "False."
fi

echo "Question2: Dwight's middle name is Kurt" "T/F?"
read a
correctanswer=T
if [ ${a^^} = ${correctanswer^^} ]
then
        echo "Wow, you just got a Stanley Nickel"
else
        echo "False. You must work at the Buffalo Branch"
fi

echo "Question3: Pam goes to art school in California" "T/F?"
read a
correctanswer=F
if [ ${a^^} = ${correctanswer^^} ]
then
        echo "Congrats! You just earned one Schrute Buck"
else
        echo "False"
fi

echo "Question4: "Michael and Holly are soupsnakes "T/F?"
read a
correctanswer=T
if [ ${a^^} = ${correctanswer^^} ]
then
        echo "Congrats! You earned one Stanley Nickel"
else
        echo "False."
fi


echo "Question5: Angel and Andy get married" "T/F?"
correctanswer=F
read a
if [ ${a^^} = ${correctanswer^^} ]
then
        echo "Correct,you just earned one Schrute Buck!"
else
        echo "False. Dwight is sending Moses to put a racoon in your car!"
fi


echo "Question6: Toby and Michael are best friends" "T/F?"
correctanswer=F
read a
if [ ${a^^} = ${correctanswer^^} ]
then
        echo "Correct, Toby is the worst!"
else
        echo "Wrong, why are you the way that you are?"
fi

echo "Question7: "Jim and Pam get married on a boat "T/F?"
correctanswer=T
read a
if [ ${a^^} = ${correctanswer^^} ]
then
        echo "Amazing, were you one of Scott's Tots?!?"
else
        echo "False."
fi


echo "Question8: Stanely is married to Kelley" "T/F?"
correctanswer=F
read a
if [ ${a^^} = ${correctanswer^^} ]
then
        echo "Correct, you just earned a Stanley Nickel!"
else
        echo "OMG,False!"
fi


echo "Question9: "Roy is the warehouse foremen "T/F?"
correctanswer=F
read a
if [ ${a^^} = ${correctanswer^^} ]
then
        echo "Correct dinkin flicka!"
else
        echo "False."
fi


echo "Question10: The Office is more than a place of work, its a family" "T/F?"
correctanswer=T
read a
if [ ${a^^} = ${correctanswer^^} ]
then
        echo "Correct, you won one Schrute Buck"
else
        echo "False. Please go back and watch the show again"
fi
