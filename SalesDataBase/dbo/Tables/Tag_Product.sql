CREATE TABLE [dbo].[Tag_Product] (
    [Id]         INT IDENTITY (1, 1) NOT NULL,
    [Is_Deleted] BIT DEFAULT ('0') NOT NULL,
    [Tag_Id]     INT NOT NULL,
    [Product_Id] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [Tag_Product_Product] FOREIGN KEY ([Product_Id]) REFERENCES [dbo].[Product] ([Id]) ON UPDATE CASCADE,
    CONSTRAINT [Tag_Product_Tag] FOREIGN KEY ([Tag_Id]) REFERENCES [dbo].[Tag] ([Id]) ON UPDATE CASCADE
);

