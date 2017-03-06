USE [ORDERDB]
GO

/****** Object:  Table [dbo].[ORDER]    Script Date: 06/03/2017 10:07:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[ORDER](
	[ID] [nvarchar](9) NOT NULL,
	[ID_KHACH_HANG] [nvarchar](10) NOT NULL,
	[TEN_SP] [nvarchar](255) NOT NULL,
	[TEN_CD] [nvarchar](255) NULL,
	[TEN_CR] [nvarchar](255) NULL,
	[KICH_THUOC] [nchar](10) NULL,
	[SO_TRANG] [nchar](10) NULL,
	[LOAI_BIA] [nchar](10) NULL,
	[LOAI_GIAY] [nchar](10) NULL,
	[SO_LUONG] [nchar](10) NULL,
	[DON_GIA] [nchar](10) NULL,
	[CHIET_KHAU] [nchar](10) NULL,
	[NGAY_GIAO] [date] NULL,
	[TRANG_THAI] [char](1) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

