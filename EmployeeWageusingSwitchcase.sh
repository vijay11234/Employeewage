#! /bin/bash -x
isPresent=1
ispartTime=2
EmployeeCheck=$(( RANDOM%3 ))
wageperHour=20
	case $EmployeeCheck in
	$isPresent)

	   echo "Employee is present $isPresent"
         workhrs=8
    		dailywage=$((wageperHour*workhrs))
        echo "$dailywage"
		;;
	$ispartTime)

      echo "Employee is par-time"
         workhrs=4
         dailywage=$((wageperHour*workhrs))
        echo "$dailywage"
		;;
		*)
		echo "Employee is absent"
	esac
