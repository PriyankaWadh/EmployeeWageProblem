#! /bin/bash
empRatePerHr=20
empFullTimeHrs=8
empPartTimeHrs=4

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

empCheck=$(( RANDOM%3 + 1 ))
case $empCheck in
	1)
	empHrs=8
	;;
	2)
	empHrs=4
	;;
	3)
	empHrs=0
	;;
esac

employeeWage=$(( $empHrs * $empRatePerHr ))

echo "salary of an employee:" $salary
echo "part time salary of an employee:" $halfSalary
echo "Employee Wage:" $employeeWage
