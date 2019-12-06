#!/bin/bash/ -x
echo "Welcome to Employee"
employeeCheck=$(( RANDOM % 2 ))
WagePerHrs=20
FullWorkHrs=8
HalfWorkHrs=4
if [[ $employeeCheck -eq 1 ]]
then

	echo "Employee Present"
   DailyWage=$(( $WagePerHrs * $WorkHrs ))
	echo $DailyWage
else
	echo "Employee Absent"
fi


