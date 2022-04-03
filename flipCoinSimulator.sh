#!/bin/bash

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

#if heads=tails=21
if [[ $heads -eq $tails ]]
then
	while [[ $(($heads-$tails)) -lt 2 && $(($tails-$heads)) -lt 2 ]]
	do
		flip
	done
fi
((i++))

if [[ $heads -gt $tails ]]
then
	echo "Heads won by $heads"
else
	echo "Tails won by $tails"
fi
