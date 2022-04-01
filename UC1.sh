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

