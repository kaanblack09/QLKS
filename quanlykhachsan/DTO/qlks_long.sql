USE [master]
GO
/****** Object:  Database [QLKS]    Script Date: 24/11/2016 19:46:12 PM ******/
CREATE DATABASE [QLKS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLKS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\QLKS.mdf' , SIZE = 10240KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLKS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\QLKS_log.ldf' , SIZE = 5120KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLKS] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLKS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLKS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLKS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLKS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLKS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLKS] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLKS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLKS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLKS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLKS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLKS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLKS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLKS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLKS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLKS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLKS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLKS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLKS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLKS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLKS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLKS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLKS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLKS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLKS] SET RECOVERY FULL 
GO
ALTER DATABASE [QLKS] SET  MULTI_USER 
GO
ALTER DATABASE [QLKS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLKS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLKS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLKS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLKS] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLKS', N'ON'
GO 
USE [QLKS]
GO
/****** Object:  Table [dbo].[DICHVU]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DICHVU](
	[maDV] [int] IDENTITY(1,1) NOT NULL,
	[TenDV] [nvarchar](100) NULL,
	[donGia] [float] NULL,
 CONSTRAINT [PK_DICHVU] PRIMARY KEY CLUSTERED 
(
	[maDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Khachhang]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khachhang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[CMND] [char](25) NULL,
	[Adress] [nvarchar](130) NULL,
                [Date_time] [date] NULL,
	[sex] [bit] NULL,
	[Telephone_number] [nvarchar](25) NULL,
	[quocTich] [nvarchar](50) NULL,
 CONSTRAINT [PK_Khachhang_1] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[maloaiphong]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[maloaiphong](
	[maloaiphong] [nvarchar](10) NOT NULL,
	[donGia] [float] NULL,
 CONSTRAINT [PK_maloaiphong] PRIMARY KEY CLUSTERED 
(
	[maloaiphong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[user] [nvarchar](30) NOT NULL,
	[pass] [nvarchar](30) NULL,
	[phan_cong] [nvarchar](20) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHAN_VIEN]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHAN_VIEN](
	[maNHAN_VIEN] [int] IDENTITY(1,1) NOT NULL,
	[hoTen] [nvarchar](50) NULL,
	[sex] [bit] NULL,
	[Date_time] [date] NULL,
	[Telephone_number] [nvarchar](25) NULL,
                [soChungMinh] [nvarchar](25) NULL,
	[Adress] [nvarchar](50) NULL,
	[ngayVaoLam] [date] NULL,
 CONSTRAINT [PK_NHAN_VIEN] PRIMARY KEY CLUSTERED 
(
	[maNHAN_VIEN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[phong]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phong](
	[maPhong] [int] NOT NULL,
	[tinhTrang] [bit] NULL,
	[maloaiphong] [nvarchar](10) NULL,
 CONSTRAINT [PK_phong] PRIMARY KEY CLUSTERED 
(
	[maPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[thuephong]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thuephong](
	[maThuePhong] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[ngayDen] [date] NULL,
	[ngayDi] [date] NULL,
	[maDV] [int] NULL,
	[maPhong] [int] NULL,
	[thanhTien] [float] NULL,
 CONSTRAINT [PK_thuephong] PRIMARY KEY CLUSTERED 
(
	[maThuePhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[DICHVU] ON 

GO
INSERT [dbo].[DICHVU] ([maDV], [TenDV], [donGia]) VALUES (1, N'giặt', 50000)
GO
SET IDENTITY_INSERT [dbo].[DICHVU] OFF
GO
SET IDENTITY_INSERT [dbo].[Khachhang] ON 

GO
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [Date_time], [sex], [CMND], [Adress], [Telephone_number], [quocTich]) VALUES (1, N'nguyễn văn hai', CAST(N'1993-06-02' AS Date), 1, N'154', N'ahvug', N'123', N'Vietnam')
GO
INSERT [dbo].[Khachhang] ([MaKH], [TenKH], [Date_time], [sex], [CMND], [Adress], [Telephone_number], [quocTich]) VALUES (2, N'Lê Công Huynh', CAST(N'1996-09-15' AS Date), 1, N'554', N'446', N'54646', N'Vietnam')
GO

SET IDENTITY_INSERT [dbo].[Khachhang] OFF
GO
INSERT [dbo].[maloaiphong] ([maloaiphong], [donGia]) VALUES (N'Thường', 300000)
GO
INSERT [dbo].[maloaiphong] ([maloaiphong], [donGia]) VALUES (N'Trung', 350000)
GO
INSERT [dbo].[maloaiphong] ([maloaiphong], [donGia]) VALUES (N'Vip', 400000)
GO
INSERT [dbo].[User] ([user], [pass], [phan_cong]) VALUES (N'1', N'1', N'user')
GO
INSERT [dbo].[User] ([user], [pass], [phan_cong]) VALUES (N'admin', N'admin', N'admin')
GO
INSERT [dbo].[User] ([user], [pass], [phan_cong]) VALUES (N'leconghuynh', N'1', N'admin')
GO

SET IDENTITY_INSERT [dbo].[NHAN_VIEN] ON 

GO
INSERT [dbo].[NHAN_VIEN] ([maNHAN_VIEN], [hoTen], [sex], [Date_time], [soChungMinh], [Adress], [Telephone_number], [ngayVaoLam]) VALUES (2, N'le ma mi', 1, CAST(N'1997-02-01' AS Date), N'546546464', N'thai binh', N'0156546464', CAST(N'2016-06-04' AS Date))
GO
INSERT [dbo].[NHAN_VIEN] ([maNHAN_VIEN], [hoTen], [sex], [Date_time], [soChungMinh], [Adress], [Telephone_number], [ngayVaoLam]) VALUES (3, N'phan thu tran', 0, CAST(N'1989-06-01' AS Date), N'021654', N'hai phong', N'054154544', CAST(N'2016-05-09' AS Date))
GO
INSERT [dbo].[NHAN_VIEN] ([maNHAN_VIEN], [hoTen], [sex], [Date_time], [soChungMinh], [Adress], [Telephone_number], [ngayVaoLam]) VALUES (5, N'Li cu huynh', 1, CAST(N'1990-09-15' AS Date), N'145457621', N'thái thụy - thái binh ', N'01639525638', CAST(N'2016-08-31' AS Date))
GO
INSERT [dbo].[NHAN_VIEN] ([maNHAN_VIEN], [hoTen], [sex], [Date_time], [soChungMinh], [Adress], [Telephone_number], [ngayVaoLam]) VALUES (6, N'Phạm Dương', 0, CAST(N'1990-01-20' AS Date), N'1544646464', N'Hải Phòng', N'01652568617', CAST(N'2016-10-09' AS Date))
GO
INSERT [dbo].[NHAN_VIEN] ([maNHAN_VIEN], [hoTen], [sex], [Date_time], [soChungMinh], [Adress], [Telephone_number], [ngayVaoLam]) VALUES (8, N'hhh', 1, CAST(N'2016-11-23' AS Date), N'111464', N'kbhigi', N'12651614', CAST(N'2016-11-23' AS Date))
GO
INSERT [dbo].[NHAN_VIEN] ([maNHAN_VIEN], [hoTen], [sex], [Date_time], [soChungMinh], [Adress], [Telephone_number], [ngayVaoLam]) VALUES (9, N'gyt', 0, CAST(N'2016-11-24' AS Date), N'453', N'3t', N'345', CAST(N'2014-11-24' AS Date))
GO
INSERT [dbo].[NHAN_VIEN] ([maNHAN_VIEN], [hoTen], [sex], [Date_time], [soChungMinh], [Adress], [Telephone_number], [ngayVaoLam]) VALUES (13, N'h', 0, CAST(N'2016-11-24' AS Date), N'1', N'5', N'4', CAST(N'2013-11-24' AS Date))
GO
SET IDENTITY_INSERT [dbo].[NHAN_VIEN] OFF
GO
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [maloaiphong]) VALUES (101, 1, N'Thường')
GO
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [maloaiphong]) VALUES (102, 0, N'Thường')
GO
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [maloaiphong]) VALUES (201, 1, N'Trung')
GO
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [maloaiphong]) VALUES (202, 1, N'Trung')
GO
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [maloaiphong]) VALUES (301, 0, N'Vip')
GO
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [maloaiphong]) VALUES (303, 0, N'Vip')
GO
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [maloaiphong]) VALUES (304, 0, N'Thường')
GO
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [maloaiphong]) VALUES (305, 0, N'Thường')
GO
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [maloaiphong]) VALUES (306, 0, N'Thường')
GO
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [maloaiphong]) VALUES (307, 0, N'Thường')
GO
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [maloaiphong]) VALUES (308, 0, N'Thường')
GO
SET IDENTITY_INSERT [dbo].[thuephong] ON 

GO
INSERT [dbo].[thuephong] ([maThuePhong], [MaKH], [ngayDen], [ngayDi], [maDV], [maPhong], [thanhTien]) VALUES (1, 1, CAST(N'2016-11-17' AS Date), NULL, NULL, 201, 2000)
GO
INSERT [dbo].[thuephong] ([maThuePhong], [MaKH], [ngayDen], [ngayDi], [maDV], [maPhong], [thanhTien]) VALUES (2, 2, CAST(N'2016-10-20' AS Date), NULL, NULL, 303, 2000)
GO
INSERT [dbo].[thuephong] ([maThuePhong], [MaKH], [ngayDen], [ngayDi], [maDV], [maPhong], [thanhTien]) VALUES (3, 5, CAST(N'2016-11-24' AS Date), NULL, NULL, 201, 1000)
GO
INSERT [dbo].[thuephong] ([maThuePhong], [MaKH], [ngayDen], [ngayDi], [maDV], [maPhong], [thanhTien]) VALUES (4, 4, CAST(N'2016-11-24' AS Date), NULL, NULL, 102, 20000)
GO
INSERT [dbo].[thuephong] ([maThuePhong], [MaKH], [ngayDen], [ngayDi], [maDV], [maPhong], [thanhTien]) VALUES (5, 2, CAST(N'2016-11-24' AS Date), NULL, NULL, 301, 323611)
GO
INSERT [dbo].[thuephong] ([maThuePhong], [MaKH], [ngayDen], [ngayDi], [maDV], [maPhong], [thanhTien]) VALUES (6, 2, CAST(N'2016-11-24' AS Date), NULL, NULL, 304, 849)
GO
INSERT [dbo].[thuephong] ([maThuePhong], [MaKH], [ngayDen], [ngayDi], [maDV], [maPhong], [thanhTien]) VALUES (7, 4, CAST(N'2016-10-15' AS Date), NULL, NULL, 101, 6544)
GO
INSERT [dbo].[thuephong] ([maThuePhong], [MaKH], [ngayDen], [ngayDi], [maDV], [maPhong], [thanhTien]) VALUES (8, 2, CAST(N'2016-11-24' AS Date), NULL, NULL, 101, NULL)
GO
INSERT [dbo].[thuephong] ([maThuePhong], [MaKH], [ngayDen], [ngayDi], [maDV], [maPhong], [thanhTien]) VALUES (9, 2, CAST(N'2016-11-24' AS Date), NULL, NULL, 201, NULL)
GO
INSERT [dbo].[thuephong] ([maThuePhong], [MaKH], [ngayDen], [ngayDi], [maDV], [maPhong], [thanhTien]) VALUES (1, 2, CAST(N'2017-11-17' AS Date), NULL, NULL, 201, 2000)
GO
INSERT [dbo].[thuephong] ([maThuePhong], [MaKH], [ngayDen], [ngayDi], [maDV], [maPhong], [thanhTien]) VALUES (2, 2, CAST(N'2017-10-20' AS Date), NULL, NULL, 303, 2000)
GO
INSERT [dbo].[thuephong] ([maThuePhong], [MaKH], [ngayDen], [ngayDi], [maDV], [maPhong], [thanhTien]) VALUES (3, 5, CAST(N'2016-11-24' AS Date), NULL, NULL, 201, 1000)
GO
INSERT [dbo].[thuephong] ([maThuePhong], [MaKH], [ngayDen], [ngayDi], [maDV], [maPhong], [thanhTien]) VALUES (4, 4, CAST(N'2016-11-24' AS Date), NULL, NULL, 102, 20000)
GO
INSERT [dbo].[thuephong] ([maThuePhong], [MaKH], [ngayDen], [ngayDi], [maDV], [maPhong], [thanhTien]) VALUES (5, 2, CAST(N'2018-11-24' AS Date), NULL, NULL, 301, 323611)
GO
INSERT [dbo].[thuephong] ([maThuePhong], [MaKH], [ngayDen], [ngayDi], [maDV], [maPhong], [thanhTien]) VALUES (7, 2, CAST(N'2016-11-24' AS Date), NULL, NULL, 304, 849)
GO
INSERT [dbo].[thuephong] ([maThuePhong], [MaKH], [ngayDen], [ngayDi], [maDV], [maPhong], [thanhTien]) VALUES (7, 4, CAST(N'2014-10-15' AS Date), NULL, NULL, 101, 6544)
GO
INSERT [dbo].[thuephong] ([maThuePhong], [MaKH], [ngayDen], [ngayDi], [maDV], [maPhong], [thanhTien]) VALUES (7, 2, CAST(N'2019-11-24' AS Date), NULL, NULL, 101, NULL)
GO
INSERT [dbo].[thuephong] ([maThuePhong], [MaKH], [ngayDen], [ngayDi], [maDV], [maPhong], [thanhTien]) VALUES (9, 2, CAST(N'2020-11-24' AS Date), NULL, NULL, 201, NULL)
GO
SET IDENTITY_INSERT [dbo].[thuephong] OFF
GO
ALTER TABLE [dbo].[phong]  WITH CHECK ADD  CONSTRAINT [FK_phong_maloaiphong] FOREIGN KEY([maloaiphong])
REFERENCES [dbo].[maloaiphong] ([maloaiphong])
GO
ALTER TABLE [dbo].[phong] CHECK CONSTRAINT [FK_phong_maloaiphong]
GO
ALTER TABLE [dbo].[thuephong]  WITH CHECK ADD  CONSTRAINT [FK_thuephong_DICHVU] FOREIGN KEY([maDV])
REFERENCES [dbo].[DICHVU] ([maDV])
GO
ALTER TABLE [dbo].[thuephong] CHECK CONSTRAINT [FK_thuephong_DICHVU]
GO
ALTER TABLE [dbo].[thuephong]  WITH CHECK ADD  CONSTRAINT [FK_thuephong_Khachhang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[Khachhang] ([MaKH])
GO
ALTER TABLE [dbo].[thuephong] CHECK CONSTRAINT [FK_thuephong_Khachhang]
GO
ALTER TABLE [dbo].[thuephong]  WITH CHECK ADD  CONSTRAINT [FK_thuephong_phong] FOREIGN KEY([maPhong])
REFERENCES [dbo].[phong] ([maPhong])
GO
ALTER TABLE [dbo].[thuephong] CHECK CONSTRAINT [FK_thuephong_phong]
GO
/****** Object:  StoredProcedure [dbo].[dangnhap]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dangnhap] 
	@acc nvarchar(30) ,
	@pass nvarchar(30)
AS
BEGIN
	SELECT count(*) 
	FROM [QLKS].[dbo].[User]
	 where user=@acc and pass=@pass
END

GO
/****** Object:  StoredProcedure [dbo].[hienthi_thuetheophong]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[hienthi_thuetheophong]
AS
BEGIN
	
	select maThuePhong,a.maPhong,TenKH,Date_time,CMND,Adress,Telephone_number,ngayDen,donGia
from thuephong a,Khachhang b,phong c,maloaiphong d
where a.MaKH=b.MaKH and a.maPhong=c.maPhong and c.maloaiphong=d.maloaiphong and thanhTien is NULL
END


GO
/****** Object:  StoredProcedure [dbo].[hienthiKhachhang]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[hienthiKhachhang]

AS
BEGIN
	
	SELECT MaKH,TenKH,Date_time,sex= 
	case when sex = 'True' then N'Nam' else N'Nữ' end,CMND,Adress,Telephone_number,quocTich
	FROM Khachhang
END
GO
/****** Object:  StoredProcedure [dbo].[hienthiphong]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[hienthiphong] 
AS
BEGIN
select maPhong,a.maloaiphong,tinhTrang= case when tinhTrang='True' then N'Bận' else N'Rỗi' end,donGia
from phong a,maloaiphong b
where a.maloaiphong=b.maloaiphong
END
GO
/****** Object:  StoredProcedure [dbo].[hienthitatcaNHAN_VIEN]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[hienthitatcaNHAN_VIEN]
AS
BEGIN

	SELECT maNHAN_VIEN,hoTen,sex= case when sex = 'true'  then N'Nam' else N'Nữ' end ,Date_time,soChungMinh,Adress,Telephone_number,ngayVaoLam
	from [dbo].[NHAN_VIEN]
END

GO
/****** Object:  StoredProcedure [dbo].[sua_Khachhang]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sua_Khachhang]
(
	@MaKH int,
	@TenKH nvarchar(50),
	@Date_time date,
	@sex bit,
	@CMND nvarchar(25),
	@Adress nvarchar(50),
	@Telephone_number nvarchar(25),
	@quocTich nvarchar(50)
	)
AS
BEGIN
update [dbo].[Khachhang]
set 
TenKH=@TenKH,
sex=@sex,
Date_time=@Date_time,
CMND=@CMND,
Adress=@Adress,
Telephone_number=@Telephone_number,
quocTich=@quocTich
where MaKH=@MaKH
END


GO
/****** Object:  StoredProcedure [dbo].[sua_NHAN_VIEN]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



GO
/****** Object:  StoredProcedure [dbo].[timkiem_thuephong]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[timkiem_thuephong]
@maPhong int
AS
BEGIN
	
	select TenKH,Date_time,CMND,Adress,Telephone_number,ngayDen
from thuephong a,Khachhang b
where a.MaKH=b.MaKH and maPhong =@maPhong
END

GO
/****** Object:  StoredProcedure [dbo].[tinhtien]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tinhtien]
(
@ngayDi date,
@thanhTien float,
@maThuePhong int,
@maPhong int
)
AS
BEGIN
BEGIN
	update [dbo].[thuephong]
set ngayDi=@ngayDi,
thanhTien=@thanhTien
where maThuePhong=@maThuePhong
END
BEGIN
	update [dbo].[phong]
set tinhTrang = 'False'
where maPhong=@maPhong
END
END
GO
/****** Object:  StoredProcedure [dbo].[them_Khachhang]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[them_Khachhang]
	(
	@TenKH nvarchar(50),
	@Date_time date,
	@sex bit,
	@CMND nvarchar(25),
	@Adress nvarchar(50),
	@Telephone_number nvarchar(25),
	@quocTich nvarchar(50)
	)
AS
BEGIN
	
	insert into Khachhang(TenKH,Date_time,sex,CMND,Adress,Telephone_number,quocTich) 
	values (@TenKH,@Date_time,@sex,@CMND,@Adress,@Telephone_number,@quocTich)
	return
END
GO
/****** Object:  StoredProcedure [dbo].[them_NHAN_VIEN]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[them_NHAN_VIEN] 
	(
	@hoTen nvarchar(50),
	@sex bit,
	@Date_time date,
	@soChungMinh nvarchar(25),
	@Adress nvarchar(50),
	@Telephone_number nvarchar(25),
	@ngayVaoLam date
	)
AS
BEGIN
	
	insert into NHAN_VIEN(hoTen,sex,Date_time,soChungMinh,Adress,Telephone_number,ngayVaoLam) 
	values (@hoTen,@sex,@Date_time,@soChungMinh,@Adress,@Telephone_number,@ngayVaoLam)
	return
END

GO
/****** Object:  StoredProcedure [dbo].[them_thuephong]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[them_thuephong]
(
@MaKH int,
@ngayDen date,
@maPhong int
)
AS
BEGIN
	BEGIN
	insert into thuephong(MaKH,ngayDen,maPhong)
	values(@MaKH,@ngayDen,@maPhong)
	END
	BEGIN
	update [dbo].[phong]
	set tinhTrang='True'
	where maPhong =@maPhong
	END
END

GO
/****** Object:  StoredProcedure [dbo].[xoa_Khachhang]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[xoa_Khachhang]
@MaKH int
AS
BEGIN
	DELETE 
	FROM Khachhang
	 WHERE MaKH= @MaKH
END

GO
/****** Object:  StoredProcedure [dbo].[xoa_NHAN_VIEN]    Script Date: 24/11/2016 19:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[xoa_NHAN_VIEN]
@maNHAN_VIEN int
AS
BEGIN
	DELETE FROM NHAN_VIEN WHERE maNHAN_VIEN=@maNHAN_VIEN
END

GO
USE [master]
GO
ALTER DATABASE [QLKS] SET  READ_WRITE 
GO
