USE [master]
GO
/****** Object:  Database [ORDERDB]    Script Date: 3/12/2017 11:03:48 PM ******/
CREATE DATABASE [ORDERDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ORDERDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\ORDERDB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ORDERDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\ORDERDB_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ORDERDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ORDERDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ORDERDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ORDERDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ORDERDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ORDERDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ORDERDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ORDERDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ORDERDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [ORDERDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ORDERDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ORDERDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ORDERDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ORDERDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ORDERDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ORDERDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ORDERDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ORDERDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ORDERDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ORDERDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ORDERDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ORDERDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ORDERDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ORDERDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ORDERDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ORDERDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ORDERDB] SET  MULTI_USER 
GO
ALTER DATABASE [ORDERDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ORDERDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ORDERDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ORDERDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [ORDERDB]
GO
/****** Object:  Table [dbo].[DON_DAT_HANG]    Script Date: 3/12/2017 11:03:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DON_DAT_HANG](
	[ID] [nvarchar](10) NOT NULL,
	[ID_KHACH_HANG] [nvarchar](10) NOT NULL,
	[NGAY_GIAO] [date] NULL,
	[TRANG_THAI_THANH_TOAN] [bit] NULL,
	[TONG_CONG] [decimal](18, 0) NULL,
	[VAT] [decimal](18, 0) NULL,
	[TONG_TIEN] [nchar](10) NULL,
	[PHI_VAN_CHUYEN] [nchar](10) NULL,
	[NOTES] [nchar](10) NULL,
	[SDT] [nvarchar](50) NULL,
	[CREATE_BY] [nvarchar](150) NULL,
	[CREATE_TIME] [datetime] NULL,
	[UPDATE_BY] [nvarchar](150) NULL,
	[UPDATE_TIME] [datetime] NULL,
	[TRANG_THAI_XUAT_KHO] [bit] NULL,
 CONSTRAINT [PK_DON_DAT_HANG] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DON_DAT_HANG_DICH_VU]    Script Date: 3/12/2017 11:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DON_DAT_HANG_DICH_VU](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ID_DON_DAT_HANG] [nchar](10) NOT NULL,
	[TEN_SAN_PHAM] [nvarchar](150) NULL,
	[MO_TA] [nvarchar](300) NULL,
	[DON_GIA] [decimal](18, 0) NULL,
	[THANH_TIEN] [decimal](18, 0) NULL,
	[SO_LUONG] [decimal](18, 0) NULL,
	[CREATE_BY] [nvarchar](150) NULL,
	[CREATE_TIME] [datetime] NULL,
	[UPDATE_BY] [nvarchar](150) NULL,
	[UPDATE_TIME] [datetime] NULL,
 CONSTRAINT [PK_DON_DAT_HANG_OTHER] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DON_DAT_HANG_SP]    Script Date: 3/12/2017 11:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DON_DAT_HANG_SP](
	[Id] [int] NOT NULL,
	[ID_DON_DAT_HANG] [nvarchar](10) NOT NULL,
	[TEN_SAN_PHAM] [nvarchar](300) NULL,
	[SO_LUONG] [int] NULL,
	[KICH_THUOC] [nvarchar](50) NULL,
	[DON_VI] [nvarchar](10) NULL,
	[SO_TRANG] [int] NULL,
	[LOAI_BIA] [nvarchar](50) NULL,
	[LOAI_GIAY] [nvarchar](50) NULL,
	[DON_GIA] [decimal](18, 0) NULL,
	[THANH_TIEN] [decimal](18, 0) NULL,
	[CD_CR] [nvarchar](300) NULL,
	[CREATE_BY] [nvarchar](50) NULL,
	[CREATE_TIME] [datetime] NULL,
	[UPDATE_BY] [nvarchar](50) NULL,
	[UPDATE_TIME] [datetime] NULL,
 CONSTRAINT [PK_DON_DAT_HANG_SAN_PHAM] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHACH_HANG]    Script Date: 3/12/2017 11:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACH_HANG](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_KHACH_HANG] [nvarchar](10) NULL,
	[TEN_KHACH_HANG] [nvarchar](150) NOT NULL,
	[DIA_CHI] [nvarchar](255) NULL,
	[EMAIL] [nvarchar](150) NULL,
	[ACC_FTP] [nvarchar](150) NULL,
	[GIAM_GIA] [nvarchar](255) NULL,
	[TEN_SALES] [nvarchar](255) NULL,
	[HOA_HONG_SALES] [nvarchar](10) NULL,
	[GHI_CHU] [ntext] NULL,
	[NGAY_BAT_DAU] [date] NULL,
	[VAN_CHUYEN] [nvarchar](255) NULL,
	[TRANG_THAI] [nvarchar](255) NULL,
	[CREATE_BY] [nvarchar](150) NULL,
	[CREATE_TIME] [datetime] NULL,
	[UPDATE_BY] [nvarchar](150) NULL,
	[UPDATE_TIME] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LIEN_HE]    Script Date: 3/12/2017 11:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LIEN_HE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TEN] [nvarchar](150) NOT NULL,
	[SDT] [nvarchar](50) NULL,
	[ID_KHACH_HANG] [nvarchar](10) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SAN_PHAM]    Script Date: 3/12/2017 11:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SAN_PHAM](
	[id] [int] IDENTITY(1,1000) NOT NULL,
	[TEN_SAN_PHAM] [nvarchar](150) NOT NULL,
	[NOTES] [text] NULL,
 CONSTRAINT [PK_SAN_PHAM] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SAN_PHAM_CHI_TIET]    Script Date: 3/12/2017 11:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SAN_PHAM_CHI_TIET](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_SAN_PHAM] [int] NOT NULL,
	[TEN_SAN_PHAM] [nvarchar](255) NOT NULL,
	[LOAI_BIA] [nvarchar](255) NULL,
	[LOAI_GIAY] [nvarchar](255) NULL,
	[SIZE] [nvarchar](15) NULL,
	[DON_GIA] [decimal](18, 0) NULL,
	[DESCRIPTION] [ntext] NULL,
 CONSTRAINT [PK_SAN_PHAM_CHI_TIET] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [ORDERDB] SET  READ_WRITE 
GO
