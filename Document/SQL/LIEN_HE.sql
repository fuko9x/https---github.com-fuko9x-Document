USE [ORDERDB]
GO

/****** Object:  Table [dbo].[LIEN_HE]    Script Date: 06/03/2017 8:30:34 PM ******/
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

