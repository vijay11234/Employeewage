#! /bin/bash -x

isPresent=1
ispartTime=2

wageperHour=20
Totalworkingdays=20
TotalHours=100

day=0
hour=0
	while (( day<=Totalworkingdays && hour<=TotalHours ))
	do
		EmployeeCheck=$(( RANDOM%3 ))
		(( day++ ))
    	case $EmployeeCheck in
      	  $isPresent)
         	  echo "Employee is present $isPresent"
            	workhrs=8
                ;;
        		$ispartTime)
            	echo "Employee is par-time"
            	workhrs=4
                ;;
         	*)
                echo "Employee is absent"
			    ;;
		esac
			hour=$((hour+workhrs))
	done
  	Salary=$((wageperHour*hour))
   echo "$Salary"
