
CREATE TRIGGER check_valid_id
   ON  dbo.employee
   AFTER INSERT, UPDATE

AS 
	DECLARE @ID_FOMART varchar(10) = 'N%';
	DECLARE @id varchar(25)
	SET @id = (SELECT Employee_Id FROM inserted)

	IF (@@ROWCOUNT = 0)
		BEGIN
			print 'RETURN NULL'
			Return
		END
	IF (@id like @ID_FOMART)
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
