USE [master]
GO
/****** Object:  Database [Nhom17.13A.QuanLyLinhKienDB]    Script Date: 05/06/2020 2:12:11 PM ******/
CREATE DATABASE [Nhom17.13A.QuanLyLinhKienDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Nhom17.13A.QuanLyLinhKienDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Nhom17.13A.QuanLyLinhKienDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Nhom17.13A.QuanLyLinhKienDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Nhom17.13A.QuanLyLinhKienDB_log.ldf' , SIZE = 3976KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Nhom17.13A.QuanLyLinhKienDB] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Nhom17.13A.QuanLyLinhKienDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Nhom17.13A.QuanLyLinhKienDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Nhom17.13A.QuanLyLinhKienDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Nhom17.13A.QuanLyLinhKienDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Nhom17.13A.QuanLyLinhKienDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Nhom17.13A.QuanLyLinhKienDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [Nhom17.13A.QuanLyLinhKienDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Nhom17.13A.QuanLyLinhKienDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Nhom17.13A.QuanLyLinhKienDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Nhom17.13A.QuanLyLinhKienDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Nhom17.13A.QuanLyLinhKienDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Nhom17.13A.QuanLyLinhKienDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Nhom17.13A.QuanLyLinhKienDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Nhom17.13A.QuanLyLinhKienDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Nhom17.13A.QuanLyLinhKienDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Nhom17.13A.QuanLyLinhKienDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Nhom17.13A.QuanLyLinhKienDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Nhom17.13A.QuanLyLinhKienDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Nhom17.13A.QuanLyLinhKienDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Nhom17.13A.QuanLyLinhKienDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Nhom17.13A.QuanLyLinhKienDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Nhom17.13A.QuanLyLinhKienDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Nhom17.13A.QuanLyLinhKienDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Nhom17.13A.QuanLyLinhKienDB] SET RECOVERY FULL 
GO
ALTER DATABASE [Nhom17.13A.QuanLyLinhKienDB] SET  MULTI_USER 
GO
ALTER DATABASE [Nhom17.13A.QuanLyLinhKienDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Nhom17.13A.QuanLyLinhKienDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Nhom17.13A.QuanLyLinhKienDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Nhom17.13A.QuanLyLinhKienDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Nhom17.13A.QuanLyLinhKienDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Nhom17.13A.QuanLyLinhKienDB', N'ON'
GO
ALTER DATABASE [Nhom17.13A.QuanLyLinhKienDB] SET QUERY_STORE = OFF
GO
USE [Nhom17.13A.QuanLyLinhKienDB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Nhom17.13A.QuanLyLinhKienDB]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 05/06/2020 2:12:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accessory]    Script Date: 05/06/2020 2:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessory](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[GoodsReceiptDate] [datetime] NOT NULL,
	[Inventory] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[WarrantyTime] [nvarchar](max) NULL,
	[CalculationUnit] [nvarchar](max) NULL,
	[CPU] [nvarchar](max) NULL,
	[ProcessingSpeed] [nvarchar](max) NULL,
	[Size] [nvarchar](max) NULL,
	[Socket] [nvarchar](max) NULL,
	[Chipset] [nvarchar](max) NULL,
	[Memory] [nvarchar](max) NULL,
	[Version] [nvarchar](max) NULL,
	[Bus] [nvarchar](max) NULL,
	[BIT] [nvarchar](max) NULL,
	[Power] [nvarchar](max) NULL,
	[ProducerId] [int] NOT NULL,
	[CategoryId] [nvarchar](128) NULL,
	[Avatar] [nvarchar](max) NULL,
	[Cores] [nvarchar](max) NULL,
	[Threads] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Accessory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 05/06/2020 2:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 05/06/2020 2:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[NumberPhone] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[Points] [int] NOT NULL,
	[BirthDate] [datetime] NOT NULL,
	[IdentifyNumber] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 05/06/2020 2:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreationTime] [datetime] NOT NULL,
	[TotalPrice] [float] NOT NULL,
	[StaffId] [int] NOT NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_dbo.Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 05/06/2020 2:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[AccessoryId] [nvarchar](128) NOT NULL,
	[OrderId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[AccessoryName] [nvarchar](max) NULL,
	[AccessoryCalculationUnit] [nvarchar](max) NULL,
	[AccessoryPrice] [float] NULL,
 CONSTRAINT [PK_dbo.OrderDetail] PRIMARY KEY CLUSTERED 
(
	[AccessoryId] ASC,
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producer]    Script Date: 05/06/2020 2:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.Producer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 05/06/2020 2:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[NumberPhone] [nvarchar](max) NOT NULL,
	[IdentifyNumber] [nvarchar](max) NOT NULL,
	[BirthDate] [datetime] NOT NULL,
	[Password] [nvarchar](max) NULL,
	[IsActived] [bit] NOT NULL,
	[Avatar] [nvarchar](max) NULL,
	[Role] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Staff] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CategoryId]    Script Date: 05/06/2020 2:12:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_CategoryId] ON [dbo].[Accessory]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProducerId]    Script Date: 05/06/2020 2:12:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProducerId] ON [dbo].[Accessory]
