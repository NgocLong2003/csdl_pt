-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
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