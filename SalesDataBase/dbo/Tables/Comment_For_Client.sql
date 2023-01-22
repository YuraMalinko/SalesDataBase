CREATE TABLE [dbo].[Comment_For_Client] (
    [Id]         INT             IDENTITY (1, 1) NOT NULL,
    [Text]       NVARCHAR (4000) NOT NULL,
    [Is_Deleted] BIT             DEFAULT ('0') NOT NULL,
    [ClientId]   INT             NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [Comment_For_Client_Client] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[Client] ([Id]) ON UPDATE CASCADE
);

