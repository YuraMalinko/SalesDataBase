create Procedure UpdateNameManager
	@IdManager int,
	@NewName nvarchar(100)
as
	update Manager
	set [Name] = @NewName
	where [Id]=@IdManager
