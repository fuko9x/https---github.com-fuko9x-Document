USE [ORDERDB]
GO
/****** Object:  Table [dbo].[DON_DAT_HANG]    Script Date: 3/10/2017 11:46:50 PM ******/
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
/****** Object:  Table [dbo].[DON_DAT_HANG_DICH_VU]    Script Date: 3/10/2017 11:46:50 PM ******/
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
/****** Object:  Table [dbo].[DON_DAT_HANG_SP]    Script Date: 3/10/2017 11:46:50 PM ******/
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
/****** Object:  Table [dbo].[KHACH_HANG]    Script Date: 3/10/2017 11:46:50 PM ******/
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
/****** Object:  Table [dbo].[LIEN_HE]    Script Date: 3/10/2017 11:46:50 PM ******/
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
/****** Object:  Table [dbo].[SAN_PHAM]    Script Date: 3/10/2017 11:46:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SAN_PHAM](
	[ID] [nchar](10) NOT NULL,
	[TEN_SAN_PHAM] [nvarchar](255) NOT NULL,
	[SIZE] [nvarchar](15) NULL,
	[DON_VI] [nvarchar](3) NULL,
	[DON_GIA] [decimal](18, 0) NULL,
	[DESCRIPTION] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
