CREATE TABLE [dbo].[Comment_For_Order] (
    [Id]         INT             IDENTITY (1, 1) NOT NULL,
    [Text]       NVARCHAR (4000) NOT NULL,
    [Is_Deleted] BIT             DEFAULT ('0') NOT NULL,
    [Order_Id]   INT             NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [Comment_For_Order_Order] FOREIGN KEY ([Order_Id]) REFERENCES [dbo].[Order] ([Id]) ON UPDATE CASCADE
);

