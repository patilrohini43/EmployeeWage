#!/bin/bash/ -x


function getWorkHrs()
{
case $1 in
		$fullDay)
			 echo $FULLWORKHRS
			 ;;
		$halfDay)
			 echo $HALFWORKHRS
			  ;;
		*)
			echo 0  ;;
esac
}

#######################   Main Method ###################

WAGEPERHRS=20
WORKDAY=20
FULLWORKHRS=8
HALFWORKHRS=4

hours=0
day=1
fullDay=1
halfDay=0
count=0

echo "Welcome to Employee"

declare -A storeWage

while [[ $day -le $WORKDAY && $hours -lt 100 ]]
do
	employeeCheck=$(( RANDOM % 3 ))
	workingHrs="$( getWorkHrs $employeeCheck )"
	dailyWage=$(( $WAGEPERHRS * $workingHrs ))

	totalWage=$(( $dailyWage * $WORKDAY ))
	storeWage["day_$day"]="$dailyWage	$totalWage"
	hours=$(( $hours + $workingHrs))
	day=$(( $day +1 ))
done


len=${#storeWage[@]}
for(( i=0; i<$len; i++ ))
do
	echo "day $i	 ${storeWage[day_$i]}"
done
