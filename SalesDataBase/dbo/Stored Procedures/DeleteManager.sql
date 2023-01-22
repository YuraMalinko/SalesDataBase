create Procedure DeleteManager
	@IdManager int
as
	update Manager
	set [Is_Deleted] = 1
	where [Id]=@IdManager and [Is_Deleted] != 1
