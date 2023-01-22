create Procedure dbo.UpdatePasswordManager
	@IdManager int,
	@NewPassword nvarchar(20)
as
	update Manager
	set [Name] = @NewPassword
	where [Id]=@IdManager
