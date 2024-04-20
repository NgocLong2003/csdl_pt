CREATE TRIGGER auto_calculate_salary
	on salary
	after insert, update
as
	DECLARE @worked_hours INT = 
	(Select sum(hours_worked) as total_worked_hours
	from 
		(SELECT Employee_Id, a.Attendance_Id, Hours_Worked, date_time
			FROM [Employee_Attendance] as a
			left join [Attendance] as b
			on a.Attendance_Id = b.Attendance_Id) as work
		inner join AccountDetails as account
			on account.employee_id = work.employee_id
	where month(date_time) = (select MONTH_PAY from inserted)
		and year(date_time) = (select YEAR_PAY from inserted)
		and account_id = (select account_id from inserted)
	group by account_id);
	
	Declare @gross_salary INT = @worked_hours * (select hourly_pay from inserted);

	Declare @net INT = @gross_salary * (100 - (select tax_percent from inserted))/100;

	update salary
	set worked_hours = @worked_hours, 
		gross_salary = @gross_salary,
		net = @net
		where salary_id = (select salary_id from inserted);

	GO