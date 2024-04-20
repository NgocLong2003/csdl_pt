CREATE TABLE Salary(
  Salary_Id varchar(25), --varchar
  Hourly_Pay INT,
  MONTH_PAY INT,
  YEAR_PAY INT,
  TAX_PERCENT INT,
  Account_Id VARCHAR(25),
  Worked_Hours INT, -- derived
  Gross_Salary INT, --derived
  NET INT, --derived (100%-Tax_percent) * worked_hours
  CONSTRAINT SALARY_PK PRIMARY KEY (Salary_Id),
  FOREIGN KEY (Account_Id)
        REFERENCES ACCOUNTDETAILS(Account_Id)
  );

   CREATE TABLE Attendance(
  Attendance_Id VARCHAR(25) not null,
  Hours_Worked INT,
  Date_time datetime -- GROUP BY MONTH(Date_time). SUM(HOURS_WORKED)
  CONSTRAINT Attendance_PK PRIMARY KEY (Attendance_Id)
  );

  Salary
  Salary_ID |	Hourly_pay|	Worked_hours| GROSS | MONTH |	YEAR |	Tax |		NET		|	Account_ID
  N101_3_24		30.000			50					3		2024	 10% 	90% GROSS		 AN101
  N101_4_24		30.000			50					4		2024	 10% 	90% GROSS		 AN101


  Salary_ID |	Hourly_pay | MONTH |	YEAR |	Tax |	Account_ID
  N101_3_24		30.000	    	3		2024	 10% 	  AN101
  N101_4_24		30.000			4		2024	 10% 	  AN101
  

  Attendance
  Attendance_ID	| Hours_worked  |	Date_time
		N90		|	   20		|	3-Mar-2024
		N91		|	   18		|	10-Mar-2024
		N92		|	   19		|	17-Mar-2024
		N93		|	   21		|	24-Mar-2024
		N94		|	   19		|	31-Mar-2024


Employee_attendance
Employee_ID |	Attendance_ID

