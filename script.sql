USE [master]
GO
/****** Object:  Database [XinDianChengJiMIs2]    Script Date: 05/13/2021 19:00:27 ******/
CREATE DATABASE [XinDianChengJiMIs2] ON  PRIMARY 
( NAME = N'XinDianChengJiMIs2', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\XinDianChengJiMIs2.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'XinDianChengJiMIs2_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\XinDianChengJiMIs2_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [XinDianChengJiMIs2] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [XinDianChengJiMIs2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [XinDianChengJiMIs2] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [XinDianChengJiMIs2] SET ANSI_NULLS OFF
GO
ALTER DATABASE [XinDianChengJiMIs2] SET ANSI_PADDING OFF
GO
ALTER DATABASE [XinDianChengJiMIs2] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [XinDianChengJiMIs2] SET ARITHABORT OFF
GO
ALTER DATABASE [XinDianChengJiMIs2] SET AUTO_CLOSE ON
GO
ALTER DATABASE [XinDianChengJiMIs2] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [XinDianChengJiMIs2] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [XinDianChengJiMIs2] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [XinDianChengJiMIs2] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [XinDianChengJiMIs2] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [XinDianChengJiMIs2] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [XinDianChengJiMIs2] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [XinDianChengJiMIs2] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [XinDianChengJiMIs2] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [XinDianChengJiMIs2] SET  DISABLE_BROKER
GO
ALTER DATABASE [XinDianChengJiMIs2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [XinDianChengJiMIs2] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [XinDianChengJiMIs2] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [XinDianChengJiMIs2] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [XinDianChengJiMIs2] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [XinDianChengJiMIs2] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [XinDianChengJiMIs2] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [XinDianChengJiMIs2] SET  READ_WRITE
GO
ALTER DATABASE [XinDianChengJiMIs2] SET RECOVERY FULL
GO
ALTER DATABASE [XinDianChengJiMIs2] SET  MULTI_USER
GO
ALTER DATABASE [XinDianChengJiMIs2] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [XinDianChengJiMIs2] SET DB_CHAINING OFF
GO
USE [XinDianChengJiMIs2]
GO
/****** Object:  Table [dbo].[ZhuanYe]    Script Date: 05/13/2021 19:00:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZhuanYe](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[XueYuanId] [int] NULL,
	[XueYuanName] [nvarchar](50) NULL,
 CONSTRAINT [PK_ZhuanYe] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ZhuanYe] ON
INSERT [dbo].[ZhuanYe] ([id], [Name], [XueYuanId], [XueYuanName]) VALUES (1, N'计算机科学与技术', 2, N'信电学院')
INSERT [dbo].[ZhuanYe] ([id], [Name], [XueYuanId], [XueYuanName]) VALUES (2, N'软件工程', 2, N'信电学院')
INSERT [dbo].[ZhuanYe] ([id], [Name], [XueYuanId], [XueYuanName]) VALUES (3, N'网络通信技术', 2, N'信电学院')
SET IDENTITY_INSERT [dbo].[ZhuanYe] OFF
/****** Object:  Table [dbo].[XueYuanInfo]    Script Date: 05/13/2021 19:00:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XueYuanInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[ZhuRen] [nvarchar](50) NULL,
	[Tel] [nvarchar](50) NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[XueYuanInfo] ON
INSERT [dbo].[XueYuanInfo] ([id], [name], [ZhuRen], [Tel]) VALUES (2, N'信电学院', N'韩红', N'13673844738')
SET IDENTITY_INSERT [dbo].[XueYuanInfo] OFF
/****** Object:  Table [dbo].[XueQi]    Script Date: 05/13/2021 19:00:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XueQi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_XueQi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[XueQi] ON
INSERT [dbo].[XueQi] ([id], [name]) VALUES (1, N'2018学年第一学期')
SET IDENTITY_INSERT [dbo].[XueQi] OFF
/****** Object:  Table [dbo].[Teachter]    Script Date: 05/13/2021 19:00:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachter](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Sex] [nvarchar](50) NULL,
	[XueYuan] [nvarchar](50) NULL,
	[GongHao] [nvarchar](100) NULL,
	[chushengriqi] [nvarchar](50) NULL,
	[Addtime] [datetime] NULL,
	[Ds] [text] NULL,
	[Photo] [nvarchar](200) NULL,
	[Pwd] [nvarchar](50) NULL,
	[ZhiCheng] [nvarchar](50) NULL,
 CONSTRAINT [PK_Teachter] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Teachter] ON
INSERT [dbo].[Teachter] ([id], [Name], [Sex], [XueYuan], [GongHao], [chushengriqi], [Addtime], [Ds], [Photo], [Pwd], [ZhiCheng]) VALUES (1, N'李建成', N'男', N'信电学院', N'tea123', N'1980-05-22', CAST(0x0000AD1E018361C1 AS DateTime), N'授课认真，工作负责', N'', N'tea123', N'讲师')
INSERT [dbo].[Teachter] ([id], [Name], [Sex], [XueYuan], [GongHao], [chushengriqi], [Addtime], [Ds], [Photo], [Pwd], [ZhiCheng]) VALUES (2, N'杨琳', N'女', N'信电学院', N'pro123', N'1978/9/29 0:00:00', CAST(0x0000AD25012D6464 AS DateTime), N'技术很高的', NULL, N'pro123', N'副教授')
INSERT [dbo].[Teachter] ([id], [Name], [Sex], [XueYuan], [GongHao], [chushengriqi], [Addtime], [Ds], [Photo], [Pwd], [ZhiCheng]) VALUES (3, N'杨浩', N'男', N'信电学院', N'kkk123', N'1970/3/13 0:00:00', CAST(0x0000AD25012D646D AS DateTime), N'德高望重', NULL, N'kkk123', N'教授')
INSERT [dbo].[Teachter] ([id], [Name], [Sex], [XueYuan], [GongHao], [chushengriqi], [Addtime], [Ds], [Photo], [Pwd], [ZhiCheng]) VALUES (4, N'杨琳123', N'女', N'信电学院', N'pro123', N'1980-08-15', CAST(0x0000AD2601790294 AS DateTime), N'技术很高的', NULL, N'pro123', N'副教授')
INSERT [dbo].[Teachter] ([id], [Name], [Sex], [XueYuan], [GongHao], [chushengriqi], [Addtime], [Ds], [Photo], [Pwd], [ZhiCheng]) VALUES (5, N'杨浩456', N'男', N'信电学院', N'kkk123', N'1980-08-15', CAST(0x0000AD260179029F AS DateTime), N'德高望重', NULL, N'kkk123', N'教授')
SET IDENTITY_INSERT [dbo].[Teachter] OFF
/****** Object:  Table [dbo].[Student]    Script Date: 05/13/2021 19:00:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Sex] [nvarchar](50) NULL,
	[XueYuan] [nvarchar](50) NULL,
	[GongHao] [nvarchar](100) NULL,
	[chushengriqi] [nvarchar](50) NULL,
	[Addtime] [datetime] NULL,
	[Ds] [text] NULL,
	[Photo] [nvarchar](200) NULL,
	[Pwd] [nvarchar](50) NULL,
	[ClassId] [int] NULL,
	[ClassName] [nvarchar](50) NULL,
	[XueHao] [nvarchar](50) NULL,
	[ZhuZhi] [nvarchar](50) NULL,
	[ZhuanYeID] [int] NULL,
	[ZhuanYeName] [nvarchar](50) NULL,
	[suShe] [nvarchar](50) NULL,
	[SheTuan] [nvarchar](50) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Student] ON
INSERT [dbo].[Student] ([id], [Name], [Sex], [XueYuan], [GongHao], [chushengriqi], [Addtime], [Ds], [Photo], [Pwd], [ClassId], [ClassName], [XueHao], [ZhuZhi], [ZhuanYeID], [ZhuanYeName], [suShe], [SheTuan]) VALUES (1, N'丁媛媛', N'女', N'信电学院', N'stu123', N'1999-10-07', CAST(0x0000AD1E01841733 AS DateTime), N'活泼开朗', N'', N'stu123', 1, N'计本1801', N'20182201001', N'北京市', 1, N'计算机科学与技术', N'北5-201', N'舞蹈社')
INSERT [dbo].[Student] ([id], [Name], [Sex], [XueYuan], [GongHao], [chushengriqi], [Addtime], [Ds], [Photo], [Pwd], [ClassId], [ClassName], [XueHao], [ZhuZhi], [ZhuanYeID], [ZhuanYeName], [suShe], [SheTuan]) VALUES (2, N'张翼', N'女', N'信电学院', N'stu234', N'1998/8/22 0:00:00', CAST(0x0000A94400000000 AS DateTime), N'这是一个好学生', NULL, N'stu234', 1, N'计本1801', N'20182201002', N'朝阳区', 2, N'计算机科学与技术', N'北5-201', N'花鸟社团')
INSERT [dbo].[Student] ([id], [Name], [Sex], [XueYuan], [GongHao], [chushengriqi], [Addtime], [Ds], [Photo], [Pwd], [ClassId], [ClassName], [XueHao], [ZhuZhi], [ZhuanYeID], [ZhuanYeName], [suShe], [SheTuan]) VALUES (3, N'刘小龙', N'男', N'信电学院', N'stu345', N'1998/8/23 0:00:00', CAST(0x0000A94500000000 AS DateTime), N'喜欢足球', NULL, N'stu345', 1, N'计本1801', N'20182201003', N'海淀区', 2, N'计算机科学与技术', N'北12-304', N'英语社团')
INSERT [dbo].[Student] ([id], [Name], [Sex], [XueYuan], [GongHao], [chushengriqi], [Addtime], [Ds], [Photo], [Pwd], [ClassId], [ClassName], [XueHao], [ZhuZhi], [ZhuanYeID], [ZhuanYeName], [suShe], [SheTuan]) VALUES (4, N'张三', N'男', N'信电学院', N'stu346', N'1998/8/24 0:00:00', CAST(0x0000A94600000000 AS DateTime), N'喜欢足球', NULL, N'stu346', 1, N'计本1801', N'20182201004', N'海淀区', 2, N'计算机科学与技术', N'北12-304', N'街舞社')
INSERT [dbo].[Student] ([id], [Name], [Sex], [XueYuan], [GongHao], [chushengriqi], [Addtime], [Ds], [Photo], [Pwd], [ClassId], [ClassName], [XueHao], [ZhuZhi], [ZhuanYeID], [ZhuanYeName], [suShe], [SheTuan]) VALUES (5, N'李四', N'男', N'信电学院', N'stu347', N'1998/8/25 0:00:00', CAST(0x0000A94700000000 AS DateTime), N'喜欢足球', NULL, N'stu347', 1, N'计本1801', N'20182201005', N'海淀区', 2, N'计算机科学与技术', N'北12-304', N'街舞社')
INSERT [dbo].[Student] ([id], [Name], [Sex], [XueYuan], [GongHao], [chushengriqi], [Addtime], [Ds], [Photo], [Pwd], [ClassId], [ClassName], [XueHao], [ZhuZhi], [ZhuanYeID], [ZhuanYeName], [suShe], [SheTuan]) VALUES (6, N'刘武', N'男', N'信电学院', N'stu348', N'1998/8/26 0:00:00', CAST(0x0000A94800000000 AS DateTime), N'喜欢足球', NULL, N'stu348', 1, N'计本1801', N'20182201006', N'海淀区', 2, N'计算机科学与技术', N'北12-304', N'街舞社')
INSERT [dbo].[Student] ([id], [Name], [Sex], [XueYuan], [GongHao], [chushengriqi], [Addtime], [Ds], [Photo], [Pwd], [ClassId], [ClassName], [XueHao], [ZhuZhi], [ZhuanYeID], [ZhuanYeName], [suShe], [SheTuan]) VALUES (7, N'李琦', N'男', N'信电学院', N'stu349', N'1998/8/27 0:00:00', CAST(0x0000A94900000000 AS DateTime), N'喜欢足球', NULL, N'stu349', 1, N'计本1801', N'20182201007', N'海淀区', 2, N'计算机科学与技术', N'北12-305', N'街舞社')
INSERT [dbo].[Student] ([id], [Name], [Sex], [XueYuan], [GongHao], [chushengriqi], [Addtime], [Ds], [Photo], [Pwd], [ClassId], [ClassName], [XueHao], [ZhuZhi], [ZhuanYeID], [ZhuanYeName], [suShe], [SheTuan]) VALUES (8, N'王全', N'男', N'信电学院', N'stu350', N'1998/8/28 0:00:00', CAST(0x0000A94A00000000 AS DateTime), N'喜欢足球', NULL, N'stu350', 1, N'计本1801', N'20182201008', N'海淀区', 2, N'计算机科学与技术', N'北12-305', N'街舞社')
INSERT [dbo].[Student] ([id], [Name], [Sex], [XueYuan], [GongHao], [chushengriqi], [Addtime], [Ds], [Photo], [Pwd], [ClassId], [ClassName], [XueHao], [ZhuZhi], [ZhuanYeID], [ZhuanYeName], [suShe], [SheTuan]) VALUES (9, N'刘鑫', N'男', N'信电学院', N'stu351', N'1998/8/29 0:00:00', CAST(0x0000A94B00000000 AS DateTime), N'喜欢足球', NULL, N'stu351', 1, N'计本1801', N'20182201009', N'海淀区', 2, N'计算机科学与技术', N'北12-305', N'街舞社')
SET IDENTITY_INSERT [dbo].[Student] OFF
/****** Object:  Table [dbo].[Score]    Script Date: 05/13/2021 19:00:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Score](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [nvarchar](50) NULL,
	[CourseId] [int] NULL,
	[StId] [int] NULL,
	[StName] [nvarchar](50) NULL,
	[Score] [float] NULL,
	[XueQi] [nvarchar](50) NULL,
	[ClassID] [int] NULL,
	[Tid] [int] NULL,
	[XueFen] [float] NULL,
	[shangji] [float] NULL,
	[kaoshi] [float] NULL,
	[zong] [float] NULL,
 CONSTRAINT [PK_Score] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Score] ON
INSERT [dbo].[Score] ([id], [CourseName], [CourseId], [StId], [StName], [Score], [XueQi], [ClassID], [Tid], [XueFen], [shangji], [kaoshi], [zong]) VALUES (1, N'计算机组成原理', 1, 1, N'丁媛媛', 100, N'2018学年第一学期', 1, 1, 0, 80, 60, 78)
INSERT [dbo].[Score] ([id], [CourseName], [CourseId], [StId], [StName], [Score], [XueQi], [ClassID], [Tid], [XueFen], [shangji], [kaoshi], [zong]) VALUES (3, N'计算机组成原理', 1, 2, N'张翼', 98, N'2018学年第一学期', 1, 1, 0, 86, 88, 92.6)
INSERT [dbo].[Score] ([id], [CourseName], [CourseId], [StId], [StName], [Score], [XueQi], [ClassID], [Tid], [XueFen], [shangji], [kaoshi], [zong]) VALUES (4, N'计算机组成原理', 1, 3, N'刘小龙', 90, N'2018学年第一学期', 1, 1, 0, 78, 60, 74.4)
INSERT [dbo].[Score] ([id], [CourseName], [CourseId], [StId], [StName], [Score], [XueQi], [ClassID], [Tid], [XueFen], [shangji], [kaoshi], [zong]) VALUES (5, N'计算机组成原理', 1, 4, N'张三', 76, N'2018学年第一学期', 1, 1, 0, 56, 45, 40)
INSERT [dbo].[Score] ([id], [CourseName], [CourseId], [StId], [StName], [Score], [XueQi], [ClassID], [Tid], [XueFen], [shangji], [kaoshi], [zong]) VALUES (6, N'计算机组成原理', 1, 5, N'李四', 87, N'2018学年第一学期', 1, 1, 0, 90, 68, 80.3)
INSERT [dbo].[Score] ([id], [CourseName], [CourseId], [StId], [StName], [Score], [XueQi], [ClassID], [Tid], [XueFen], [shangji], [kaoshi], [zong]) VALUES (7, N'计算机组成原理', 1, 6, N'刘武', 98, N'2018学年第一学期', 1, 1, 0, 98, 80, 90.8)
INSERT [dbo].[Score] ([id], [CourseName], [CourseId], [StId], [StName], [Score], [XueQi], [ClassID], [Tid], [XueFen], [shangji], [kaoshi], [zong]) VALUES (8, N'计算机组成原理', 1, 7, N'李琦', 93, N'2018学年第一学期', 1, 1, 0, 87, 75, 84)
INSERT [dbo].[Score] ([id], [CourseName], [CourseId], [StId], [StName], [Score], [XueQi], [ClassID], [Tid], [XueFen], [shangji], [kaoshi], [zong]) VALUES (9, N'计算机组成原理', 1, 8, N'王全', 85, N'2018学年第一学期', 1, 1, 0, 67, 73, 74.8)
INSERT [dbo].[Score] ([id], [CourseName], [CourseId], [StId], [StName], [Score], [XueQi], [ClassID], [Tid], [XueFen], [shangji], [kaoshi], [zong]) VALUES (10, N'计算机组成原理', 1, 9, N'刘鑫', 82, N'2018学年第一学期', 1, 1, 0, 98, 89, 89.6)
INSERT [dbo].[Score] ([id], [CourseName], [CourseId], [StId], [StName], [Score], [XueQi], [ClassID], [Tid], [XueFen], [shangji], [kaoshi], [zong]) VALUES (11, N'C语言', 6, 1, N'丁媛媛', 80, N'2018学年第一学期', 1, 1, 0, 65, 54, 65.1)
INSERT [dbo].[Score] ([id], [CourseName], [CourseId], [StId], [StName], [Score], [XueQi], [ClassID], [Tid], [XueFen], [shangji], [kaoshi], [zong]) VALUES (12, N'C语言', 6, 2, N'张翼', 97, N'2018学年第一学期', 1, 1, 0, 85, 88, 92.6)
INSERT [dbo].[Score] ([id], [CourseName], [CourseId], [StId], [StName], [Score], [XueQi], [ClassID], [Tid], [XueFen], [shangji], [kaoshi], [zong]) VALUES (13, N'C语言', 6, 3, N'刘小龙', 75, N'2018学年第一学期', 1, 1, 0, 45, 53, 57.2)
INSERT [dbo].[Score] ([id], [CourseName], [CourseId], [StId], [StName], [Score], [XueQi], [ClassID], [Tid], [XueFen], [shangji], [kaoshi], [zong]) VALUES (14, N'C语言', 6, 4, N'张三', 78, N'2018学年第一学期', 1, 1, 0, 86, 65, 75.2)
INSERT [dbo].[Score] ([id], [CourseName], [CourseId], [StId], [StName], [Score], [XueQi], [ClassID], [Tid], [XueFen], [shangji], [kaoshi], [zong]) VALUES (15, N'C语言', 6, 5, N'李四', 78, N'2018学年第一学期', 1, 1, 0, 45, 23, 46.1)
INSERT [dbo].[Score] ([id], [CourseName], [CourseId], [StId], [StName], [Score], [XueQi], [ClassID], [Tid], [XueFen], [shangji], [kaoshi], [zong]) VALUES (16, N'C语言', 6, 6, N'刘武', 62, N'2018学年第一学期', 1, 1, 0, 45, 53, 53.3)
INSERT [dbo].[Score] ([id], [CourseName], [CourseId], [StId], [StName], [Score], [XueQi], [ClassID], [Tid], [XueFen], [shangji], [kaoshi], [zong]) VALUES (17, N'C语言', 6, 7, N'李琦', 80, N'2018学年第一学期', 1, 1, 0, 46, 67, 64.6)
INSERT [dbo].[Score] ([id], [CourseName], [CourseId], [StId], [StName], [Score], [XueQi], [ClassID], [Tid], [XueFen], [shangji], [kaoshi], [zong]) VALUES (18, N'C语言', 6, 8, N'王全', 60, N'2018学年第一学期', 1, 1, 0, 42, 39, 46.2)
INSERT [dbo].[Score] ([id], [CourseName], [CourseId], [StId], [StName], [Score], [XueQi], [ClassID], [Tid], [XueFen], [shangji], [kaoshi], [zong]) VALUES (19, N'C语言', 6, 9, N'刘鑫', 97, N'2018学年第一学期', 1, 1, 0, 76, 69, 79.5)
SET IDENTITY_INSERT [dbo].[Score] OFF
/****** Object:  Table [dbo].[News]    Script Date: 05/13/2021 19:00:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[content] [text] NULL,
	[Addtime] [datetime] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[News] ON
INSERT [dbo].[News] ([id], [name], [content], [Addtime]) VALUES (2, N'社团纳新', N'社团纳新！！', CAST(0x0000AD270100B087 AS DateTime))
SET IDENTITY_INSERT [dbo].[News] OFF
/****** Object:  Table [dbo].[JiaoShi]    Script Date: 05/13/2021 19:00:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JiaoShi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_name] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[JiaoShi] ON
INSERT [dbo].[JiaoShi] ([id], [name]) VALUES (1, N'教室101')
INSERT [dbo].[JiaoShi] ([id], [name]) VALUES (2, N'教室102')
SET IDENTITY_INSERT [dbo].[JiaoShi] OFF
/****** Object:  Table [dbo].[CourseInfo]    Script Date: 05/13/2021 19:00:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[XueYuanId] [int] NULL,
	[XueYuanName] [nvarchar](50) NULL,
	[ZhuanYeId] [int] NULL,
	[ZhuanYeName] [nvarchar](50) NULL,
	[Tid] [int] NULL,
	[TName] [nvarchar](50) NULL,
	[ZhouQi] [nvarchar](50) NULL,
	[DiDian] [nvarchar](50) NULL,
	[ShengKeSJ] [nvarchar](50) NULL,
	[ZuiDaRenShu] [int] NULL,
	[YiXuanRenShu] [int] NULL,
	[IsMan] [nvarchar](50) NULL,
	[IsShow] [nvarchar](50) NULL,
	[XingZhi] [nvarchar](50) NULL,
	[XueFen] [nvarchar](50) NULL,
	[ClassId] [int] NULL,
	[ClassName] [nvarchar](50) NULL,
 CONSTRAINT [PK_CourseInfp] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CourseInfo] ON
INSERT [dbo].[CourseInfo] ([id], [Name], [XueYuanId], [XueYuanName], [ZhuanYeId], [ZhuanYeName], [Tid], [TName], [ZhouQi], [DiDian], [ShengKeSJ], [ZuiDaRenShu], [YiXuanRenShu], [IsMan], [IsShow], [XingZhi], [XueFen], [ClassId], [ClassName]) VALUES (1, N'计算机组成原理', 2, N'信电学院', 1, N'计算机科学与技术', 1, N'李建成', N'20', N'教室101', N'第1周第1节', 80, 0, N'否', N'是', NULL, N'3', 1, N'计本1801')
INSERT [dbo].[CourseInfo] ([id], [Name], [XueYuanId], [XueYuanName], [ZhuanYeId], [ZhuanYeName], [Tid], [TName], [ZhouQi], [DiDian], [ShengKeSJ], [ZuiDaRenShu], [YiXuanRenShu], [IsMan], [IsShow], [XingZhi], [XueFen], [ClassId], [ClassName]) VALUES (4, N'数据结构', 2, N'信电学院', 1, N'计算机科学与技术', 3, N'杨浩', N'24', NULL, NULL, 80, 0, N'否', N'是', NULL, N'4', 1, N'计本1801')
INSERT [dbo].[CourseInfo] ([id], [Name], [XueYuanId], [XueYuanName], [ZhuanYeId], [ZhuanYeName], [Tid], [TName], [ZhouQi], [DiDian], [ShengKeSJ], [ZuiDaRenShu], [YiXuanRenShu], [IsMan], [IsShow], [XingZhi], [XueFen], [ClassId], [ClassName]) VALUES (5, N'软件工程设计', 2, N'信电学院', 2, N'软件工程', 2, N'杨琳', N'24', NULL, NULL, 86, 0, N'否', N'是', NULL, N'3', 3, N'软工1801')
INSERT [dbo].[CourseInfo] ([id], [Name], [XueYuanId], [XueYuanName], [ZhuanYeId], [ZhuanYeName], [Tid], [TName], [ZhouQi], [DiDian], [ShengKeSJ], [ZuiDaRenShu], [YiXuanRenShu], [IsMan], [IsShow], [XingZhi], [XueFen], [ClassId], [ClassName]) VALUES (6, N'C语言', 2, N'信电学院', 1, N'计算机科学与技术', 1, N'李建成', N'22', N'教室101', N'第1周第3节', 60, 0, N'否', N'是', NULL, N'3', 1, N'计本1801')
SET IDENTITY_INSERT [dbo].[CourseInfo] OFF
/****** Object:  Table [dbo].[ClassInfo]    Script Date: 05/13/2021 19:00:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[XueYuanId] [int] NULL,
	[XueYuanName] [nvarchar](50) NULL,
	[BanZhuRen] [nvarchar](50) NULL,
	[Tel] [nvarchar](50) NULL,
	[RenShu] [nvarchar](50) NULL,
	[ZhuanYeID] [int] NULL,
	[ZhuanYeName] [nvarchar](50) NULL,
 CONSTRAINT [PK_XueYuan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ClassInfo] ON
INSERT [dbo].[ClassInfo] ([id], [name], [XueYuanId], [XueYuanName], [BanZhuRen], [Tel], [RenShu], [ZhuanYeID], [ZhuanYeName]) VALUES (1, N'计本1801', 2, N'信电学院', N'李菲菲', N'18764788933', N'47', 1, N'计算机科学与技术')
INSERT [dbo].[ClassInfo] ([id], [name], [XueYuanId], [XueYuanName], [BanZhuRen], [Tel], [RenShu], [ZhuanYeID], [ZhuanYeName]) VALUES (2, N'计本1901', 2, N'信电学院', N'杨成', N'13872894883', N'44', 1, N'计算机科学与技术')
INSERT [dbo].[ClassInfo] ([id], [name], [XueYuanId], [XueYuanName], [BanZhuRen], [Tel], [RenShu], [ZhuanYeID], [ZhuanYeName]) VALUES (3, N'软工1801', 2, N'信电学院', N'林毅', N'13875744839', N'40', 2, N'软件工程')
INSERT [dbo].[ClassInfo] ([id], [name], [XueYuanId], [XueYuanName], [BanZhuRen], [Tel], [RenShu], [ZhuanYeID], [ZhuanYeName]) VALUES (4, N'', 2, N'信电学院', N'', N'', N'', 1, N'计算机科学与技术')
SET IDENTITY_INSERT [dbo].[ClassInfo] OFF
/****** Object:  Table [dbo].[Admin]    Script Date: 05/13/2021 19:00:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Admin] [nvarchar](100) NULL,
	[pwd] [nvarchar](100) NULL,
	[Roule] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON
INSERT [dbo].[Admin] ([id], [Admin], [pwd], [Roule], [Name]) VALUES (1, N'admin', N'123123', N'管理员', N'李飞')
SET IDENTITY_INSERT [dbo].[Admin] OFF
/****** Object:  Default [DF_Teachter_Addtime]    Script Date: 05/13/2021 19:00:30 ******/
ALTER TABLE [dbo].[Teachter] ADD  CONSTRAINT [DF_Teachter_Addtime]  DEFAULT (getdate()) FOR [Addtime]
GO
/****** Object:  Default [DF_Student_Addtime]    Script Date: 05/13/2021 19:00:30 ******/
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [DF_Student_Addtime]  DEFAULT (getdate()) FOR [Addtime]
GO
/****** Object:  Default [DF_Score_BKScore]    Script Date: 05/13/2021 19:00:30 ******/
ALTER TABLE [dbo].[Score] ADD  CONSTRAINT [DF_Score_BKScore]  DEFAULT ((0)) FOR [ClassID]
GO
/****** Object:  Default [DF_News_Addtime]    Script Date: 05/13/2021 19:00:30 ******/
ALTER TABLE [dbo].[News] ADD  CONSTRAINT [DF_News_Addtime]  DEFAULT (getdate()) FOR [Addtime]
GO
/****** Object:  Default [DF_CourseInfo_YiXuanRenShu]    Script Date: 05/13/2021 19:00:30 ******/
ALTER TABLE [dbo].[CourseInfo] ADD  CONSTRAINT [DF_CourseInfo_YiXuanRenShu]  DEFAULT ((0)) FOR [YiXuanRenShu]
GO
/****** Object:  Default [DF_CourseInfo_IsMan]    Script Date: 05/13/2021 19:00:30 ******/
ALTER TABLE [dbo].[CourseInfo] ADD  CONSTRAINT [DF_CourseInfo_IsMan]  DEFAULT (N'否') FOR [IsMan]
GO
/****** Object:  Default [DF_CourseInfo_IsShow]    Script Date: 05/13/2021 19:00:30 ******/
ALTER TABLE [dbo].[CourseInfo] ADD  CONSTRAINT [DF_CourseInfo_IsShow]  DEFAULT (N'是') FOR [IsShow]
GO
