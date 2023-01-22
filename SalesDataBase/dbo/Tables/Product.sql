CREATE TABLE [dbo].[Product] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Name]        NVARCHAR (100) NOT NULL,
    [Count]       INT            NOT NULL,
    [IsDelete]    BIT            DEFAULT ('0') NOT NULL,
    [Subgroup_Id] INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [Product_fk_Subgroup] FOREIGN KEY ([Subgroup_Id]) REFERENCES [dbo].[Subgroup] ([Id]),
    UNIQUE NONCLUSTERED ([Name] ASC)
);

