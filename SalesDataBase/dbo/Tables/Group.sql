CREATE TABLE [dbo].[Group] (
    [Id]         INT          IDENTITY (1, 1) NOT NULL,
    [Name]       NVARCHAR (1) NOT NULL,
    [Is_Deleted] BIT          DEFAULT ('0') NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    UNIQUE NONCLUSTERED ([Name] ASC)
);

