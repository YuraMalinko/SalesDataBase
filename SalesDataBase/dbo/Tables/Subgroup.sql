CREATE TABLE [dbo].[Subgroup] (
    [Id]         INT          IDENTITY (1, 1) NOT NULL,
    [Name]       NVARCHAR (1) NOT NULL,
    [Is_Deleted] BIT          DEFAULT ('0') NOT NULL,
    [Group_Id]   INT          NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [Subgroup_fk_Group] FOREIGN KEY ([Group_Id]) REFERENCES [dbo].[Group] ([Id]),
    UNIQUE NONCLUSTERED ([Name] ASC)
);

