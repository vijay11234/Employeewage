#! /bin/bash -x
isPresent=1
Check=$(( RANDOM %2 ))
if [ $Check -eq $isPresent ]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi
