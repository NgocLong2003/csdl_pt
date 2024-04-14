SET XACT_ABORT ON
BEGIN TRY
	BEGIN TRAN; --start transaction
	INSERT INTO [NGOCLONG-ACER\NGOCLONG].[New_Employee_Payroll_N].[dbo].[Employee] 
		VALUES ('N107','Yen','Tran','19-FEB-23','N','HR', NEWID()); --this line is correct, can run
	
	INSERT INTO [NGOCLONG-ACER\NGOCLONG].[New_Employee_Payroll_N].[dbo].[Employee] 
		VALUES ('N106','Ha','Tran','22-DEC-22','N','QC', NEWID()); --this line is wrong because there already exist ID = N106
	
	SELECT * FROM [NGOCLONG-ACER\NGOCLONG].[New_Employee_Payroll_N].[dbo].[Employee]
		
		COMMIT TRAN;
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
