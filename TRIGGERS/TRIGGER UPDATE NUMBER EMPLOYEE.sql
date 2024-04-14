
CREATE TRIGGER update_number_employee
   ON  dbo.employee
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN

	UPDATE Work_Location
	SET [Number_Of_Employees] = (SELECT COUNT(*) from dbo.Employee)
	where Location_Id = 'N' --chinh lai tai cac may tram

END
GO
