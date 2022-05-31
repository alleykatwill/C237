#!/bin/sh


min=99999
max=-9999
sum=0
pro=1
avg=0
choice=y


echo "enter 5 numbers:"
for((i=0;i<10;i++))
do

if [ $i -gt 4 ]
then

echo "enter" $(($i+1))"the number: y/n"
read choice

if [ $choice = 'n' ]
then
break
fi
fi

read m

#adding to array
a[i]=$m

sum=$(($sum+$m))

if [ $m -gt $max ]
then
max=$m
fi

if [ $m -lt $min ]
then
min=$m
fi

pro=$(($pro*$m))
done

avg=$(($sum/$i))

echo "numbers entered by user:" ${a[@]}
echo "sum:" $sum
echo "min:" $min
echo "max:" $max
echo "product:" $pro
echo "avg:" $avg
