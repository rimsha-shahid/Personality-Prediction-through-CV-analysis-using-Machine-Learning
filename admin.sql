USE [master]
GO
/****** Object:  Database [Admin]    Script Date: 2/1/2022 9:52:24 AM ******/
CREATE DATABASE [Admin]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Admin', FILENAME = N'D:\7th sem\E-commerce\Project Database\Admin.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Admin_log', FILENAME = N'D:\7th sem\E-commerce\Project Database\Admin_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Admin] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Admin].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Admin] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Admin] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Admin] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Admin] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Admin] SET ARITHABORT OFF 
GO
ALTER DATABASE [Admin] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Admin] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Admin] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Admin] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Admin] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Admin] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Admin] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Admin] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Admin] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Admin] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Admin] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Admin] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Admin] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Admin] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Admin] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Admin] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Admin] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Admin] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Admin] SET  MULTI_USER 
GO
ALTER DATABASE [Admin] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Admin] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Admin] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Admin] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Admin] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Admin]
GO
/****** Object:  Table [dbo].[Admintbl]    Script Date: 2/1/2022 9:52:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admintbl](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[AdminName] [varchar](25) NOT NULL,
	[AdminPassword] [varchar](100) NOT NULL,
	[AdminEmail] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Admintbl] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[AdminLogin]    Script Date: 2/1/2022 9:52:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AdminLogin] (@Email varchar(30), @Password varchar(100))
AS
BEGIN
	select * from Admintbl where AdminEmail = @Email AND AdminPassword = @Password
END

GO
/****** Object:  StoredProcedure [dbo].[ALogin]    Script Date: 2/1/2022 9:52:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ALogin] (@Email varchar(30), @Password varchar(100))
AS
BEGIN
	select * from Admintbl where AdminEmail = @Email AND AdminPassword = @Password
END

GO
/****** Object:  StoredProcedure [dbo].[DeleteAdmin]    Script Date: 2/1/2022 9:52:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteAdmin] (@id int)
AS
BEGIN
	delete from Admintbl where AdminID = @id
END

GO
/****** Object:  StoredProcedure [dbo].[GetAdminList]    Script Date: 2/1/2022 9:52:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAdminList]
AS
BEGIN
	select * from Admintbl
END

GO
/****** Object:  StoredProcedure [dbo].[GetEmail]    Script Date: 2/1/2022 9:52:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetEmail] (@email varchar(30))
AS
BEGIN
	select * from Admintbl where AdminEmail = @email
END

GO
USE [master]
GO
ALTER DATABASE [Admin] SET  READ_WRITE 
GO
