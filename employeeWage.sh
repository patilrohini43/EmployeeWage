#!/bin/bash/ -x
echo "Welcome to Employee"
employeeCheck=$(( RANDOM % 3 ))
WagePerHrs=20
FullWorkHrs=8
HalfWorkHrs=4
FullDay=1
HalfDay=0
echo $employeeCheck
case $employeeCheck in
		$FullDay)
			echo "Employee Present FullTime"
			 DailyWage=$(( $WagePerHrs * $FullWorkHrs ))
      	echo $DailyWage ;;
		$HalfDay)
			 echo "Employee Present HalfTime"
			 DailyWage=$(( $WagePerHrs * $HalfWorkHrs ))
      	 echo $DailyWage ;;
		*)
			echo "Employee absent"
esac

