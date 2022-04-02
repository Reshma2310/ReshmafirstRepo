#!/bin/bash -x

i=1
heads=0
tails=0

function flip(){
	var=$(( RANDOM%2 ))
        if [ $var -eq 1 ]
        then
        echo "Heads"
        heads=$(($heads + 1))
        else
        echo "Tails"
        tails=$(($tails + 1))
        fi
}

while [ $tails -lt 21 -a $heads -lt 21 ]
do
	flip
	((i++))
done
echo "No of Heads as output are $heads"
echo "No of Tails as output are $tails"

if [[ $heads -eq $tails ]]
then
	echo "equal"
	flip
	if [[ $heads -gt $tails+2 ]]
	then
		echo "Heads won by with $heads"
	elif [[ $tails -gt $heads+2 ]]
	then
		echo "Tails won by with $tails"
	else
		echo "$heads $tails"
	fi
	((i++))
elif [[ $heads -gt $tails ]]
then
	echo "Heads won by $(( $heads - $tails ))"
else
	echo "Tails won by $(( $tails - $heads ))"
fi
