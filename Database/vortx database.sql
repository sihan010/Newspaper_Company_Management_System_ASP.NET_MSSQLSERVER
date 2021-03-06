USE [master]
GO
/****** Object:  Database [VortexDB]    Script Date: 8/12/2017 6:30:21 AM ******/
CREATE DATABASE [VortexDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VortexDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\VortexDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'VortexDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\VortexDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [VortexDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VortexDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VortexDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VortexDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VortexDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VortexDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VortexDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [VortexDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [VortexDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [VortexDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VortexDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VortexDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VortexDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VortexDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VortexDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VortexDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VortexDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VortexDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [VortexDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VortexDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VortexDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VortexDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VortexDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VortexDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [VortexDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VortexDB] SET RECOVERY FULL 
GO
ALTER DATABASE [VortexDB] SET  MULTI_USER 
GO
ALTER DATABASE [VortexDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VortexDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VortexDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VortexDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'VortexDB', N'ON'
GO
USE [VortexDB]
GO
/****** Object:  Table [dbo].[category]    Script Date: 8/12/2017 6:30:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[categoryID] [int] NOT NULL,
	[categoryName] [nvarchar](50) NOT NULL,
	[departmentID] [int] NOT NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[department]    Script Date: 8/12/2017 6:30:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[department](
	[departmentID] [int] NOT NULL,
	[departmentName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_department] PRIMARY KEY CLUSTERED 
(
	[departmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[loginInfo]    Script Date: 8/12/2017 6:30:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loginInfo](
	[userID] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[role] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_loginInfo] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[news]    Script Date: 8/12/2017 6:30:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[news](
	[newsID] [int] NOT NULL,
	[report] [text] NOT NULL,
	[category] [nvarchar](50) NOT NULL,
	[submisstinDate] [datetime] NOT NULL,
	[approvedDate] [datetime] NOT NULL,
	[releaseDate] [datetime] NOT NULL,
	[submittedBy] [nvarchar](50) NOT NULL,
	[approvedBy] [nvarchar](50) NOT NULL,
	[checkedBy] [nvarchar](50) NOT NULL,
	[stateID] [int] NOT NULL,
 CONSTRAINT [PK_news] PRIMARY KEY CLUSTERED 
(
	[newsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[notification]    Script Date: 8/12/2017 6:30:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notification](
	[notificationID] [int] NOT NULL,
	[notificationName] [nvarchar](50) NOT NULL,
	[notificationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_notification] PRIMARY KEY CLUSTERED 
(
	[notificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[state]    Script Date: 8/12/2017 6:30:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[state](
	[stateID] [int] NOT NULL,
	[stateName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_state] PRIMARY KEY CLUSTERED 
(
	[stateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[user]    Script Date: 8/12/2017 6:30:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[userID] [nvarchar](50) NOT NULL,
	[fname] [nvarchar](50) NOT NULL,
	[lname] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[mobile] [nvarchar](50) NOT NULL,
	[designation] [nvarchar](50) NOT NULL,
	[workingArea] [nvarchar](50) NOT NULL,
	[joined] [datetime] NOT NULL,
	[departmentID] [int] NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[user_notification]    Script Date: 8/12/2017 6:30:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_notification](
	[user_notificationID] [int] NOT NULL,
	[notificationID] [int] NOT NULL,
	[userID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_user_notification] PRIMARY KEY CLUSTERED 
(
	[user_notificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[category]  WITH CHECK ADD  CONSTRAINT [FK_category_department] FOREIGN KEY([departmentID])
REFERENCES [dbo].[department] ([departmentID])
GO
ALTER TABLE [dbo].[category] CHECK CONSTRAINT [FK_category_department]
GO
ALTER TABLE [dbo].[news]  WITH CHECK ADD  CONSTRAINT [FK_news_state] FOREIGN KEY([stateID])
REFERENCES [dbo].[state] ([stateID])
GO
ALTER TABLE [dbo].[news] CHECK CONSTRAINT [FK_news_state]
GO
ALTER TABLE [dbo].[news]  WITH CHECK ADD  CONSTRAINT [FK_news_user] FOREIGN KEY([submittedBy])
REFERENCES [dbo].[user] ([userID])
GO
ALTER TABLE [dbo].[news] CHECK CONSTRAINT [FK_news_user]
GO
ALTER TABLE [dbo].[news]  WITH CHECK ADD  CONSTRAINT [FK_news_user1] FOREIGN KEY([approvedBy])
REFERENCES [dbo].[user] ([userID])
GO
ALTER TABLE [dbo].[news] CHECK CONSTRAINT [FK_news_user1]
GO
ALTER TABLE [dbo].[news]  WITH CHECK ADD  CONSTRAINT [FK_news_user2] FOREIGN KEY([checkedBy])
REFERENCES [dbo].[user] ([userID])
GO
ALTER TABLE [dbo].[news] CHECK CONSTRAINT [FK_news_user2]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user_department] FOREIGN KEY([departmentID])
REFERENCES [dbo].[department] ([departmentID])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user_department]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user_loginInfo] FOREIGN KEY([userID])
REFERENCES [dbo].[loginInfo] ([userID])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user_loginInfo]
GO
ALTER TABLE [dbo].[user_notification]  WITH CHECK ADD  CONSTRAINT [FK_user_notification_notification] FOREIGN KEY([notificationID])
REFERENCES [dbo].[notification] ([notificationID])
GO
ALTER TABLE [dbo].[user_notification] CHECK CONSTRAINT [FK_user_notification_notification]
GO
ALTER TABLE [dbo].[user_notification]  WITH CHECK ADD  CONSTRAINT [FK_user_notification_user] FOREIGN KEY([userID])
REFERENCES [dbo].[user] ([userID])
GO
ALTER TABLE [dbo].[user_notification] CHECK CONSTRAINT [FK_user_notification_user]
GO
USE [master]
GO
ALTER DATABASE [VortexDB] SET  READ_WRITE 
GO
