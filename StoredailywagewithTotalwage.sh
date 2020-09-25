#! /bin/bash -x

isPresent=1
ispartTime=2

wageperHour=20
Totalworkingdays=20
TotalHours=100

day=0
hour=0
function workHour() {
     case $1 in
           $isPresent)
               workhrs=8
                ;;
            $ispartTime)
               workhrs=4
                ;;
            *)
					workhrs=0
             ;;
      esac
		echo $workhrs

}

	function dailyWage(){
		timeHour=$1
		dailyIncome=$(( timeHour*wageperHour ))
		echo $dailyIncome
   }

	while(( day<Totalworkingdays && hour<TotalHours ))
	do
		EmployeeCheck=$(( RANDOM%3 ))
      Emplyhour=$(workHour $EmployeeCheck)
      hour=$(($hour+$Emplyhour))
		wageArray[day]=$(dailyWage $Emplyhour)
		((day++))
	done
  	Salary=$((wageperHour*hour))
   echo "Total salary is : $Salary"
	echo "Daily income : ${wageArray[@]}"
