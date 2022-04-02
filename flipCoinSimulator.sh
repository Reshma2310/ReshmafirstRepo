#!/bin/bash -x
#!/bin/bash

i=1
heads=0
tails=0
while [ $tails -lt 21 -a $heads -lt 21 ]
do
var=$(( RANDOM%2 ))
	if [ $var -eq 1 ]
	then
	echo "Heads"
	heads=$(($heads + 1))
	else
	echo "Tails"
	tails=$(($tails + 1))
	fi
((i++))
done
echo "No of Heads as output are $heads"
echo "No of Tails as output are $tails"

if [[ $heads -gt $tails ]]
then
	echo "Heads won by $(( $heads - $tails ))"
else
	echo "Tails won by $(( $tails - $heads ))"
fi
