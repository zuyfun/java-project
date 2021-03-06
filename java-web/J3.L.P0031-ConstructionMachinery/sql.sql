create database [Construction]
go
USE [Construction]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 3/17/2021 2:49:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NOT NULL,
	[shortDes] [nvarchar](max) NOT NULL,
	[longDes] [nvarchar](max) NOT NULL,
	[image] [nvarchar](max) NOT NULL,
	[address] [nvarchar](max) NULL,
	[city] [nvarchar](max) NULL,
	[country] [nvarchar](max) NULL,
	[tel] [nvarchar](max) NOT NULL,
	[email] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Machine]    Script Date: 3/17/2021 2:49:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Machine](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[shortDes] [nvarchar](max) NOT NULL,
	[longDes] [nvarchar](max) NOT NULL,
	[image] [nvarchar](max) NOT NULL,
	[type] [nvarchar](50) NOT NULL,
	[publishDate] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 3/17/2021 2:49:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[email] [nvarchar](max) NOT NULL,
	[message] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Share]    Script Date: 3/17/2021 2:49:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Share](
	[icon] [nvarchar](max) NOT NULL,
	[socialNetwork] [nvarchar](max) NOT NULL,
	[URL] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Company] ON 

INSERT [dbo].[Company] ([id], [title], [shortDes], [longDes], [image], [address], [city], [country], [tel], [email]) VALUES (2, N'Retailer and Supplier of Construction Machinery', N'Contact your Machinery Specialist for a Free Quote - Call 12345

Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy ', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.', N'intro.jpg', NULL, NULL, NULL, N'123456', N'your-email@your-email.com')
SET IDENTITY_INSERT [dbo].[Company] OFF
GO
SET IDENTITY_INSERT [dbo].[Machine] ON 

INSERT [dbo].[Machine] ([id], [name], [shortDes], [longDes], [image], [type], [publishDate]) VALUES (2, N'Machine1', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit

Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.', N'm1.jpg', N'sale', CAST(N'2019-12-12' AS Date))
INSERT [dbo].[Machine] ([id], [name], [shortDes], [longDes], [image], [type], [publishDate]) VALUES (5, N'Machine2', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit

Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.', N'm2.jpg', N'sale', CAST(N'2019-11-12' AS Date))
INSERT [dbo].[Machine] ([id], [name], [shortDes], [longDes], [image], [type], [publishDate]) VALUES (6, N'Machine3', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit

Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.', N'm3.jpg', N'sale', CAST(N'2019-10-12' AS Date))
INSERT [dbo].[Machine] ([id], [name], [shortDes], [longDes], [image], [type], [publishDate]) VALUES (7, N'Machine4', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit

Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.', N'm4.jpg', N'sale', CAST(N'2019-09-12' AS Date))
INSERT [dbo].[Machine] ([id], [name], [shortDes], [longDes], [image], [type], [publishDate]) VALUES (9, N'Machine5', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit

Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.', N'm5.jpg', N'sale', CAST(N'2019-12-10' AS Date))
INSERT [dbo].[Machine] ([id], [name], [shortDes], [longDes], [image], [type], [publishDate]) VALUES (11, N'Machine6', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit

Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.', N'm6.jpg', N'sale', CAST(N'2019-12-08' AS Date))
INSERT [dbo].[Machine] ([id], [name], [shortDes], [longDes], [image], [type], [publishDate]) VALUES (13, N'Machine7', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit

Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.', N'm2.jpg', N'none', CAST(N'2018-12-12' AS Date))
SET IDENTITY_INSERT [dbo].[Machine] OFF
GO
SET IDENTITY_INSERT [dbo].[Message] ON 

INSERT [dbo].[Message] ([id], [name], [email], [message]) VALUES (1, N'name', N'email', N'message')
INSERT [dbo].[Message] ([id], [name], [email], [message]) VALUES (2, N'as', N'1@gmail.com', N'asx')
INSERT [dbo].[Message] ([id], [name], [email], [message]) VALUES (4, N'asdf', N'1@gmail.com', N'qwae')
INSERT [dbo].[Message] ([id], [name], [email], [message]) VALUES (5, N'huongg', N'hha3k50@gmail.com', N'hihi')
INSERT [dbo].[Message] ([id], [name], [email], [message]) VALUES (6, N'wwq', N'123@gmail.com', N'qwqwd')
INSERT [dbo].[Message] ([id], [name], [email], [message]) VALUES (19, N'HIHIHI', N'123@gmail.com', N'aaa')
SET IDENTITY_INSERT [dbo].[Message] OFF
GO
INSERT [dbo].[Share] ([icon], [socialNetwork], [URL]) VALUES (N'f.PNG', N'FaceBook', N'https://www.facebook.com/')
INSERT [dbo].[Share] ([icon], [socialNetwork], [URL]) VALUES (N'tw.PNG', N'Twitter', N'https://twitter.com/')
INSERT [dbo].[Share] ([icon], [socialNetwork], [URL]) VALUES (N'g.PNG', N'Google+', N'https://www.google.com.vn/')
GO
