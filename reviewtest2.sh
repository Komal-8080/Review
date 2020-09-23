#!/bin/bash -x

j=1
f=1
while [ $j -eq 1 ]
do
num=`echo $((RANDOM%9999+1000))`
echo "$num"
for (( i=2; i<=$num/2; i++ ))
do
if [ $((num%i)) -eq 0 ];
then
f=0
fi
done
if [ $f -eq 1 ];
then
echo "$num is not prime "
else 
echo "$num is not prime"
break
fi
((j++))
done
echo "count=$j"

