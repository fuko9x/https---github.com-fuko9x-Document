USE [ORDERDB]
GO

/****** Object:  Table [dbo].[SAN_PHAM]    Script Date: 06/03/2017 10:07:20 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SAN_PHAM](
	[ID] [nchar](10) NOT NULL,
	[TEN_SAN_PHAM] [nvarchar](255) NOT NULL,
	[SIZE] [nvarchar](15) NULL,
	[DON_VI] [nvarchar](3) NULL,
	[DON_GIA] [float] NULL,
	[DESCRIPTION] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

