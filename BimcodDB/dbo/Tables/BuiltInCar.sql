CREATE TABLE [dbo].[BuiltInCar]
(
	[Id]     INT           IDENTITY (1, 1) NOT NULL,
    [Model]  NVARCHAR (10) NULL,
    [Type]   NVARCHAR (10) NULL,
	PRIMARY KEY CLUSTERED ([Id] ASC)
)
