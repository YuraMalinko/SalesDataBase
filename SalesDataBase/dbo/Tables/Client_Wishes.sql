CREATE TABLE [dbo].[Client_Wishes] (
    [Id]          INT IDENTITY (1, 1) NOT NULL,
    [Is_Liked]    BIT NOT NULL,
    [Is_Deleted]  BIT DEFAULT ('0') NOT NULL,
    [Group_Id]    INT NULL,
    [Subgroup_Id] INT NULL,
    [Tag_Id]      INT NULL,
    [Client_Id]   INT NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [Client_Wishes_Client] FOREIGN KEY ([Client_Id]) REFERENCES [dbo].[Client] ([Id]) ON UPDATE CASCADE,
    CONSTRAINT [Client_Wishes_fk_Subgroup] FOREIGN KEY ([Subgroup_Id]) REFERENCES [dbo].[Subgroup] ([Id]),
    CONSTRAINT [Client_Wishes_Group] FOREIGN KEY ([Group_Id]) REFERENCES [dbo].[Group] ([Id]) ON UPDATE CASCADE,
    CONSTRAINT [Client_Wishes_Tag] FOREIGN KEY ([Tag_Id]) REFERENCES [dbo].[Tag] ([Id]) ON UPDATE CASCADE
);

