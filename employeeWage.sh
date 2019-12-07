#!/bin/bash/ -x


function getWorkHrs()
{

employeeCheck=$1
case $employeeCheck in
		$FullDay)
			 echo $FullWorkHrs
			 ;;
		$HalfDay)
			 echo $HalfWorkHrs
			  ;;
		*)
			echo 0  ;;
esac
}



#######################   Main Method ###################

WagePerHrs=20
WorkDay=20
FullWorkHrs=8
HalfWorkHrs=4
Hours=0
Day=1
FullDay=1
HalfDay=0

echo "Welcome to Employee"

while [[ $day -le $WorkDay && $Hours -lt 100 ]]
do
	employeeCheck=$(( RANDOM % 3 ))
	workingHrs="$( getWorkHrs $employeeCheck )"
	DailyWage=$(( $WagePerHrs * $workingHrs ))
	Hours=$(( $Hours + $workingHrs))
	day=$(( $day +1 ))
done
echo $Hours
