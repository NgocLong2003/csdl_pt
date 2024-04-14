
CREATE TRIGGER update_number_employee
   ON  dbo.employee
   AFTER INSERT,DELETE,UPDATE
AS
	
DECLARE @LOCATION_ID varchar(5) = 'N';
BEGIN

	UPDATE Work_Location
	SET [Number_Of_Employees] = (SELECT COUNT(*) from dbo.Employee)
	where Location_Id = @LOCATION_ID

END
GO
