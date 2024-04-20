	/* Employee */

SELECT *
	FROM Employee

 INSERT INTO Employee
	VALUES('N013', 'Yen', 'Tran', '2024-02-19', 'N', 'HR');
	
UPDATE Employee
	SET Employee_Id = 'N103'
	WHERE Employee_Id = 'N013';

DELETE FROM Employee
	WHERE Employee_Id = 'N103';


	/* Attendance */
SELECT *
  FROM Attendance;

INSERT INTO Attendance
	Values ('S90', 30, '2024-OCT-14');

UPDATE Attendance
	SET Hours_Worked = 20
	WHERE Attendance_id = 'E88';

DELETE FROM Attendance
	WHERE Attendance_id = 'N83';


	/* Employee_Attendance */
SELECT *
  FROM Employee_Attendance

INSERT INTO Employee_Attendance
	VALUES ('S101', 'S90');

UPDATE Employee_Attendance
	SET Attendance_Id = 'S90'
	WHERE Employee_Id = 'S101';

DELETE FROM Employee_Attendance
	WHERE Employee_Id = 'S101';
	

	/* AccountDetails */
SELECT *
	FROM AccountDetails;

INSERT INTO AccountDetails
	VALUES('AN103', 'VP Bank', 'E654321', 'N103');

UPDATE AccountDetails
	SET Account_Number = 'N123456'
	WHERE Account_Id = 'AN103';

DELETE FROM AccountDetails
	WHERE Account_Id = 'AN103';


	/* SALARY */
INSERT INTO Salary (Salary_id, Hourly_pay, Month_pay, Year_pay, Tax_percent, Account_id)
	values ('N102_3_24', 30000, 3, 2024,  10, 'AN102');
	--note: khi insert, update, chi dung nhung truong thong tin co dinh tren, con lai da co trigger auto fill

DELETE FROM salary
	WHERE Salary_id = 'N102_3_24';

UPDATE Salary
	SET Hourly_Pay = 35000
	WHERE Salary_Id = 'N102_3_24';

Select *
	FROM Salary;