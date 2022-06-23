#!/bin/bash

partTime=1
fullTime=2
empRate=20
workingDays=20

function empSalary()
{
	Range=$((2-1+1))
	empCheck=$(($((RANDOM%Range))+1))

	case $empCheck  in

	$fullTime)
		empHours=8;;

	$partTime)
		empHours=4;;

	*)
		empHours=0;

	esac
	dailyWage=$(( $empRate * $empHours))
	Salary=$(( $dailyWage * $workingDays))
	echo "Daily Wage Earned by Employee: Rs " $dailyWage
	echo "Monthly Salary: Rs " $Salary
}
empSalary
