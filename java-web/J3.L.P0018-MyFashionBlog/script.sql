USE [master]
GO
/****** Object:  Database [J3.L.P0018]    Script Date: 06/18/2018 12:08:48 ******/
CREATE DATABASE [J3.L.P0018] 
GO
ALTER DATABASE [J3.L.P0018] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [J3.L.P0018].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [J3.L.P0018] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [J3.L.P0018] SET ANSI_NULLS OFF
GO
ALTER DATABASE [J3.L.P0018] SET ANSI_PADDING OFF
GO
ALTER DATABASE [J3.L.P0018] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [J3.L.P0018] SET ARITHABORT OFF
GO
ALTER DATABASE [J3.L.P0018] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [J3.L.P0018] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [J3.L.P0018] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [J3.L.P0018] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [J3.L.P0018] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [J3.L.P0018] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [J3.L.P0018] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [J3.L.P0018] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [J3.L.P0018] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [J3.L.P0018] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [J3.L.P0018] SET  DISABLE_BROKER
GO
ALTER DATABASE [J3.L.P0018] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [J3.L.P0018] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [J3.L.P0018] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [J3.L.P0018] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [J3.L.P0018] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [J3.L.P0018] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [J3.L.P0018] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [J3.L.P0018] SET  READ_WRITE
GO
ALTER DATABASE [J3.L.P0018] SET RECOVERY SIMPLE
GO
ALTER DATABASE [J3.L.P0018] SET  MULTI_USER
GO
ALTER DATABASE [J3.L.P0018] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [J3.L.P0018] SET DB_CHAINING OFF
GO
USE [J3.L.P0018]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 06/18/2018 12:08:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[message] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Message] ON
INSERT [dbo].[Message] ([id], [name], [email], [message]) VALUES (1, N'JM Thuong', N'jmthuong97@gmail.com', N'ABC xyz')
INSERT [dbo].[Message] ([id], [name], [email], [message]) VALUES (2, N'thuong', N'jmthuong97@gmail.com', N'as')
INSERT [dbo].[Message] ([id], [name], [email], [message]) VALUES (3, N'name', N'jmthuong97@gmail.com', N'asasd')
INSERT [dbo].[Message] ([id], [name], [email], [message]) VALUES (4, N'name', N'jmthuong97@gmail.com', N's')
INSERT [dbo].[Message] ([id], [name], [email], [message]) VALUES (5, N'asd', N'jmthuong97@gma.com', N'asd')
INSERT [dbo].[Message] ([id], [name], [email], [message]) VALUES (6, N'C', N'jmthuong97@gma.com', N'cfasd')
INSERT [dbo].[Message] ([id], [name], [email], [message]) VALUES (7, N'                                                  ', N'jmthuong97@gma.com', N'                                        ')
INSERT [dbo].[Message] ([id], [name], [email], [message]) VALUES (8, N'                   ', N'jmthuong97@gma.com', N'             ')
INSERT [dbo].[Message] ([id], [name], [email], [message]) VALUES (9, N'                                                  ', N'jmthuong97@gma.com', N'                    ')
SET IDENTITY_INSERT [dbo].[Message] OFF
/****** Object:  Table [dbo].[Information]    Script Date: 06/18/2018 12:08:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Information](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[age] [int] NOT NULL,
	[imgLink] [nvarchar](50) NOT NULL,
	[description] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Information] ([id], [name], [age], [imgLink], [description]) VALUES (1, N'Susan Stratton', 25, N'i284852689410723613._szw480h1280_.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.')
/****** Object:  Table [dbo].[Home]    Script Date: 06/18/2018 12:08:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Home](
	[id] [int] NOT NULL,
	[type] [nvarchar](50) NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[imgLink] [nvarchar](50) NOT NULL,
	[shortContent] [nvarchar](max) NOT NULL,
	[fullContent] [nvarchar](max) NOT NULL,
	[createDate] [date] NOT NULL,
	[like] [int] NOT NULL,
	[comment] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Home] ([id], [type], [title], [imgLink], [shortContent], [fullContent], [createDate], [like], [comment]) VALUES (1, N'camera', N'In New York', N'i284852689410723512._szw1280h1280_.jpg', N'Claritas est etiam processus dynamicus, qui sequitur', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.', CAST(0x773E0B00 AS Date), 0, 0)
INSERT [dbo].[Home] ([id], [type], [title], [imgLink], [shortContent], [fullContent], [createDate], [like], [comment]) VALUES (2, N'camera', N'Awesome Gucci', N'i284852689410723250._szw1280h1280_.jpg', N'Claritas est etiam processus dynamicus, qui sequitur', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.', CAST(0x2E3E0B00 AS Date), 0, 0)
INSERT [dbo].[Home] ([id], [type], [title], [imgLink], [shortContent], [fullContent], [createDate], [like], [comment]) VALUES (3, N'camera', N'Special Offer', N'i284852689410723270._szw1280h1280_.jpg', N'Claritas est etiam processus dynamicus, qui sequitur', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.', CAST(0x523A0B00 AS Date), 0, 0)
INSERT [dbo].[Home] ([id], [type], [title], [imgLink], [shortContent], [fullContent], [createDate], [like], [comment]) VALUES (4, N'pen', N'In New York', N'i284852689410723270._szw1280h1280_.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. full contentn....', CAST(0x523A0B00 AS Date), 0, 0)
INSERT [dbo].[Home] ([id], [type], [title], [imgLink], [shortContent], [fullContent], [createDate], [like], [comment]) VALUES (5, N'pen', N'Ho Chi Minh Park', N'i284852689410723270._szw1280h1280_.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. full contentn....', CAST(0x523A0B00 AS Date), 5, 0)
INSERT [dbo].[Home] ([id], [type], [title], [imgLink], [shortContent], [fullContent], [createDate], [like], [comment]) VALUES (6, N'pen', N'JM Thuong', N'i284852689410723250._szw1280h1280_.jpg', N'Claritas est etiam processus dynamicus, qui sequitur', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.', CAST(0x2E3E0B00 AS Date), 6, 9)
