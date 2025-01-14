USE [master]
GO
/****** Object:  Database [DatabaseBloggingContext]    Script Date: 03/12/2024 2:45:06 PM ******/
CREATE DATABASE [DatabaseBloggingContext] ON  PRIMARY 
( NAME = N'DatabaseBloggingContext', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\DatabaseBloggingContext.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DatabaseBloggingContext_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\DatabaseBloggingContext_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DatabaseBloggingContext] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DatabaseBloggingContext].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DatabaseBloggingContext] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET ARITHABORT OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DatabaseBloggingContext] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DatabaseBloggingContext] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DatabaseBloggingContext] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DatabaseBloggingContext] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DatabaseBloggingContext] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DatabaseBloggingContext] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DatabaseBloggingContext] SET  MULTI_USER 
GO
ALTER DATABASE [DatabaseBloggingContext] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DatabaseBloggingContext] SET DB_CHAINING OFF 
GO
USE [DatabaseBloggingContext]
GO
/****** Object:  Table [dbo].[BlogSet]    Script Date: 03/12/2024 2:45:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogSet](
	[BlogId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Url] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_BlogSet] PRIMARY KEY CLUSTERED 
(
	[BlogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostSet]    Script Date: 03/12/2024 2:45:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostSet](
	[PostId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[BlogBlogId] [int] NOT NULL,
 CONSTRAINT [PK_PostSet] PRIMARY KEY CLUSTERED 
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[PostSet]  WITH CHECK ADD  CONSTRAINT [FK_BlogPost] FOREIGN KEY([BlogBlogId])
REFERENCES [dbo].[BlogSet] ([BlogId])
GO
ALTER TABLE [dbo].[PostSet] CHECK CONSTRAINT [FK_BlogPost]
GO
USE [master]
GO
ALTER DATABASE [DatabaseBloggingContext] SET  READ_WRITE 
GO
