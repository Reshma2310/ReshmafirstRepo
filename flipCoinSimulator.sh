#!/bin/bash -x
#!/bin/bash

i=1
heads=0
tails=0
while [ $tails -lt 11 -a $heads -lt 11 ]
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
