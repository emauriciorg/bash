#!/bin/bash
#Given  N integers, compute their average correct to three decimal places.
#first input is the number N of numbers that would follow
#bash do not perform float operations so bc or awk  shall be used


read number_of_inputs
sum=0
for ((counter=0;counter<$number_of_inputs;counter++));
do
read input
sum=$((sum+input))
done

printf "%.3f\n" $(bc -l <<< "$sum/$number_of_inputs")
