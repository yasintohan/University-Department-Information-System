USE [master]
GO
/****** Object:  Database [UniversityDb]    Script Date: 14.06.2021 23:58:22 ******/
CREATE DATABASE [UniversityDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UniversityDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\UniversityDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'UniversityDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\UniversityDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [UniversityDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UniversityDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UniversityDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UniversityDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UniversityDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UniversityDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UniversityDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [UniversityDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [UniversityDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UniversityDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UniversityDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UniversityDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UniversityDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UniversityDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UniversityDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UniversityDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UniversityDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [UniversityDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UniversityDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UniversityDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UniversityDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UniversityDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UniversityDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [UniversityDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UniversityDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [UniversityDb] SET  MULTI_USER 
GO
ALTER DATABASE [UniversityDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UniversityDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UniversityDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UniversityDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [UniversityDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [UniversityDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [UniversityDb] SET QUERY_STORE = OFF
GO
USE [UniversityDb]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 14.06.2021 23:58:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AboutPages]    Script Date: 14.06.2021 23:58:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AboutPages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Mission] [nvarchar](max) NULL,
	[Vision] [nvarchar](max) NULL,
	[CoreValues] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AboutPages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Announces]    Script Date: 14.06.2021 23:58:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Announces](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[PublishDate] [datetime] NOT NULL,
	[FinishDate] [datetime] NOT NULL,
	[Author_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Announces] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assignments]    Script Date: 14.06.2021 23:58:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assignments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Document] [nvarchar](max) NULL,
	[PublishDate] [datetime] NOT NULL,
	[FinishDate] [datetime] NOT NULL,
	[Course_Id] [int] NULL,
	[document_name] [nchar](50) NULL,
 CONSTRAINT [PK_dbo.Assignments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carousels]    Script Date: 14.06.2021 23:58:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carousels](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[SubTitle] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[MiniTitle] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Carousels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Classrooms]    Script Date: 14.06.2021 23:58:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classrooms](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Floor] [int] NOT NULL,
	[Capacity] [int] NOT NULL,
	[Projector] [bit] NOT NULL,
	[Blackboard] [bit] NOT NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Classrooms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 14.06.2021 23:58:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AdressC] [nvarchar](max) NULL,
	[TelC] [nvarchar](max) NULL,
	[FaxC] [nvarchar](max) NULL,
	[MailC] [nvarchar](max) NULL,
	[Facebook] [nvarchar](max) NULL,
	[Twitter] [nvarchar](max) NULL,
	[Linkedin] [nvarchar](max) NULL,
	[Youtube] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseAnnounces]    Script Date: 14.06.2021 23:58:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseAnnounces](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[PublishDate] [datetime] NOT NULL,
	[Course_Id] [int] NULL,
 CONSTRAINT [PK_dbo.CourseAnnounces] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 14.06.2021 23:58:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CourseBook] [nvarchar](max) NULL,
	[Grading] [nvarchar](max) NULL,
	[Instructor_Id] [int] NULL,
	[People_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Courses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseWeeks]    Script Date: 14.06.2021 23:58:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseWeeks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Document] [nvarchar](max) NULL,
	[Course_Id] [int] NULL,
	[document_name] [nchar](50) NULL,
 CONSTRAINT [PK_dbo.CourseWeeks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Events]    Script Date: 14.06.2021 23:58:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Date] [datetime] NOT NULL,
	[Place] [nvarchar](max) NULL,
	[Participants] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Events] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Labs]    Script Date: 14.06.2021 23:58:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Labs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Floor] [int] NOT NULL,
	[Computer] [int] NOT NULL,
	[Projector] [bit] NOT NULL,
	[Blackboard] [bit] NOT NULL,
	[AirConditioner] [bit] NOT NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Labs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 14.06.2021 23:58:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[PublishDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.News] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Offices]    Script Date: 14.06.2021 23:58:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Floor] [int] NOT NULL,
	[MeetingRoom] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Offices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[People]    Script Date: 14.06.2021 23:58:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[People](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Degree] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Tel] [nvarchar](max) NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_dbo.People] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResearchAreas]    Script Date: 14.06.2021 23:58:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResearchAreas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Area] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ResearchAreas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeniorProjects]    Script Date: 14.06.2021 23:58:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeniorProjects](
	[student_name] [nchar](150) NOT NULL,
	[Title] [nchar](255) NOT NULL,
	[Date] [date] NOT NULL,
	[Supervisor] [int] NOT NULL,
	[project_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_SeniorProjects] PRIMARY KEY CLUSTERED 
(
	[project_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SocialIcons]    Script Date: 14.06.2021 23:58:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialIcons](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IconName] [nvarchar](max) NULL,
	[Link] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.SocialIcons] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTable]    Script Date: 14.06.2021 23:58:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTable](
	[username] [nchar](50) NOT NULL,
	[password] [nchar](50) NOT NULL,
	[role] [nchar](10) NULL,
	[user_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_UserTable_1] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_Author_Id]    Script Date: 14.06.2021 23:58:22 ******/
