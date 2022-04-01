#!/bin/bash

echo "Enter first input"
read a
echo "Enter Second input"
read b
echo "Enter Third input"
read c

output1=$(( a + b * c ))
echo "Output of UC2 is $output1"

output2=$(( a * b + c ))
echo "Output of UC3 is $output2"

output3=$(( c + a / c ))
echo "Output of UC4 is $output3"

output4=$(( c % a + c ))
echo "Output of UC5 is $output4"
