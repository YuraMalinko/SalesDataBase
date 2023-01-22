create procedure dbo.GetAllIsDeleteManager
as
select [id],[Name] from Manager
where [Is_Deleted] = 1