CREATE NONCLUSTERED INDEX [IX_Author_Id] ON [dbo].[Announces]
(
	[Author_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Course_Id]    Script Date: 14.06.2021 23:58:22 ******/
CREATE NONCLUSTERED INDEX [IX_Course_Id] ON [dbo].[Assignments]
(
	[Course_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Course_Id]    Script Date: 14.06.2021 23:58:22 ******/
CREATE NONCLUSTERED INDEX [IX_Course_Id] ON [dbo].[CourseAnnounces]
(
	[Course_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Instructor_Id]    Script Date: 14.06.2021 23:58:22 ******/
CREATE NONCLUSTERED INDEX [IX_Instructor_Id] ON [dbo].[Courses]
(
	[Instructor_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_People_Id]    Script Date: 14.06.2021 23:58:22 ******/
CREATE NONCLUSTERED INDEX [IX_People_Id] ON [dbo].[Courses]
(
	[People_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Course_Id]    Script Date: 14.06.2021 23:58:22 ******/
CREATE NONCLUSTERED INDEX [IX_Course_Id] ON [dbo].[CourseWeeks]
(
	[Course_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Announces]  WITH CHECK ADD  CONSTRAINT [FK_Announces_UserTable] FOREIGN KEY([Author_Id])
REFERENCES [dbo].[UserTable] ([user_id])
GO
ALTER TABLE [dbo].[Announces] CHECK CONSTRAINT [FK_Announces_UserTable]
GO
ALTER TABLE [dbo].[Assignments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Assignments_dbo.Courses_Course_Id] FOREIGN KEY([Course_Id])
REFERENCES [dbo].[Courses] ([Id])
GO
ALTER TABLE [dbo].[Assignments] CHECK CONSTRAINT [FK_dbo.Assignments_dbo.Courses_Course_Id]
GO
ALTER TABLE [dbo].[CourseAnnounces]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CourseAnnounces_dbo.Courses_Course_Id] FOREIGN KEY([Course_Id])
REFERENCES [dbo].[Courses] ([Id])
GO
ALTER TABLE [dbo].[CourseAnnounces] CHECK CONSTRAINT [FK_dbo.CourseAnnounces_dbo.Courses_Course_Id]
GO
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_Courses_People] FOREIGN KEY([People_Id])
REFERENCES [dbo].[People] ([Id])
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Courses_People]
GO
ALTER TABLE [dbo].[CourseWeeks]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CourseWeeks_dbo.Courses_Course_Id] FOREIGN KEY([Course_Id])
REFERENCES [dbo].[Courses] ([Id])
GO
ALTER TABLE [dbo].[CourseWeeks] CHECK CONSTRAINT [FK_dbo.CourseWeeks_dbo.Courses_Course_Id]
GO
ALTER TABLE [dbo].[People]  WITH CHECK ADD  CONSTRAINT [FK_People_UserTable] FOREIGN KEY([user_id])
REFERENCES [dbo].[UserTable] ([user_id])
GO
ALTER TABLE [dbo].[People] CHECK CONSTRAINT [FK_People_UserTable]
GO
ALTER TABLE [dbo].[SeniorProjects]  WITH CHECK ADD  CONSTRAINT [FK_SeniorProjects_People] FOREIGN KEY([Supervisor])
REFERENCES [dbo].[People] ([Id])
GO
ALTER TABLE [dbo].[SeniorProjects] CHECK CONSTRAINT [FK_SeniorProjects_People]
GO
USE [master]
GO
ALTER DATABASE [UniversityDb] SET  READ_WRITE 
GO
