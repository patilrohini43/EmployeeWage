#!/bin/bash/ -x
echo "Welcome to Employee"
employeeCheck=$(( RANDOM % 2 ))

if [[ $employeeCheck -eq 1 ]]
then
	echo "Employee Present"
else
	echo "Employee Absent"
fi

