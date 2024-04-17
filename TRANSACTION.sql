SET XACT_ABORT ON
BEGIN TRY
	BEGIN TRANSACTION; --start transaction
	--INSERT INTO [Employee_Payroll_N].[dbo].[Employee] 
	--	VALUES ('N113','Yen','Tran','19-FEB-23','N','HR', NEWID()); --this line is correct, can run
	
	INSERT INTO [New_Employee_Payroll_N].[dbo].[Employee] 
		VALUES ('N106','Ha','Tran','22-DEC-22','N','QC', NEWID()); --this line is wrong because there already exist ID = N106
	--UPDATE [Employee_Payroll_N].[dbo].[Employee] 
	--SET First_Name = 'Ha', Last_Name = 'Tran'
	--where Employee_ID = 'N109';

	--DELETE FROM [Employee_Payroll_N].[dbo].[Employee]
	--where Employee_ID = 'N109';

	SELECT * FROM [Employee_Payroll_N].[dbo].[Employee]
		
		COMMIT TRANSACTION;
END TRY
BEGIN CATCH
	SELECT --execute exception corrisponding
	ERROR_NUMBER() AS ErrorNumber  
    ,ERROR_SEVERITY() AS ErrorSeverity  
    ,ERROR_STATE() AS ErrorState  
    ,ERROR_PROCEDURE() AS ErrorProcedure  
    ,ERROR_LINE() AS ErrorLine  
    ,ERROR_MESSAGE() AS ErrorMessage;

	ROLLBACK TRANSACTION; --rollback (undo) every code have run (commit)
END CATCH
GO



BEGIN TRY
	BEGIN TRAN
		INSERT INTO [New_Employee_Payroll_N].[dbo].[Employee] 
		VALUES ('N106','Ha','Tran','22-DEC-22','N','QC', NEWID()); --this line is wrong because there already exist ID = N106
	COMMIT TRAN
END TRY

BEGIN CATCH
	PRINT 'LOI ROI'
	ROLLBACK TRAN
END CATCH