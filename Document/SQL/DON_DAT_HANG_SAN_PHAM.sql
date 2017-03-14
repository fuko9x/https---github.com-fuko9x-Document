USE [ORDERDB]
GO

/****** Object:  Table [dbo].[DON_DAT_HANG_SAN_PHAM]    Script Date: 3/9/2017 10:39:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DON_DAT_HANG_SAN_PHAM](
	[Id] [int] NOT NULL,
	[ID_DON_DAT_HANG] [nvarchar](10) NOT NULL,
	[STT] [int] NOT NULL,
	[TEN_SAN_PHAM] [nvarchar](300) NULL,
	[SO_LUONG] [int] NULL,
	[KICH_THUOC] [nvarchar](50) NULL,
	[DON_VI] [nvarchar](10) NULL,
	[SO_TRANG] [int] NULL,
	[LOAI_BIA] [nvarchar](50) NULL,
	[LOAI_GIAY] [nvarchar](50) NULL,
	[DON_GIA] [int] NULL,
	[THANH_TIEN] [int] NULL,
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
