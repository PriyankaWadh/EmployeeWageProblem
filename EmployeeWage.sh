#! /bin/bash
empRatePerHr=20
empHrs=8

attendance_check=$(( RANDOM%2 ))

if [[ $attendance_check -eq 1 ]]
then
	echo employee is present
	salary=$(( $empRatePerHr * $empHrs ))
else
	echo employee is absent
	salary=0
fi

echo "salary of an employee:" $salary
