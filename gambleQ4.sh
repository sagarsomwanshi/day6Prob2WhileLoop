#!/bin/bash -x

Amount=100

j=0
k=0
while(( $(($Amount>0)) && (($Amount<=199)) ))
do
        gamble=$((RANDOM%2))
        if(($gamble==1))
        then
                Amount=$(($Amount+1))
                ((j++))
        else
                Amount=$(($Amount-1))
                ((k++))
        fi
done
bets=$(($j+$k))
echo "Amount : $Amount"
echo "Gambler won $j Bets"
echo "Gambler looses $k Bets"
echo "Total Bets made : $bets"
