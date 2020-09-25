#! /bin/bash -x
isPresent=1
randomCheck=$(( RANDOM%2 ))
wageperHour=20
if [ $isPresent -eq  $randomCheck ]
then
   echo "Employee is present $isPresent"
	 workhrs=8
    dailywage=$((wageperHour*workhrs))
	echo "$dailywage"

else
   echo "Employee is absent $randomCheck"
fi
