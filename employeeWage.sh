#!/bin/bash/ -x


function getWorkHrs()
{

employeeCheck=$1
case $employeeCheck in
		$fullDay)
			 echo $FullWorkHrs
			 ;;
		$halfDay)
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

hours=0
day=1
fullDay=1
halfDay=0
count=0

echo "Welcome to Employee"

declare -A storeWage

while [[ $day -le $workDay && $hours -lt 100 ]]
do
	employeeCheck=$(( RANDOM % 3 ))
	workingHrs="$( getWorkHrs $employeeCheck )"
	dailyWage=$(( $WagePerHrs * $workingHrs ))

	totalWage=$(( $dailyWage * $WorkDay ))
	storeWage["day_$day"]="$dailyWage	$totalWage"
	Hours=$(( $Hours + $workingHrs))
	day=$(( $day +1 ))
done


len=${#storeWage[@]}
echo $len

for(( i=0; i<$len; i++ ))
do
	echo "day $i	 ${storeWage[day_$i]}"
done
