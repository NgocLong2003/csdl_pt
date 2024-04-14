CREATE TRIGGER delete_history
   ON  [dbo].[Employee]
   AFTER DELETE --change to UPDATE, DELETE then add new trigger
AS 
	DECLARE @NAME nvarchar(25) = 'LONG';
	BEGIN
		INSERT INTO dbo.History_Employee
		SELECT Employee_Id, First_Name, Last_Name, Hire_Date, Location_ID, 'Delete employee' as Action, GETDATE() as Time_stamp, @NAME as UpdatedBy, rowguid
		FROM inserted
	END