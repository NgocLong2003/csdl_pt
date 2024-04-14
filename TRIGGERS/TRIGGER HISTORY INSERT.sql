USE [New_Employee_Payroll_N]
GO
/****** Object:  Trigger [dbo].[insert_history]    Script Date: 4/14/2024 8:56:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER TRIGGER [dbo].[insert_history]
   ON  [dbo].[Employee]
   AFTER INSERT --change to UPDATE, DELETE then add new trigger
AS 

	BEGIN
		INSERT INTO dbo.History_Employee
		SELECT Employee_Id, First_Name, Last_Name, Hire_Date, Location_ID, 'New employee' as Action, GETDATE() as time, SUSER_NAME() as UpdatedBy
		FROM inserted
	END

