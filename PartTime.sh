#! /bin/bash -x
isPresent=1
ispartTime=2
rndmCheck=$(( RANDOM%3 ))
wageperHour=20
	if [ $isPresent -eq  $rndmCheck ]
	then
   	echo "Employee is present"
         workhrs=8
    		dailywage=$((wageperHour*workhrs))
        	echo "$dailywage"
	elif [ $ispartTime -eq $rndmCheck ]
	then
		echo "Employee is Part Time"
			workhrs=4
			dailywage=$((wageperHour*workhrs))
			echo "$dailywage"
	else
   	echo "Employee is absent"
	fi
