create procedure dbo.GetAllManagerIsNotDelete
as
select [id],[Name] from Manager
where [Is_Deleted] = 0