(
	[ProducerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerId]    Script Date: 05/06/2020 2:12:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_CustomerId] ON [dbo].[Order]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StaffId]    Script Date: 05/06/2020 2:12:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_StaffId] ON [dbo].[Order]
(
	[StaffId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AccessoryId]    Script Date: 05/06/2020 2:12:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccessoryId] ON [dbo].[OrderDetail]
(
	[AccessoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderId]    Script Date: 05/06/2020 2:12:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderId] ON [dbo].[OrderDetail]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Customer] ADD  DEFAULT ('') FOR [IdentifyNumber]
GO
ALTER TABLE [dbo].[Staff] ADD  DEFAULT ((0)) FOR [Role]
GO
ALTER TABLE [dbo].[Accessory]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Accessory_dbo.Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Accessory] CHECK CONSTRAINT [FK_dbo.Accessory_dbo.Category_CategoryId]
GO
ALTER TABLE [dbo].[Accessory]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Accessory_dbo.Producer_ProducerId] FOREIGN KEY([ProducerId])
REFERENCES [dbo].[Producer] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Accessory] CHECK CONSTRAINT [FK_dbo.Accessory_dbo.Producer_ProducerId]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Order_dbo.Customer_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_dbo.Order_dbo.Customer_CustomerId]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Order_dbo.Staff_StaffId] FOREIGN KEY([StaffId])
REFERENCES [dbo].[Staff] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_dbo.Order_dbo.Staff_StaffId]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderDetail_dbo.Accessory_AccessoryId] FOREIGN KEY([AccessoryId])
REFERENCES [dbo].[Accessory] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_dbo.OrderDetail_dbo.Accessory_AccessoryId]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderDetail_dbo.Order_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_dbo.OrderDetail_dbo.Order_OrderId]
GO
/****** Object:  StoredProcedure [dbo].[GetRevenueForMonth]    Script Date: 05/06/2020 2:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetRevenueForMonth] @Month int, @Year int, @StartDay int, @Endday int AS SELECT SUM(TotalPrice) as "TotalRevenue", MONTH(CreationTime) as 'Month', YEAR(CreationTime) as 'Year' FROM [dbo].[Order] WHERE YEAR(CreationTime) = @Year AND MONTH(CreationTime) = @Month AND (DAY(CreationTime) >= @StartDay AND DAY(CreationTime) <= @Endday) GROUP BY MONTH(CreationTime), YEAR(CreationTime) 
GO
/****** Object:  StoredProcedure [dbo].[GetRevenueForMonthAndYear]    Script Date: 05/06/2020 2:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetRevenueForMonthAndYear] @Year int AS SELECT Sum(TotalPrice) as "TotalRevenue", MONTH(CreationTime) as 'Month', YEAR(CreationTime) as 'Year' FROM [dbo].[Order] WHERE YEAR(CreationTime) = @Year GROUP BY YEAR(CreationTime) , MONTH(CreationTime)
GO
/****** Object:  StoredProcedure [dbo].[GetStatisticByDay]    Script Date: 05/06/2020 2:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetStatisticByDay] @Year int, @Month int, @Day int AS Select A.Name, Inventory, Status as 'Guarantee', SUM(Quantity) as 'SoldOut' FROM Accessory A, OrderDetail OD, [dbo].[Order] O WHERE    A.Id = AccessoryId AND    DAY(CreationTime) = @Day AND    MONTH(CreationTime) = @Month AND    YEAR(CreationTime) = @Year GROUP BY A.Name, DAY(CreationTime), MONTH(CreationTime), YEAR(CreationTime), Inventory, Status, A.Price ORDER BY SUM(Quantity) DESC 
GO
/****** Object:  StoredProcedure [dbo].[GetStatisticByMonth]    Script Date: 05/06/2020 2:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetStatisticByMonth] @Year int, @Month int AS Select A.Name, Inventory, Status as 'Guarantee', SUM(Quantity) as 'SoldOut' FROM Accessory A, OrderDetail OD, [dbo].[Order] O WHERE     A.Id = AccessoryId AND     MONTH(CreationTime) = @Month AND     YEAR(CreationTime) = @Year GROUP BY A.Name, MONTH(CreationTime), YEAR(CreationTime), Inventory, Status, A.Price ORDER BY SUM(Quantity) DESC 
GO
/****** Object:  StoredProcedure [dbo].[GetStatisticByYear]    Script Date: 05/06/2020 2:12:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetStatisticByYear] @Year int AS Select A.Name, Inventory, Status as 'Guarantee', SUM(Quantity) as 'SoldOut' FROM Accessory A, OrderDetail OD, [dbo].[Order] O WHERE     A.Id = AccessoryId AND     YEAR(CreationTime) = @Year GROUP BY A.Name, YEAR(CreationTime), Inventory, Status, A.Price ORDER BY SUM(Quantity) DESC 
GO
USE [master]
GO
ALTER DATABASE [Nhom17.13A.QuanLyLinhKienDB] SET  READ_WRITE 
GO
