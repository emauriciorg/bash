#!/bin/bash
# GNU bash, version 4.3.46

row_limit=63
column_limit=100
array_width=100
rows=63
columns=50
base=16
declare -A array
limit_upper=30
ascii_a=1

for ((j=0;j<$row_limit;j++));
do
	for ((i=0;i<$column_limit;i++));
	do

        array[$j,$i]=0
		#echo -ne "${array[$j,$i]\t}"
	done
#	echo ""
done

rows=$((rows-1))
#base start
ascii_a=0
limit_upper=$((rows-base))
echo "limit upper is $limit_upper , $rows"
for ((j=rows;j>$limit_upper;j--));
do
    ascii_a=$(($ascii_a+1))
# index_array=$(($(($array_width*$j))+($columns)))
    echo "value is $j $columns $ascii_a"
    array[$j,$columns]=1
done


for ((j=0;j<$row_limit;j++));
do
	for ((i=0;i<$column_limit;i++));
	do
		echo -ne "${array[$j,$i]\t}"
	done
	echo ""
done
