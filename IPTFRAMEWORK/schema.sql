USE [IPTframework]
GO
/****** Object:  Table [dbo].[Hospital]    Script Date: 12/22/2020 5:39:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hospital](
	[Id] [int] IDENTITY(100,100) NOT NULL,
	[HospitalName] [varchar](10) NOT NULL,
	[HospitalIncharge] [varchar](15) NOT NULL,
	[HospitalAddress] [varchar](20) NOT NULL,
	[HospitalNumber] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicine]    Script Date: 12/22/2020 5:39:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicine](
	[Name] [varchar](15) NOT NULL,
	[MedicineTime] [varchar](10) NOT NULL,
	[MedicinePrice] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 12/22/2020 5:39:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[Id] [int] IDENTITY(0,1) NOT NULL,
	[Name] [varchar](10) NOT NULL,
	[Address] [varchar](20) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[PhoneNumber] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Treatment]    Script Date: 12/22/2020 5:39:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Treatment](
	[Diagnose] [varchar](15) NOT NULL,
	[HospitalId] [int] NOT NULL,
	[MedicineName] [varchar](15) NOT NULL,
	[PatientId] [int] NOT NULL,
 CONSTRAINT [Unique_OrderStatus] UNIQUE NONCLUSTERED 
(
	[PatientId] ASC,
	[HospitalId] ASC,
	[MedicineName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Treatment]  WITH CHECK ADD  CONSTRAINT [FK_Treatment_Hospital] FOREIGN KEY([HospitalId])
REFERENCES [dbo].[Hospital] ([Id])
GO
ALTER TABLE [dbo].[Treatment] CHECK CONSTRAINT [FK_Treatment_Hospital]
GO
ALTER TABLE [dbo].[Treatment]  WITH CHECK ADD  CONSTRAINT [FK_Treatment_Medicine] FOREIGN KEY([MedicineName])
REFERENCES [dbo].[Medicine] ([Name])
GO
ALTER TABLE [dbo].[Treatment] CHECK CONSTRAINT [FK_Treatment_Medicine]
GO
ALTER TABLE [dbo].[Treatment]  WITH CHECK ADD  CONSTRAINT [FK_Treatment_Patient] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patient] ([Id])
GO
ALTER TABLE [dbo].[Treatment] CHECK CONSTRAINT [FK_Treatment_Patient]
GO
