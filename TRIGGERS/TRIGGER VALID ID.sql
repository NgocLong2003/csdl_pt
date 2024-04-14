-- ================================================
-- Template generated from Template Explorer using:
-- Create Trigger (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- See additional Create Trigger templates for more
-- examples of different Trigger statements.
--
-- This block of comments will not be included in
-- the definition of the function.
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
CREATE TRIGGER check_valid_id
   ON  dbo.employee
   AFTER INSERT, UPDATE
AS 

	DECLARE @id varchar(25)
	SET @id = (SELECT Employee_Id FROM inserted)

	IF (@@ROWCOUNT = 0)
		BEGIN
			print 'RETURN NULL'
			Return
		END
	IF (@id like 'N%')
		BEGIN
			PRINT 'VALID ID FORMAT'
		END
	ELSE
		BEGIN
			PRINT 'INVALID ID FORMAT'
			RAISERROR ('NEED TO INCLUDE "N" IN ID',16,1) -- Display the message
			ROLLBACK TRAN -- rollback transaction, undo the insert or update code have run
		END

GO
