 
 --worked_hours DECLARE @worked_hours INT =
Select account_id, sum(hours_worked) as total_worked_hours
	from 
		(SELECT Employee_Id, a.Attendance_Id, Hours_Worked, date_time
			FROM [Employee_Attendance] as a
			left join [Attendance] as b
			on a.Attendance_Id = b.Attendance_Id) as work
		inner join AccountDetails as account
			on account.employee_id = work.employee_id
	where month(date_time) = 5
		and year(date_time) = 2024
		and account_id = 'AE101'
	group by account_id

-- GROSS_SALARY DECLARE @gross_salary = @worked_hours * (select hourly_pay from inserter)

-- NET DECLARE @net = @gross_salary * (100 - (select tax_percent from inserter))/100



