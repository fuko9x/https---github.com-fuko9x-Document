USE [ORDERDB]
GO

/****** Object:  Table [dbo].[KHACH_HANG]    Script Date: 3/9/2017 11:51:56 PM ******/
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

