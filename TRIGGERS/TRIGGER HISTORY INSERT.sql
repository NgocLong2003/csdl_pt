
CREATE TRIGGER insert_history
   ON  [dbo].[Employee]
   AFTER INSERT --change to UPDATE, DELETE then add new trigger
AS 
	DECLARE @NAME nvarchar(25) = 'LONG';
	BEGIN
		INSERT INTO dbo.History_Employee
		SELECT Employee_Id, First_Name, Last_Name, Hire_Date, Location_ID, 'New employee' as Action, GETDATE() as Time_stamp, @NAME as UpdatedBy, rowguid
		FROM inserted
	END

