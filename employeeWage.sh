#!/bin/bash/ -x
echo "Welcome to Employee"

WagePerHrs=20
WorkDay=20
FullWorkHrs=8
HalfWorkHrs=4
Hours=0
Day=1
FullDay=1
HalfDay=0
while [[ $day -le $WorkDay && $Hours -lt 100 ]]
do
employeeCheck=$(( RANDOM % 3 ))
case $employeeCheck in
		$FullDay)
			echo "Employee Present FullTime"
			 DailyWage=$(( $WagePerHrs * $FullWorkHrs ))
			 Hours=$(( $Hours + $FullWorkHrs ))
			 echo $DailyWage
			 ;;
		$HalfDay)
			 echo "Employee Present HalfTime"
			 DailyWage=$(( $WagePerHrs * $HalfWorkHrs ))
			 Hours=$(( $Hours + $HalfWorkHrs))
			echo $DailyWage
			  ;;
		*)
			echo "Employee absent"
esac
day=$(( $day + 1))
done


