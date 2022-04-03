#!/bin/bash

declare -A outputs

function flip(){
	var=$(( RANDOM%2 ))
	if [[ $var -eq 1 ]]
        then
        echo "H"
	else
        echo "T"
	fi
}
#singlet Combination
for (( i=0; i<5; i++ ))
do
	res1[$i]=$(flip $i)
done
echo "Output of Singlet Combination is ${res1[@]}"
#Doublet Combination
for (( i=0; i<5; i++ ))
do
	for (( j=0; j<5; j++ ))
	do
	res2[$i]=$(flip $i)$(flip $j)
	done
done
echo "Output of Doublet Combination is ${res2[@]}"
