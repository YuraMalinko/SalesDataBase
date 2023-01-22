CREATE TABLE [dbo].[Order] (
    [Id]              INT      IDENTITY (1, 1) NOT NULL,
    [Date_Create]     DATE     NOT NULL,
    [Complition_Date] DATE     NOT NULL,
    [Complition_Time] TIME (7) NOT NULL,
    [Is_Deleted]      BIT      DEFAULT ('0') NOT NULL,
    [Manager_Id]      INT      NOT NULL,
    [Client_Id]       INT      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [Order_Client] FOREIGN KEY ([Client_Id]) REFERENCES [dbo].[Client] ([Id]) ON UPDATE CASCADE,
    CONSTRAINT [Order_fk_Manager] FOREIGN KEY ([Manager_Id]) REFERENCES [dbo].[Manager] ([Id]) ON UPDATE CASCADE
);

