create procedure GetSpecificManager
	@Name nvarchar(100)
as
	select [Id],[Name],[Password] from Manager
	Where [Name] = @Name
