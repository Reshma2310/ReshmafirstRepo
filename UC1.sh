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
