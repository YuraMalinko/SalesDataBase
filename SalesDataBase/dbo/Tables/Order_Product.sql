CREATE TABLE [dbo].[Order_Product] (
    [Id]                  INT             IDENTITY (1, 1) NOT NULL,
    [Count_Products]      INT             NOT NULL,
    [Product_Evaluation]  INT             NULL,
    [Comment_For_Product] NVARCHAR (4000) NULL,
    [Is_Deleted]          BIT             DEFAULT ('0') NOT NULL,
    [OrderId]             INT             NOT NULL,
    [ProductId]           INT             NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CHECK ([Count_Products]>(0)),
    CHECK ([Product_Evaluation]>(0) AND [Product_Evaluation]<(6)),
    CONSTRAINT [Order_Product_Order] FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Order] ([Id]) ON UPDATE CASCADE,
    CONSTRAINT [Order_Product_Product] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]) ON UPDATE CASCADE
);

