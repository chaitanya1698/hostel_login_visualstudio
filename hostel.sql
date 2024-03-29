USE [master]
GO
/****** Object:  Database [testDB]    Script Date: 30-09-2019 10:36:46 ******/
CREATE DATABASE [testDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'testDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.CHAITUSQL\MSSQL\DATA\testDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'testDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.CHAITUSQL\MSSQL\DATA\testDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [testDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [testDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [testDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [testDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [testDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [testDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [testDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [testDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [testDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [testDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [testDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [testDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [testDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [testDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [testDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [testDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [testDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [testDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [testDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [testDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [testDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [testDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [testDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [testDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [testDB] SET RECOVERY FULL 
GO
ALTER DATABASE [testDB] SET  MULTI_USER 
GO
ALTER DATABASE [testDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [testDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [testDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [testDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [testDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'testDB', N'ON'
GO
ALTER DATABASE [testDB] SET QUERY_STORE = OFF
GO
USE [testDB]
GO
/****** Object:  Table [dbo].[Facilites]    Script Date: 30-09-2019 10:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facilites](
	[Hid] [int] NOT NULL,
	[wifi] [bit] NOT NULL,
	[two_wheeler_parking] [bit] NOT NULL,
	[hot_water] [bit] NOT NULL,
	[food] [varchar](30) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hostel]    Script Date: 30-09-2019 10:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hostel](
	[Hid] [int] IDENTITY(1,1) NOT NULL,
	[Hname] [nvarchar](100) NULL,
	[owner_name] [nvarchar](100) NULL,
	[Haddress] [nvarchar](500) NULL,
	[loginvalue] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Hid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[logintable]    Script Date: 30-09-2019 10:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[logintable](
	[loginvalue] [int] IDENTITY(0,1111) NOT NULL,
	[logincategory] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[loginvalue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sdetails]    Script Date: 30-09-2019 10:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sdetails](
	[student_id] [int] NULL,
	[Hid] [int] NULL,
	[fname] [varchar](50) NOT NULL,
	[lname] [varchar](50) NOT NULL,
	[balance] [decimal](18, 0) NOT NULL,
	[vacate] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stu_hst_login]    Script Date: 30-09-2019 10:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stu_hst_login](
	[userid] [int] NOT NULL,
	[username] [varchar](30) NULL,
	[upassword] [varchar](250) NULL,
	[loginvalue] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student]    Script Date: 30-09-2019 10:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[student_id] [int] IDENTITY(100,100) NOT NULL,
	[Hid] [int] NULL,
	[student_name] [varchar](30) NOT NULL,
	[saddress] [varchar](100) NOT NULL,
	[room_rent] [decimal](18, 0) NOT NULL,
	[doj] [date] NOT NULL,
	[active] [bit] NOT NULL,
	[adv_amount] [decimal](18, 0) NOT NULL,
	[re_amount] [decimal](18, 0) NOT NULL,
	[loginvalue] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[test]    Script Date: 30-09-2019 10:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test](
	[sno] [int] IDENTITY(1,1) NOT NULL,
	[sname] [varchar](300) NOT NULL,
	[smail] [varchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Hostel] ADD  DEFAULT ((1111)) FOR [loginvalue]
GO
ALTER TABLE [dbo].[student] ADD  DEFAULT ((2222)) FOR [loginvalue]
GO
ALTER TABLE [dbo].[Facilites]  WITH CHECK ADD  CONSTRAINT [fk_hostelfacilites] FOREIGN KEY([Hid])
REFERENCES [dbo].[Hostel] ([Hid])
GO
ALTER TABLE [dbo].[Facilites] CHECK CONSTRAINT [fk_hostelfacilites]
GO
ALTER TABLE [dbo].[sdetails]  WITH CHECK ADD FOREIGN KEY([Hid])
REFERENCES [dbo].[Hostel] ([Hid])
GO
ALTER TABLE [dbo].[sdetails]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[student] ([student_id])
GO
ALTER TABLE [dbo].[student]  WITH CHECK ADD FOREIGN KEY([Hid])
REFERENCES [dbo].[Hostel] ([Hid])
GO
/****** Object:  StoredProcedure [dbo].[getFacilitesByHid]    Script Date: 30-09-2019 10:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getFacilitesByHid] 
@hid int
as 
begin

select Facilites.*  
from Facilites 
join Hostel 
on Hostel.Hid = Facilites.Hid
where Facilites.Hid = @hid;

end;
GO
/****** Object:  StoredProcedure [dbo].[gethosteldetailsbystudentloginvalue]    Script Date: 30-09-2019 10:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[gethosteldetailsbystudentloginvalue]
@loginvalue int , @uname varchar(50) , @pass varchar(250)
as
begin
select s.student_id , s.student_name , s.saddress ,s.room_rent , s.active , s.adv_amount , s.doj , h.Haddress ,h.Hname ,h.owner_name from hostel h , student s


where h.Hid = s.Hid  and s.student_id = (select userid from stu_hst_login where  username = @uname AND upassword =@pass AND loginvalue =@loginvalue);

end;
GO
/****** Object:  StoredProcedure [dbo].[getStudentetailsbyloginvalue]    Script Date: 30-09-2019 10:36:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getStudentetailsbyloginvalue]

@loginvalue int , @uname varchar(50) , @pass varchar(250)
as
begin

select s.student_id , s.student_name , s.saddress ,s.room_rent , s.active , s.adv_amount , s.doj , h.Haddress ,h.Hname  from student s join hostel h
on s.Hid = h.Hid 

where  h.Hid = (select userid from stu_hst_login where  username = @uname AND upassword =@pass AND loginvalue =@loginvalue);

end;
GO
USE [master]
GO
ALTER DATABASE [testDB] SET  READ_WRITE 
GO
