#!/bin/bash

echo "Enter first input"
read a
echo "Enter Second input"
read b
echo "Enter Third input"
read c

declare -A operations
operations[output1]="$(( a + b * c ))"
operations[output2]="$(( a * b + c ))"
operations[output3]="$(( c + a / c ))"
operations[output4]="$(( c % a + c ))"

echo "Outputs values are ${operations[@]}"
array=( ${operations[@]} )

echo "array is ${array[@]}"

for ((i = 0; i<4; i++))
do
    for ((j = 0; j<4-i-1; j++))
    do
        if [ ${array[j]} -lt ${array[$((j+1))]} ]
        then
            # swaping for Order
            temp=${array[j]}
            array[$j]=${array[$((j+1))]}
            array[$((j+1))]=$temp
        fi
    done
done

echo "Array in sorted order :"
echo ${array[*]}
