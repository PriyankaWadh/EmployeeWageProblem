#! /bin/bash
empRatePerHr=20
empFullTimeHrs=8
empPartTimeHrs=4
numberOfWorkingDays=20
maxHrsInMonth=100

totalSalary=0
totalEmpHr=0
totalWorkingDays=0

attendance_check=$(( RANDOM%2 ))

if [ $attendance_check -eq 1 ]
then
	echo employee is present
	salary=$(( $empRatePerHr * $empFullTimeHrs ))
	halfSalary=$(( $empRatePerHr * $empPartTimeHrs ))
else
	echo employee is absent
	salary=0
	halfSalary=0
fi

while [[ $totalEmpHr -lt $maxHrsInMonth && $totalWorkingDays -lt $numberOfWorkingDays ]]
do
	(( totalWorkingDays++ ))
	empCheck=$(( RANDOM%3 + 1 ))
	case $empCheck in
		1)empHrs=8;;
		2)empHrs=4;;
		3)empHrs=0;;
	esac

	totalEmpHr=$(( $totalEmpHr + $empHrs ))
done

	totalSalary=$(( $totalEmpHr * $empRatePerHr ))


echo "salary of an employee:" $salary
echo "part time salary of an employee:" $halfSalary
echo "Calculated wages of total hours or days for a month :" $totalSalary
