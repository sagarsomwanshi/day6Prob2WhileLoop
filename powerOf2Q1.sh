#!/bin/bash -x


read -p "Enter a Number : " x
result=0
i=1
while(( (($result<=128)) && (($i<=$x)) ))
do
	result=$((2**$i))
	echo "2^$i = $result"
	((i++))
done
