USE [HMSDB]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 06/05/2022 13:37:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON
INSERT [dbo].[Category] ([Id], [Name]) VALUES (1, N'Soups')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (2, N'Starters')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (3, N'Main Course')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (4, N'Dessert')
SET IDENTITY_INSERT [dbo].[Category] OFF
/****** Object:  Table [dbo].[LoginMaster]    Script Date: 06/05/2022 13:37:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Mobile] [nvarchar](15) NULL,
	[username] [nvarchar](15) NULL,
	[password] [nvarchar](15) NULL,
	[EmailId] [nvarchar](50) NULL,
	[Role] [int] NULL,
	[JoiningDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[Isactive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LoginMaster] ON
INSERT [dbo].[LoginMaster] ([Id], [Name], [Mobile], [username], [password], [EmailId], [Role], [JoiningDate], [CreatedDate], [Isactive]) VALUES (1, N'Sai Gurav', N'9985292229', N'saigurav', N'saigurav@29', N'saigurav@gmail.com', 1, CAST(0x0000AEA6016BE3E5 AS DateTime), CAST(0x0000AEA6016BE3E5 AS DateTime), 1)
INSERT [dbo].[LoginMaster] ([Id], [Name], [Mobile], [username], [password], [EmailId], [Role], [JoiningDate], [CreatedDate], [Isactive]) VALUES (2, N'Mahesh', N'9988552266', N'mahesh123', N'mahesh@123', N'mahesh@gmail.com', 2, CAST(0x0000AEA601808357 AS DateTime), CAST(0x0000AEA601808357 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[LoginMaster] OFF
/****** Object:  UserDefinedFunction [dbo].[Fun_getDatetime]    Script Date: 06/05/2022 13:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[Fun_getDatetime]()
  Returns varchar(max)
  begin
Declare @dt datetime = getdate(),@string varchar(max);
set @string = replace(REPLACE(CONVERT(CHAR(10), @dt, 103), '/', '')+convert(varchar(8),@dt, 114), ':','');
return @string
end
GO
/****** Object:  Table [dbo].[FoodItem]    Script Date: 06/05/2022 13:37:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [nvarchar](100) NULL,
	[ItemType] [nvarchar](100) NULL,
	[Price] [int] NULL,
	[ItemDec] [nvarchar](200) NULL,
	[categoryID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[FoodItem] ON
INSERT [dbo].[FoodItem] ([Id], [ItemName], [ItemType], [Price], [ItemDec], [categoryID]) VALUES (1, N'Sweet Corn Veg Soup', N'Veg', 80, N'Made from Sweet Corn', 1)
INSERT [dbo].[FoodItem] ([Id], [ItemName], [ItemType], [Price], [ItemDec], [categoryID]) VALUES (2, N'Hot & Sour Soup', N'Veg', 80, N'Made from Vegiz', 1)
INSERT [dbo].[FoodItem] ([Id], [ItemName], [ItemType], [Price], [ItemDec], [categoryID]) VALUES (3, N'Chicken Soup', N'Non-Veg', 100, N'Made from Chicken', 1)
INSERT [dbo].[FoodItem] ([Id], [ItemName], [ItemType], [Price], [ItemDec], [categoryID]) VALUES (4, N'Veg Biryani', N'Veg', 180, N'Mixed with Masalas and Basmati Rise with Vegetables', 2)
INSERT [dbo].[FoodItem] ([Id], [ItemName], [ItemType], [Price], [ItemDec], [categoryID]) VALUES (5, N'Chicken Biryani', N'Non-Veg', 280, N'Mixed with Masalas and Basmati Rise with Chicken fried pies', 2)
INSERT [dbo].[FoodItem] ([Id], [ItemName], [ItemType], [Price], [ItemDec], [categoryID]) VALUES (6, N'Fish Fry', N'Non-Veg', 300, N'Mixed with Masalas and Basmati Rise with Fish fry ', 2)
INSERT [dbo].[FoodItem] ([Id], [ItemName], [ItemType], [Price], [ItemDec], [categoryID]) VALUES (7, N'Ice-cream', N'Veg', 100, N'Cool your boday with a cool ice-cream', 3)
SET IDENTITY_INSERT [dbo].[FoodItem] OFF
/****** Object:  Table [dbo].[TableMaster]    Script Date: 06/05/2022 13:37:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TableMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Isactive] [bit] NULL,
	[EmployeeId] [int] NULL,
	[Status] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TableMaster] ON
INSERT [dbo].[TableMaster] ([Id], [Name], [Isactive], [EmployeeId], [Status]) VALUES (1, N'T1', 1, 1, N'B')
INSERT [dbo].[TableMaster] ([Id], [Name], [Isactive], [EmployeeId], [Status]) VALUES (2, N'T2', 1, 1, N'B')
INSERT [dbo].[TableMaster] ([Id], [Name], [Isactive], [EmployeeId], [Status]) VALUES (3, N'T3', 1, 1, N'F')
INSERT [dbo].[TableMaster] ([Id], [Name], [Isactive], [EmployeeId], [Status]) VALUES (4, N'T4', 1, 1, N'F')
INSERT [dbo].[TableMaster] ([Id], [Name], [Isactive], [EmployeeId], [Status]) VALUES (5, N'T5', 1, 2, N'F')
INSERT [dbo].[TableMaster] ([Id], [Name], [Isactive], [EmployeeId], [Status]) VALUES (6, N'T6', 1, 2, N'R')
INSERT [dbo].[TableMaster] ([Id], [Name], [Isactive], [EmployeeId], [Status]) VALUES (7, N'T7', 1, 2, N'R')
INSERT [dbo].[TableMaster] ([Id], [Name], [Isactive], [EmployeeId], [Status]) VALUES (8, N'T8', 1, 2, N'R')
SET IDENTITY_INSERT [dbo].[TableMaster] OFF
/****** Object:  Table [dbo].[orderTbl]    Script Date: 06/05/2022 13:37:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Orderstatus] [nvarchar](20) NULL,
	[EmployeeId] [int] NULL,
	[TableID] [int] NULL,
	[OrderTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[orderTbl] ON
INSERT [dbo].[orderTbl] ([Id], [Orderstatus], [EmployeeId], [TableID], [OrderTime]) VALUES (1, N'C', 1, 1, CAST(0x0000AEAA015219F8 AS DateTime))
INSERT [dbo].[orderTbl] ([Id], [Orderstatus], [EmployeeId], [TableID], [OrderTime]) VALUES (2, N'P', 1, 2, CAST(0x0000AEAA01521A02 AS DateTime))
INSERT [dbo].[orderTbl] ([Id], [Orderstatus], [EmployeeId], [TableID], [OrderTime]) VALUES (3, N'P', 1, 1, CAST(0x0000AEAA0166F04F AS DateTime))
SET IDENTITY_INSERT [dbo].[orderTbl] OFF
/****** Object:  Table [dbo].[OrderItemstbl]    Script Date: 06/05/2022 13:37:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItemstbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[ItemName] [nvarchar](100) NULL,
	[ItemId] [int] NULL,
	[status] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[OrderItemstbl] ON
INSERT [dbo].[OrderItemstbl] ([Id], [OrderId], [ItemName], [ItemId], [status]) VALUES (10, 1, N'Sweet Corn Veg Soup', 1, N'D')
INSERT [dbo].[OrderItemstbl] ([Id], [OrderId], [ItemName], [ItemId], [status]) VALUES (11, 1, N'Veg Biryani', 4, N'D')
INSERT [dbo].[OrderItemstbl] ([Id], [OrderId], [ItemName], [ItemId], [status]) VALUES (12, 2, N'Fish Fry', 6, N'C')
INSERT [dbo].[OrderItemstbl] ([Id], [OrderId], [ItemName], [ItemId], [status]) VALUES (13, 2, N'Ice-cream', 7, N'D')
INSERT [dbo].[OrderItemstbl] ([Id], [OrderId], [ItemName], [ItemId], [status]) VALUES (14, 3, N'Sweet Corn Veg Soup', 1, N'P')
INSERT [dbo].[OrderItemstbl] ([Id], [OrderId], [ItemName], [ItemId], [status]) VALUES (15, 3, N'Veg Biryani', 4, N'P')
SET IDENTITY_INSERT [dbo].[OrderItemstbl] OFF
/****** Object:  ForeignKey [FK__FoodItem__catego__1367E606]    Script Date: 06/05/2022 13:37:54 ******/
ALTER TABLE [dbo].[FoodItem]  WITH CHECK ADD FOREIGN KEY([categoryID])
REFERENCES [dbo].[Category] ([Id])
GO
/****** Object:  ForeignKey [FK__OrderItem__ItemI__1920BF5C]    Script Date: 06/05/2022 13:37:54 ******/
ALTER TABLE [dbo].[OrderItemstbl]  WITH CHECK ADD FOREIGN KEY([ItemId])
REFERENCES [dbo].[FoodItem] ([Id])
GO
/****** Object:  ForeignKey [FK__OrderItem__Order__182C9B23]    Script Date: 06/05/2022 13:37:54 ******/
ALTER TABLE [dbo].[OrderItemstbl]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[orderTbl] ([Id])
GO
/****** Object:  ForeignKey [FK__orderTbl__Employ__09DE7BCC]    Script Date: 06/05/2022 13:37:54 ******/
ALTER TABLE [dbo].[orderTbl]  WITH CHECK ADD FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[LoginMaster] ([Id])
GO
/****** Object:  ForeignKey [FK__orderTbl__TableI__0AD2A005]    Script Date: 06/05/2022 13:37:54 ******/
ALTER TABLE [dbo].[orderTbl]  WITH CHECK ADD FOREIGN KEY([TableID])
REFERENCES [dbo].[TableMaster] ([Id])
GO
/****** Object:  ForeignKey [FK__TableMast__Emplo__0519C6AF]    Script Date: 06/05/2022 13:37:54 ******/
ALTER TABLE [dbo].[TableMaster]  WITH CHECK ADD FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[LoginMaster] ([Id])
GO
