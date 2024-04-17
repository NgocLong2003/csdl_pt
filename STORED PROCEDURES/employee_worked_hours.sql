CREATE PROCEDURE dbo.Employee_Worked_Hours
	-- Add the parameters for the stored procedure here
AS
BEGIN
	SELECT Employee_Id, a.Attendance_Id, Hours_Worked
	FROM [Employee_Attendance] as a
		left join [Attendance] as b
		on a.Attendance_Id = b.Attendance_Id

END
GO

EXECUTE dbo.Employee_Worked_Hours


CREATE PROCEDURE pro1 --function

AS
BEGIN
	SELECT * FROM Employee
END
GO

EXECUTE pro1


