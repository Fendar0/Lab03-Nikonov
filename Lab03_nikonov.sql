USE [master]
GO
/****** Object:  Database [DBLab3]    Script Date: 22.02.2022 10:41:03 ******/
CREATE DATABASE [DBLab3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBLab3', FILENAME = N'D:\SQL SERVER\MSSQL15.MSSQLSERVER\MSSQL\DATA\DBLab3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBLab3_log', FILENAME = N'D:\SQL SERVER\MSSQL15.MSSQLSERVER\MSSQL\DATA\DBLab3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DBLab3] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBLab3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBLab3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBLab3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBLab3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBLab3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBLab3] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBLab3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBLab3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBLab3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBLab3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBLab3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBLab3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBLab3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBLab3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBLab3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBLab3] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBLab3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBLab3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBLab3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBLab3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBLab3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBLab3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBLab3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBLab3] SET RECOVERY FULL 
GO
ALTER DATABASE [DBLab3] SET  MULTI_USER 
GO
ALTER DATABASE [DBLab3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBLab3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBLab3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBLab3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBLab3] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DBLab3', N'ON'
GO
ALTER DATABASE [DBLab3] SET QUERY_STORE = OFF
GO
USE [DBLab3]
GO
/****** Object:  Table [dbo].[aluminum]    Script Date: 22.02.2022 10:41:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aluminum](
	[wave_length] [float] NULL,
	[rel_intensity] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[argon]    Script Date: 22.02.2022 10:41:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[argon](
	[wave_length] [float] NULL,
	[rel_intensity] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[barium]    Script Date: 22.02.2022 10:41:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[barium](
	[wave_length] [float] NULL,
	[rel_intensity] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[calcium]    Script Date: 22.02.2022 10:41:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[calcium](
	[wave_length] [float] NULL,
	[rel_intensity] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[carbon]    Script Date: 22.02.2022 10:41:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carbon](
	[wave_length] [float] NULL,
	[rel_intensity] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[elements]    Script Date: 22.02.2022 10:41:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[elements](
	[atomic_number] [int] NULL,
	[full_name] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[helium]    Script Date: 22.02.2022 10:41:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[helium](
	[wave_length] [float] NULL,
	[rel_intensity] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hydrogen]    Script Date: 22.02.2022 10:41:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hydrogen](
	[wave_length] [float] NULL,
	[rel_intensity] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iron]    Script Date: 22.02.2022 10:41:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iron](
	[wave_length] [float] NULL,
	[rel_intensity] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[krypton]    Script Date: 22.02.2022 10:41:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[krypton](
	[wave_length] [float] NULL,
	[rel_intensity] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lithium]    Script Date: 22.02.2022 10:41:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lithium](
	[wave_length] [float] NULL,
	[rel_intensity] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[magnesium]    Script Date: 22.02.2022 10:41:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[magnesium](
	[wave_length] [float] NULL,
	[rel_intensity] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mercury]    Script Date: 22.02.2022 10:41:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mercury](
	[wave_length] [float] NULL,
	[rel_intensity] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[neon]    Script Date: 22.02.2022 10:41:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[neon](
	[wave_length] [float] NULL,
	[rel_intensity] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nitrogen]    Script Date: 22.02.2022 10:41:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nitrogen](
	[wave_length] [float] NULL,
	[rel_intensity] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[oxygen]    Script Date: 22.02.2022 10:41:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oxygen](
	[wave_length] [float] NULL,
	[rel_intensity] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[potassium]    Script Date: 22.02.2022 10:41:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[potassium](
	[wave_length] [float] NULL,
	[rel_intensity] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[silicon]    Script Date: 22.02.2022 10:41:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[silicon](
	[wave_length] [float] NULL,
	[rel_intensity] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sodium]    Script Date: 22.02.2022 10:41:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sodium](
	[wave_length] [float] NULL,
	[rel_intensity] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spectral_lines]    Script Date: 22.02.2022 10:41:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spectral_lines](
	[atomic_number] [int] NULL,
	[wave_length] [float] NULL,
	[rel_intensity] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[strontium]    Script Date: 22.02.2022 10:41:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[strontium](
	[wave_length] [float] NULL,
	[rel_intensity] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sulfur]    Script Date: 22.02.2022 10:41:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sulfur](
	[wave_length] [float] NULL,
	[rel_intensity] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xenon]    Script Date: 22.02.2022 10:41:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xenon](
	[wave_length] [float] NULL,
	[rel_intensity] [float] NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [DBLab3] SET  READ_WRITE 
GO
