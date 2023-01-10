#!/bin/bash -x

Head=1
Tail=1
j=1
k=1
while(( $(($Head<=11)) && (($Tail<=11)) ))
do
	toss=$((RANDOM%2))
	if(($toss==1))
	then
		Head=$(($Head+1))
		echo "$j Heads"
		((j++))
	else
		Tail=$(($Tail+1))
		echo "$k Tails"
		((k++))
	fi
done
