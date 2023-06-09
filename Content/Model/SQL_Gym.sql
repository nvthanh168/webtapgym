USE [master]
GO
/****** Object:  Database [Gym]    Script Date: 6/3/2020 8:23:47 AM ******/
CREATE DATABASE [Gym]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Gym', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Gym.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Gym_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Gym_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Gym] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Gym].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Gym] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Gym] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Gym] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Gym] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Gym] SET ARITHABORT OFF 
GO
ALTER DATABASE [Gym] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Gym] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Gym] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Gym] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Gym] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Gym] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Gym] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Gym] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Gym] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Gym] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Gym] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Gym] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Gym] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Gym] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Gym] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Gym] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Gym] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Gym] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Gym] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Gym] SET  MULTI_USER 
GO
ALTER DATABASE [Gym] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Gym] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Gym] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Gym] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Gym]
GO
/****** Object:  Table [dbo].[ADMIN]    Script Date: 6/3/2020 8:23:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMIN](
	[MaAdmin] [int] IDENTITY(1,1) NOT NULL,
	[HoTenAdmin] [nvarchar](50) NULL,
	[DiaChiAdmin] [nvarchar](50) NULL,
	[DienThoaiAdmin] [nvarchar](10) NULL,
	[TenDNAdmin] [nvarchar](20) NULL,
	[MatKhauAdmin] [nvarchar](20) NULL,
	[NgaySinhAdmin] [smalldatetime] NULL,
	[GioiTinhAdmin] [bit] NULL,
	[EmailAdmin] [nvarchar](50) NULL,
	[QuyenAdmin] [int] NULL,
 CONSTRAINT [PK_ADMIN] PRIMARY KEY CLUSTERED 
(
	[MaAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BaiViet]    Script Date: 6/3/2020 8:23:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiViet](
	[MaBaiViet] [int] IDENTITY(1,1) NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
	[AnhChuDe] [nvarchar](max) NULL,
	[MaPhanLoai] [int] NULL,
	[NgayDang] [date] NULL,
	[LuotXem] [int] NULL,
	[MaNguoiDung] [int] NULL,
	[MaDinhDuong] [int] NULL,
	[MaTinTuc] [int] NULL,
	[MaKienThuc] [int] NULL,
	[TenChuDe] [nvarchar](max) NULL,
	[TieuDe] [nvarchar](max) NULL,
	[MaAdmin] [int] NULL,
	[HuongDan] [nvarchar](max) NULL,
	[MaBaiVietKT] [int] NULL,
	[MaDanhMuc] [int] NULL,
 CONSTRAINT [PK_BaiViet] PRIMARY KEY CLUSTERED 
(
	[MaBaiViet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BaiVietKT]    Script Date: 6/3/2020 8:23:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiVietKT](
	[MaBaiVietKT] [int] IDENTITY(1,1) NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
	[AnhChuDe] [nvarchar](max) NULL,
	[TenChuDe] [nvarchar](max) NULL,
	[TieuDe] [nvarchar](max) NULL,
	[MaNguoiDung] [int] NULL,
	[NgayDang] [date] NULL,
 CONSTRAINT [PK_BaiVietKT] PRIMARY KEY CLUSTERED 
(
	[MaBaiVietKT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Binhluan]    Script Date: 6/3/2020 8:23:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Binhluan](
	[MaBinhLuan] [int] IDENTITY(1,1) NOT NULL,
	[NoiDungBinhLuan] [nvarchar](max) NULL,
	[MaNguoiDung] [int] NULL,
	[NgayBinhLuan] [date] NULL,
	[MaBaiViet] [int] NULL,
 CONSTRAINT [PK_Binhluan] PRIMARY KEY CLUSTERED 
(
	[MaBinhLuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 6/3/2020 8:23:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](50) NULL,
 CONSTRAINT [PK_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DinhDuong]    Script Date: 6/3/2020 8:23:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DinhDuong](
	[Ma_DinhDuong] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](max) NULL,
	[TenThucPham] [nvarchar](max) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[Quyen] [int] NULL,
	[AnhThucPham] [nvarchar](max) NULL,
	[LuotXem] [int] NULL,
 CONSTRAINT [PK_DinhDuong] PRIMARY KEY CLUSTERED 
(
	[Ma_DinhDuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KT]    Script Date: 6/3/2020 8:23:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KT](
	[MaKienThuc] [int] NOT NULL,
	[TenKienThuc] [nvarchar](50) NULL,
 CONSTRAINT [PK_KT] PRIMARY KEY CLUSTERED 
(
	[MaKienThuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 6/3/2020 8:23:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[TenNguoiDung] [nvarchar](30) NULL,
	[MatKhau] [nvarchar](30) NULL,
	[Gmail] [nvarchar](30) NULL,
	[NhapLaiMatKhau] [nvarchar](30) NULL,
	[NgaySinh] [smalldatetime] NULL,
	[DienThoaiND] [nvarchar](10) NULL,
	[DiaChi] [nvarchar](max) NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanLoai]    Script Date: 6/3/2020 8:23:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanLoai](
	[MaPhanLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenPhanLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhanLoai] PRIMARY KEY CLUSTERED 
(
	[MaPhanLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 6/3/2020 8:23:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTuc](
	[MaTinTuc] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](50) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[Tieude2] [nvarchar](50) NULL,
 CONSTRAINT [PK_TinTuc] PRIMARY KEY CLUSTERED 
(
	[MaTinTuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TraLoi]    Script Date: 6/3/2020 8:23:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TraLoi](
	[MaTraLoi] [int] IDENTITY(1,1) NOT NULL,
	[MaBinhLuan] [int] NULL,
	[MaNguoiDung] [int] NULL,
	[NoiDung] [nvarchar](max) NULL,
	[NgayDang] [date] NULL,
 CONSTRAINT [PK_TraLoi] PRIMARY KEY CLUSTERED 
(
	[MaTraLoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[ADMIN] ON 

INSERT [dbo].[ADMIN] ([MaAdmin], [HoTenAdmin], [DiaChiAdmin], [DienThoaiAdmin], [TenDNAdmin], [MatKhauAdmin], [NgaySinhAdmin], [GioiTinhAdmin], [EmailAdmin], [QuyenAdmin]) VALUES (1, NULL, NULL, NULL, N'tuad', N'1', NULL, NULL, NULL, NULL)
INSERT [dbo].[ADMIN] ([MaAdmin], [HoTenAdmin], [DiaChiAdmin], [DienThoaiAdmin], [TenDNAdmin], [MatKhauAdmin], [NgaySinhAdmin], [GioiTinhAdmin], [EmailAdmin], [QuyenAdmin]) VALUES (2, NULL, NULL, NULL, N'tuad1', N'1', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ADMIN] OFF
SET IDENTITY_INSERT [dbo].[BaiViet] ON 

INSERT [dbo].[BaiViet] ([MaBaiViet], [NoiDung], [AnhChuDe], [MaPhanLoai], [NgayDang], [LuotXem], [MaNguoiDung], [MaDinhDuong], [MaTinTuc], [MaKienThuc], [TenChuDe], [TieuDe], [MaAdmin], [HuongDan], [MaBaiVietKT], [MaDanhMuc]) VALUES (2, N'Đây là một bài tập Bulking của cơ ngực, tác động hiệu quả đến cơ ngực trên', N'ndttgp.jpg', NULL, CAST(0x5E400B00 AS Date), 1, 10, NULL, NULL, NULL, N'Nằm đẩy tạ đòn trên ghế phẳng (Barbell Bench Press)', NULL, NULL, N'Nằm trên ghế phẳng, hai tay cầm đòn tạ phía trên ngực. Hít vào và hạ tay xuống đến khi đòn tạ chạm nhẹ giữa ngực Giữ đòn tạ trên ngực một nhịp, rồi thở ra và đẩy tạ lên trở về tư thế ban đầu.', NULL, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [NoiDung], [AnhChuDe], [MaPhanLoai], [NgayDang], [LuotXem], [MaNguoiDung], [MaDinhDuong], [MaTinTuc], [MaKienThuc], [TenChuDe], [TieuDe], [MaAdmin], [HuongDan], [MaBaiVietKT], [MaDanhMuc]) VALUES (3, N'Đây là một bài tập Bulking của cơ ngực, tác động hiệu quả đến cơ ngực trên', N'ndtdtgd.jpg', NULL, CAST(0x5E400B00 AS Date), 1, 10, NULL, NULL, NULL, N'Nằm đẩy tạ đòn trên ghế dốc ( Incline barbell bench press)', NULL, NULL, N'tu', NULL, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [NoiDung], [AnhChuDe], [MaPhanLoai], [NgayDang], [LuotXem], [MaNguoiDung], [MaDinhDuong], [MaTinTuc], [MaKienThuc], [TenChuDe], [TieuDe], [MaAdmin], [HuongDan], [MaBaiVietKT], [MaDanhMuc]) VALUES (4, N'Đây là bài tập Bulking của cơ ngực, tác động hiệu quả đến cơ ngực toàn diện.', N'nntd.jpg', NULL, CAST(0x82400B00 AS Date), NULL, 10, NULL, NULL, NULL, N'Nằm đẩy tạ đơn trên ghế phẳng (Flat Bench Dumbell Press) ', NULL, NULL, N'hoangtu', NULL, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [NoiDung], [AnhChuDe], [MaPhanLoai], [NgayDang], [LuotXem], [MaNguoiDung], [MaDinhDuong], [MaTinTuc], [MaKienThuc], [TenChuDe], [TieuDe], [MaAdmin], [HuongDan], [MaBaiVietKT], [MaDanhMuc]) VALUES (5, N'Đây là một bài tập Bulking của cơ ngực, tác động hiệu quả đến cơ ngực trên.', N'tdgd.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Nằm đẩy tạ đơn trên ghế dốc ( Incline Dumbbel Press)', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [NoiDung], [AnhChuDe], [MaPhanLoai], [NgayDang], [LuotXem], [MaNguoiDung], [MaDinhDuong], [MaTinTuc], [MaKienThuc], [TenChuDe], [TieuDe], [MaAdmin], [HuongDan], [MaBaiVietKT], [MaDanhMuc]) VALUES (6, N'Là một bài tập dành cho những người muốn xây dựng cơ bắp', N'ndtvm.jpg', NULL, CAST(0x5E400B00 AS Date), 1, 10, NULL, NULL, NULL, N'Ngồi đẩy tạ với máy (Seated Machine Chest Press)', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [NoiDung], [AnhChuDe], [MaPhanLoai], [NgayDang], [LuotXem], [MaNguoiDung], [MaDinhDuong], [MaTinTuc], [MaKienThuc], [TenChuDe], [TieuDe], [MaAdmin], [HuongDan], [MaBaiVietKT], [MaDanhMuc]) VALUES (7, N'Bài tập tác động nhiều phần cơ ngực phía trong, và phát triển độ rộng của ngực.', N'envc.jpg', NULL, CAST(0x82400B00 AS Date), 1, 10, NULL, NULL, NULL, N'Ép ngực với cáp (Cable Crossover)', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [NoiDung], [AnhChuDe], [MaPhanLoai], [NgayDang], [LuotXem], [MaNguoiDung], [MaDinhDuong], [MaTinTuc], [MaKienThuc], [TenChuDe], [TieuDe], [MaAdmin], [HuongDan], [MaBaiVietKT], [MaDanhMuc]) VALUES (8, N'Dips là: 1 trong những bài tập khó đối với những bạn mới tập. Kỹ thuật khó thực hiện nhưng lại rất tốt cho cơ ngực. Bài tập này nặng khó có thể vượt qua nhưng lợi ích của nó mang lại thì cực kỳ to lớn ', N'Dips for Chest.jpg', NULL, CAST(0x5E400B00 AS Date), 1, 10, NULL, NULL, NULL, N'Dips for Chest', NULL, NULL, N'Chuẩn bị: đây là 1 bước cơ bản nhưng cực kỳ quan trọng. Chọn 2 thanh xà có độ rộng vừa phải thích hợp với cơ thể của bạn. 2 tay nắm 2 bên thanh xà, khoảng cách 2 chân để bằng vai. Thực hiện: Sau khi thực hiện xong bước chuẩn bị bạn tiếp tục: hít sâu dùng chân bật nhảy lên, đồng thời dùng cơ tay sau, vai, ngực đẩy thân người lên sao cho cánh tay thẳng, mặt ngẩng nhìn về phía trước, đồng thời thở ra, đó là xong bước bắt đầu.  Xuống: Tại vị trí bắt đầu, hít sâu, gồng cơ ngực, lưng, tay sau, bụng từ từ hạ người thấp xuống và thân người hơi đổ về phía trước. Bạn càng đổ nhiều thì cơ ngực bạn càng được tác động nhiều, còn càng thẳng thì cơ tay sau sẽ được tác động càng nhiều, xuống đến vị trí cơ ngực căng nhất, ', NULL, 1)
INSERT [dbo].[BaiViet] ([MaBaiViet], [NoiDung], [AnhChuDe], [MaPhanLoai], [NgayDang], [LuotXem], [MaNguoiDung], [MaDinhDuong], [MaTinTuc], [MaKienThuc], [TenChuDe], [TieuDe], [MaAdmin], [HuongDan], [MaBaiVietKT], [MaDanhMuc]) VALUES (9, N'Deadlift có thể coi là một dạng bài tập Compound tốt nhất phát triển toàn thân, không chỉ cơ lưng.Deadlift được xem là ông hoàng của các bài tập thể hình, bởi lợi ích và hiệu quả của nó mang lại không chỉ có cơ lưng mà còn giúp phát triển toàn thân. Để thực hiện bài tập này, bạn cần chuẩn bị 1 thanh tạ đòn với ống khuyển.', N'Deadlift.jpg', NULL, CAST(0x5E400B00 AS Date), 1, 10, NULL, NULL, NULL, N'Deadlift', NULL, NULL, N'Bắt đầu với tư thế 2 chân rộng bằng vai, lưu ý hai tay nắm chặt thanh tạ sao cho 2 cẳng tay trong chạm vào mặt ngoài của hai đùi.  Lúc này, ống chân sẽ kéo thanh đòn sát, rồi từ từ hạ người xuống về tư thế Squat và luôn trong tư thế thẳng lưng.  Sau đó hít sâu và nhấn gót chân xuống sàn, siết cơ mông, đùi sau và lưng và kéo tạ lên.  Khi tạ lên ngang đùi thì đẩy lưng thẳng, hông hướng tới trước.  Từ từ hạ thanh đòn xuống sàn và lặp lại động tác này.', NULL, 2)
INSERT [dbo].[BaiViet] ([MaBaiViet], [NoiDung], [AnhChuDe], [MaPhanLoai], [NgayDang], [LuotXem], [MaNguoiDung], [MaDinhDuong], [MaTinTuc], [MaKienThuc], [TenChuDe], [TieuDe], [MaAdmin], [HuongDan], [MaBaiVietKT], [MaDanhMuc]) VALUES (10, N'Bài tập cơ lưng xô này tác động hiệu quả đến lưng giữa và cơ vai sau giúp phát triển tố chất sức mạnh, khả năng chịu đựng cơ thể, hỗ trợ rất tốt các bài tập khác.', N'gnktd.jpg', NULL, CAST(0x7C400B00 AS Date), NULL, 10, NULL, NULL, NULL, N'Gặp người kéo tạ đòn ( Bent over Barbell)', NULL, NULL, N'Bắt đầu với tư thế giữ chặt thanh tạ, lưu ý lòng bàn tay hướng xuống.  Đầu gối hơi cong xuống vào hướng người về phía trước vào giữ thẳng lưng  Tiếp đến giữ thân không chuyển động, thở ra vào nâng tạ về phía người bạn  Khi kéo lên vị trí cao nhất thì giữ 1­2 giây.  Sau đó hít vào vào từ từ hạ xuống vị trí bắt đầu vào thực hiện lại động tác.', NULL, 2)
INSERT [dbo].[BaiViet] ([MaBaiViet], [NoiDung], [AnhChuDe], [MaPhanLoai], [NgayDang], [LuotXem], [MaNguoiDung], [MaDinhDuong], [MaTinTuc], [MaKienThuc], [TenChuDe], [TieuDe], [MaAdmin], [HuongDan], [MaBaiVietKT], [MaDanhMuc]) VALUES (11, N'Bài tập kéo xà tay rộng này giúp phát triển cơ lưng V, xô lats …', N'hxrt.jpg', NULL, CAST(0x5E400B00 AS Date), NULL, 10, NULL, NULL, NULL, N'Hít xà rộng tay ( Pull up)', NULL, NULL, N'Đầu tiên, bạn nắm xà đơn với độ rộng hơn vai, lòng bàn tay hướng tới trước.  Vị trí bắt đầu là Bước khỏi ghế, hoặc co gối để trọng lượng rời khỏi sàn.  Nhìn về phía xà, từ từ kéo thân lên cho tới khi cằm trên xà đơn.  Từ từ hạ xuống vị trí bắt đầu.  Lặp lại cho tới khi đạt được số lần yêu cầu.', NULL, 2)
INSERT [dbo].[BaiViet] ([MaBaiViet], [NoiDung], [AnhChuDe], [MaPhanLoai], [NgayDang], [LuotXem], [MaNguoiDung], [MaDinhDuong], [MaTinTuc], [MaKienThuc], [TenChuDe], [TieuDe], [MaAdmin], [HuongDan], [MaBaiVietKT], [MaDanhMuc]) VALUES (12, NULL, N'hx.jpg', NULL, CAST(0x5E400B00 AS Date), NULL, 10, NULL, NULL, NULL, N'Hít xà (Chin up)', NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[BaiViet] ([MaBaiViet], [NoiDung], [AnhChuDe], [MaPhanLoai], [NgayDang], [LuotXem], [MaNguoiDung], [MaDinhDuong], [MaTinTuc], [MaKienThuc], [TenChuDe], [TieuDe], [MaAdmin], [HuongDan], [MaBaiVietKT], [MaDanhMuc]) VALUES (13, N'Đây là một bài tập nâng cao giúp phát triển các cơ lưng giữa, lưng dưới.', N'kttct.jpg', NULL, CAST(0x82400B00 AS Date), NULL, 10, NULL, NULL, NULL, N'Kéo thanh tạ chữ T ( T Bar Rows)', NULL, NULL, N'Cố định một bên đòn, sau đặt hai chân giữ thanh đòn và người xoay về phía bánh tạ;  Hai bàn tay ôm tròn đòn thật chắc;  Siết cơ bụng, khụy gối, lưng ngã về phía trước có thể hơi cong, đồng thời kéo đòn tạ hướng lên bằng cách siết xô và ép hai bả vại lại, giữ như vậy từ 1-2 giây;  Từ từ hạ xuống và thực hiện lại.', NULL, 2)
INSERT [dbo].[BaiViet] ([MaBaiViet], [NoiDung], [AnhChuDe], [MaPhanLoai], [NgayDang], [LuotXem], [MaNguoiDung], [MaDinhDuong], [MaTinTuc], [MaKienThuc], [TenChuDe], [TieuDe], [MaAdmin], [HuongDan], [MaBaiVietKT], [MaDanhMuc]) VALUES (14, N'Để sở hữ cơ xô đẹp và dày hơn, bài tập này sẽ giúp bạn điều đó.', N'nkcth.jpg', NULL, CAST(0x5E400B00 AS Date), 1, 10, NULL, NULL, NULL, N'Ngồi kéo cáp tay hẹp ( Narrow Grip Seated Cable Rows)', NULL, NULL, N'Đầu tiên, bạn ngồi vào máy kéo, lúc này đùi nhớ đặt vào đệm đỡ. Sử dụng tay cầm chữ V thay cho thanh kéo cáp.  2 tay cầm chắc tay cầm chữ V, ưỡn ngực về phía trước và kéo xuống đến khi gần ngực. Siết cơ bả vai và xô lại.  Từ từ trở lại vị trí ban đầu.', NULL, 2)
INSERT [dbo].[BaiViet] ([MaBaiViet], [NoiDung], [AnhChuDe], [MaPhanLoai], [NgayDang], [LuotXem], [MaNguoiDung], [MaDinhDuong], [MaTinTuc], [MaKienThuc], [TenChuDe], [TieuDe], [MaAdmin], [HuongDan], [MaBaiVietKT], [MaDanhMuc]) VALUES (15, N'Đối với bài tập vai này sẽ tác động đến 4 nhóm cơ. Ngoài ra cơ tay sau (Striceps) cũng tham gia thực hiện. Nhưng bạn nên lưu ý tránh dùng lực tay để đẩy. Và nên gồng vai khi tập.', N'tcvvm.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Tập cơ vai với máy', NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[BaiViet] ([MaBaiViet], [NoiDung], [AnhChuDe], [MaPhanLoai], [NgayDang], [LuotXem], [MaNguoiDung], [MaDinhDuong], [MaTinTuc], [MaKienThuc], [TenChuDe], [TieuDe], [MaAdmin], [HuongDan], [MaBaiVietKT], [MaDanhMuc]) VALUES (16, N'Bài tập này tập trung toàn bộ cho phần vai giữa, vai sau và vai trước chịu ít tác động hơn. Bài tập kéo cáp cho vai rộng và cổ vai gáy cũng săn chắc hơn.

', N'vncnv.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Bài tập vai nâng cáp ngang tay- Front Cable Raise
)', NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[BaiViet] ([MaBaiViet], [NoiDung], [AnhChuDe], [MaPhanLoai], [NgayDang], [LuotXem], [MaNguoiDung], [MaDinhDuong], [MaTinTuc], [MaKienThuc], [TenChuDe], [TieuDe], [MaAdmin], [HuongDan], [MaBaiVietKT], [MaDanhMuc]) VALUES (17, N'Bài tập vai với tạ đơn này sẽ tác động nhiều nhất vào cơ vai sau của các bạn.', N'vtn.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Vung tạ ngang  (Reverse Dumbbell Flyes
)', NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[BaiViet] ([MaBaiViet], [NoiDung], [AnhChuDe], [MaPhanLoai], [NgayDang], [LuotXem], [MaNguoiDung], [MaDinhDuong], [MaTinTuc], [MaKienThuc], [TenChuDe], [TieuDe], [MaAdmin], [HuongDan], [MaBaiVietKT], [MaDanhMuc]) VALUES (18, N'Tư thế gần giống với bài tập vai ở trên, tuy nhiền bài tập với tạ đơn này lại tác động nhiều nhất vào cơ vai giữa.', N'nthb.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Bài tập vai nâng tạ 2 bên (Lateral Raises)', NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[BaiViet] ([MaBaiViet], [NoiDung], [AnhChuDe], [MaPhanLoai], [NgayDang], [LuotXem], [MaNguoiDung], [MaDinhDuong], [MaTinTuc], [MaKienThuc], [TenChuDe], [TieuDe], [MaAdmin], [HuongDan], [MaBaiVietKT], [MaDanhMuc]) VALUES (19, N'Bài tập tác động nhiều nhất vào cơ vai trước và cơ cầu vai. Giúp vai rộng vạm vơ và săn chắc hơn.', N'ntvt.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Nâng tạ tay trước mặt ( Front Dumbbell Raises)', NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[BaiViet] ([MaBaiViet], [NoiDung], [AnhChuDe], [MaPhanLoai], [NgayDang], [LuotXem], [MaNguoiDung], [MaDinhDuong], [MaTinTuc], [MaKienThuc], [TenChuDe], [TieuDe], [MaAdmin], [HuongDan], [MaBaiVietKT], [MaDanhMuc]) VALUES (20, N'Đây là bài tập cơ vai nâng cao và rất khó thực hiện, do đó bạn nên tập khi đã quen với việc xử lý và cầm tạ. Bạn nên bắt đầu với mức tạ bằng 0 để tập giữ thăng bằng.', N'dtd.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Bài tập vai – đẩy tạ đứng', NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[BaiViet] ([MaBaiViet], [NoiDung], [AnhChuDe], [MaPhanLoai], [NgayDang], [LuotXem], [MaNguoiDung], [MaDinhDuong], [MaTinTuc], [MaKienThuc], [TenChuDe], [TieuDe], [MaAdmin], [HuongDan], [MaBaiVietKT], [MaDanhMuc]) VALUES (21, N'Đây cũng là một trong những bài tập cho cơ cầu vai cực hiệu quả đấy nhé', N'UprightRow.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Bài tập vai kéo tạ thẳng đứng ( Upright Row)', NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[BaiViet] ([MaBaiViet], [NoiDung], [AnhChuDe], [MaPhanLoai], [NgayDang], [LuotXem], [MaNguoiDung], [MaDinhDuong], [MaTinTuc], [MaKienThuc], [TenChuDe], [TieuDe], [MaAdmin], [HuongDan], [MaBaiVietKT], [MaDanhMuc]) VALUES (22, N'Đây là một trong những bài tập cho cơ cầu vai tốt nhất, nếu bạn tập luyện chăm chỉ tuần 2 lần', N'dntd.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Nhún tạ đơn ( Dumbbell Shrugs)', NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[BaiViet] ([MaBaiViet], [NoiDung], [AnhChuDe], [MaPhanLoai], [NgayDang], [LuotXem], [MaNguoiDung], [MaDinhDuong], [MaTinTuc], [MaKienThuc], [TenChuDe], [TieuDe], [MaAdmin], [HuongDan], [MaBaiVietKT], [MaDanhMuc]) VALUES (23, N'Squat là bài tập có tác dụng rất tốt cho mông đùi và giúp làm mông đùi phát triển, săn chắc tự nhiên. Hiểu một cách đơn giản, Squat là bài tập đứng lên - ngồi xuống và sử dụng nhiều nhóm cơ khác nhau trên cơ thể như cơ đùi, cơ mông hông. Với Squat, bạn hoàn toàn có thể tập nó ở nhà, ở phòng tập thể hình hay bất cứ nơi đâu bạn muốn. Và với nhiều Gymer, Squat được coi là vua của các bài tập dành cho cả nam và nữ.', N'gt.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Gánh Tạ ( Squat)', NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[BaiViet] ([MaBaiViet], [NoiDung], [AnhChuDe], [MaPhanLoai], [NgayDang], [LuotXem], [MaNguoiDung], [MaDinhDuong], [MaTinTuc], [MaKienThuc], [TenChuDe], [TieuDe], [MaAdmin], [HuongDan], [MaBaiVietKT], [MaDanhMuc]) VALUES (24, N'Đây là bài tập quan trọng cho việc phát triển độ lớn và sức mạnh của cơ chân.', N'ndt.jpg', NULL, CAST(0x4D3F0B00 AS Date), NULL, 10, NULL, 1, 1, N'Ngồi đẩy chân bằng máy', NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[BaiViet] ([MaBaiViet], [NoiDung], [AnhChuDe], [MaPhanLoai], [NgayDang], [LuotXem], [MaNguoiDung], [MaDinhDuong], [MaTinTuc], [MaKienThuc], [TenChuDe], [TieuDe], [MaAdmin], [HuongDan], [MaBaiVietKT], [MaDanhMuc]) VALUES (28, N'Đây là bài tập hiệu quả làm săn chắc cơ đùi trước', N'cdt.jpg', NULL, NULL, NULL, 10, NULL, 1, 1, N'Cơ đùi trước ( Legs Extension )', NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[BaiViet] ([MaBaiViet], [NoiDung], [AnhChuDe], [MaPhanLoai], [NgayDang], [LuotXem], [MaNguoiDung], [MaDinhDuong], [MaTinTuc], [MaKienThuc], [TenChuDe], [TieuDe], [MaAdmin], [HuongDan], [MaBaiVietKT], [MaDanhMuc]) VALUES (30, N'Bài tập hỗ trợ cực tốt khi kéo dãn cơ bắp tay ra hết cỡ sau đó dùng toàn bộ sức mạnh để nâng tạ lên.', N'StandingConcentrationCurl.jpg', NULL, CAST(0x3D400B00 AS Date), 1, 10, NULL, NULL, NULL, N'Standing Concentration Curl', NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[BaiViet] ([MaBaiViet], [NoiDung], [AnhChuDe], [MaPhanLoai], [NgayDang], [LuotXem], [MaNguoiDung], [MaDinhDuong], [MaTinTuc], [MaKienThuc], [TenChuDe], [TieuDe], [MaAdmin], [HuongDan], [MaBaiVietKT], [MaDanhMuc]) VALUES (32, N'Để tập bài tập này, bạn hãy chọn ghế phẳng, đặt tạ đơn bên cạnh.', N'ktmt.jpg', NULL, CAST(0x7C400B00 AS Date), 1, 10, NULL, NULL, NULL, N'Kéo tạ một tay - Dumbbell Row', NULL, NULL, N'Đặt chân phải trên một đầu, thân gập về phía trước tại eo thân trên song song với mặt đất.  Đầu tiên, bạn để tay phải trên một đầu của ghế để giữ thăng bằng. Dùng tay trái nhấc tạ từ mặt đất. Lưu ý,lưng dưới thẳng và lòng bàn tay hướng về phía thân.  Giữ bắp tay bên cạnh, thân cố định, kéo tạ thẳng lên bên cạnh ngực. Thở ra trong khi thực hiện động tác này.  Lưu ý: tập trung siết cơ lưng khi ở vị trí trên cùng, đảm bảo là chuyển động này thực hiện bằng cơ lưng, không phải tay. Tay chỉ làm nhiệm vụ di chuyển tạ.  Hạ tạ xuống vị trí ban đầu trong khi hít vào.  Lặp lại và chuyển tay.', NULL, 5)
INSERT [dbo].[BaiViet] ([MaBaiViet], [NoiDung], [AnhChuDe], [MaPhanLoai], [NgayDang], [LuotXem], [MaNguoiDung], [MaDinhDuong], [MaTinTuc], [MaKienThuc], [TenChuDe], [TieuDe], [MaAdmin], [HuongDan], [MaBaiVietKT], [MaDanhMuc]) VALUES (33, N'Hít đất được áp dụng trong rất nhiều bài tập trong đó cả những bài tập bắp tay sau.  Bài tập hít đất không quá khó và hiệu quả lại cực kì cao.  Bạn cần có một chút sức khỏe và kiên trì mới có thể duy trì được bài tập này.', N'hd.jpg', NULL, CAST(0x7C400B00 AS Date), 1, 10, NULL, NULL, NULL, N'Hít đất', NULL, NULL, N'Chọn mặt phẳng và nằm úp người xuống. Cơ thể song song với mặt phẳng, hai chân duỗi thằng. Để hai bàn tay ngang vai sau đó chống tay nâng toàn bộ cơ thể lên. Chân chống bằng mũi chân và dang rộng bằng vai. Trong quá trình nâng lên đồng thời thở ra. Sau đó từ từ hạ xuống về vị trí ban đầu và hít vào.', NULL, 5)
INSERT [dbo].[BaiViet] ([MaBaiViet], [NoiDung], [AnhChuDe], [MaPhanLoai], [NgayDang], [LuotXem], [MaNguoiDung], [MaDinhDuong], [MaTinTuc], [MaKienThuc], [TenChuDe], [TieuDe], [MaAdmin], [HuongDan], [MaBaiVietKT], [MaDanhMuc]) VALUES (34, N'Đây là một bài tập xây dựng cơ tay sau rất hiệu quả. Lưu ý khi lựa chọn tạ, vì nếu bạn chọn mức tạ quá với sức của mình sẽ có nguy cơ chấn thương do tạ rơi.', N'tic.jpg', NULL, CAST(0x7C400B00 AS Date), 1, 10, NULL, NULL, NULL, N'Triceps skull crushers', NULL, NULL, N'Lựa chọn mức tạ phù hợp. Nằm trên ghế tập. Hai tay nắm chặt tạ để sát tai. Dùng lực tay nâng tạ lên sao cho tạo với cơ thể góc 75*. Đồng thời thở sâu. Từ tự hạ tạ xuống về tư thế ban đầu và hít vào. Thực hiện 10 hiệp/lần và tập làm 3 hiệp.', NULL, 5)
INSERT [dbo].[BaiViet] ([MaBaiViet], [NoiDung], [AnhChuDe], [MaPhanLoai], [NgayDang], [LuotXem], [MaNguoiDung], [MaDinhDuong], [MaTinTuc], [MaKienThuc], [TenChuDe], [TieuDe], [MaAdmin], [HuongDan], [MaBaiVietKT], [MaDanhMuc]) VALUES (35, N'Nhún người là bài tập không đòi hỏi nhiều thể lực như bài hít đất nhưng đòi hỏi sự khéo léo.  Động tác nhún người trên ghế giúp giảm mỡ bắp tay sau và cắt cơ hiệu quả.  Trước khi thực hiện bài tập này, bạn hãy chuẩn bị một chiếc ghế cao khoảng 60cm và chắc chắn.', N'btnn.jpg', NULL, CAST(0x7C400B00 AS Date), 1, 10, NULL, NULL, NULL, N'Bài tập nhún người', NULL, NULL, N'Đứng cách chiếc ghế khoảng 90cm. Xoay lưng lại sau đó dùng hai tay đặt lên ghế (2 tay dang rộng bằng vai). Thực hiện tư thế ngồi xổm sao cho phần hông bằng với chiếc ghế. Sau đó cong hai cùi chỏ lại, hạ thấp thân người xuống ghế càng sâu càng tốt. Thực hiện động tác nhún lên và nhún xuống khoảng 20 lần.', NULL, 6)
INSERT [dbo].[BaiViet] ([MaBaiViet], [NoiDung], [AnhChuDe], [MaPhanLoai], [NgayDang], [LuotXem], [MaNguoiDung], [MaDinhDuong], [MaTinTuc], [MaKienThuc], [TenChuDe], [TieuDe], [MaAdmin], [HuongDan], [MaBaiVietKT], [MaDanhMuc]) VALUES (36, N'Nhờ vào động tác kéo và đẩy tay theo một mức tạ nhất định, bài tập tay cho nam này sẽ giúp cơ tay sau thêm to khỏe hơn.  Đây cũng là một trong những bài tập nâng cao được sử dụng khá nhiều trong các phòng tập.', N'Pressdown.jpg', NULL, CAST(0x7C400B00 AS Date), 1, 10, NULL, NULL, NULL, N'Pressdown', NULL, NULL, N'Đứng thẳng, hai chân mở rộng bằng vai. Lưng thẳng, mắt nhìn thẳng. Hai tay hơi mở đồng thời dùng lực tay kéo cáp. Lưu ý chỉ vận động ở phần khuỷu tay nhằm giúp bài tập cơ tay sau hiệu quả. Tập 15-20 hiệp/lần và tập làm 5 lần.', NULL, 6)
INSERT [dbo].[BaiViet] ([MaBaiViet], [NoiDung], [AnhChuDe], [MaPhanLoai], [NgayDang], [LuotXem], [MaNguoiDung], [MaDinhDuong], [MaTinTuc], [MaKienThuc], [TenChuDe], [TieuDe], [MaAdmin], [HuongDan], [MaBaiVietKT], [MaDanhMuc]) VALUES (37, N'Động tác này không chỉ giúp cho phần cơ ở chân cứng cáp mà còn giúp cho các múi cơ ở bụng trở nên săn chắc hơn. Nếu bạn mong muốn có một vòng hai thon gọn và một cơ bụng săn chắc thì nhất định không được bỏ qua bài tập này đâu nhé!', N'Reverse crunch.jpg', NULL, CAST(0x7C400B00 AS Date), 1, 10, NULL, NULL, NULL, N'Reverse crunch', NULL, NULL, N'Hơi cong lưng về phía sau. Tay chỉ bám vào ghế với 1 lực nhẹ nhất có thể. Dùng cơ bụng nâng chân của bạn lên. Tránh thẳng lưng rất dễ bị đau lưng. Hạ chân xuống hít vào, nâng chân lên thì thở ra.', NULL, 7)
INSERT [dbo].[BaiViet] ([MaBaiViet], [NoiDung], [AnhChuDe], [MaPhanLoai], [NgayDang], [LuotXem], [MaNguoiDung], [MaDinhDuong], [MaTinTuc], [MaKienThuc], [TenChuDe], [TieuDe], [MaAdmin], [HuongDan], [MaBaiVietKT], [MaDanhMuc]) VALUES (38, N'Bài tập bụng gym này sẽ giúp cơ bụng và lưng dưới tác động cùng nhau để gia tăng sự thăng bằng của cơ thể trong suốt động tác này.', N'Ab Wheel Plank.jpg', NULL, CAST(0x7C400B00 AS Date), 2, 10, NULL, NULL, NULL, N'Ab Wheel Plank', NULL, NULL, N'Hai tay giữ chặt 1 thanh tạ đơn, rộng hơn vai. Bắt đầu bằng tư thế tạ ngay dưới hai vai. Lăn tạ càng xa càng tốt, tới khi nào bạn cảm thấy hơi quá mức, sau đó quay ngược lại. Dùng lực cơ bụng để kiểm soát toàn bộ chuyển động, chậm và chắc. Giữ lưng thẳng trong suốt bài tập.', NULL, 7)
SET IDENTITY_INSERT [dbo].[BaiViet] OFF
SET IDENTITY_INSERT [dbo].[BaiVietKT] ON 

INSERT [dbo].[BaiVietKT] ([MaBaiVietKT], [NoiDung], [AnhChuDe], [TenChuDe], [TieuDe], [MaNguoiDung], [NgayDang]) VALUES (2, N'Nuôi dưỡng tế bào: nước cung cấp, vận chuyển chất dinh dưỡng cần thiết cho các tế bào, chẳng hạn như các khoáng chất, vitamin và glucose...  Chuyển hoá và tham gia các phản ừng trao đổi chất: nước là dung môi hoà tan và vận chuyển các chất dinh dưỡng trong thức ăn mà cơ thể đã hấp thu.  Đào thải các chất cặn bã: nước loại bỏ các độc tố mà các cơ quan, tế bào từ chối đồng thời thông qua đường nước tiểu và phân.  Ổn định nhiệt độ cơ thể: nước giúp cân bằng nhiệt độ cớ thể trong môi trường nóng hoặc lạnh. Nước cho phép cơ thể giải phóng nhiệt khi nhiệt độ môi trường cao hơn so với nhiệt độ cơ thể. Cơ thể bắt đầu đổ mồ hôi, và sự bay hơi của nước từ bề mặt da rất hiệu quả làm mát cơ thể.  Giảm ma sát: nước là một chất bôi trơn hiệu quả quanh khớp. Nó cũng hoạt động như một bộ phận giảm xóc cho mắt, não, tuỷ sống và ngay cả đối với thai nhi trong nước ối.  Nước là trung tâm của cuộc sống. Điều này lý giải tại sao không ai có thể sống hơn 3 đến 5 ngày mà không có bất kỳ lượng nước uống vào.', N'nuoc.jpg', N'Nước', N'Nước Cần Uống Bao Nhiêu? Thể Hình Cần Biết', 1, CAST(0x83400B00 AS Date))
INSERT [dbo].[BaiVietKT] ([MaBaiVietKT], [NoiDung], [AnhChuDe], [TenChuDe], [TieuDe], [MaNguoiDung], [NgayDang]) VALUES (3, N'Protein được cấu tạo từ các amino axit nhỏ hơn. Người ta đã tìm ra được khoảng 23 loại axit amin khác nhau. Trong đó được chia thành 2 nhóm chính:  + Axit amin thiết yếu: có 8 loại, là loại axit amin mà cơ thể mình không thể tự tổng hợp được mà bắt buộc phải lấy chúng từ thức ăn bên ngoài. Nếu các loại axit amin này bị thiếu thì cơ thể sẽ bị ảnh hưởng và lúc đó cách chức năng của cơ thể sẽ không hoạt động bình thường.  +Axit amin không thiết yếu: gồm có 15 loại, các axit amin này sẽ được tổng hợp từ cơ thể và cũng có sẵn trong thức ăn tự nhiên.Protein có 2 nguồn chính: từ động vật và thực vật  Protein động vật: Loại thực phẩm có nhiều protein động vật nhất là thịt gà có 23,3g/100g. Các loại thuỷ hải sản có hàm lượng protein cao nhất, tiếp đến là các loại thịt, cá nước ngọt, sữa, trứng...  Protein thực vật: Thực phẩm có nhiều protein nhất là đậu vàng, cứ 100g thì có 36,6g, tiếp đến là các loại đậu khác, vừng, ngũ cốc...', N'Protein.jpg', N'Protein', N'Protein Là Gì? Kiến Thức Cần Phải Biết', NULL, CAST(0x81400B00 AS Date))
INSERT [dbo].[BaiVietKT] ([MaBaiVietKT], [NoiDung], [AnhChuDe], [TenChuDe], [TieuDe], [MaNguoiDung], [NgayDang]) VALUES (4, N'Insulin thật ra là 1 loại protein được tuyến tụy tiết ra mỗi khi cơ thể chúng ta ăn tinh bột, protein hoặc cả 2 (dĩ nhiên là tuyến tụy của bạn hoạt động bình thường). Tuy nhiên, khác với các loại protein xây dựng cơ bắp khác, insulin cóa vai trò như 1 hormone tăng trưởng.  Giống như các protein khác, insulin là một chuỗi kết hợp các axit amin, nhưng cách các chuỗi protein này được xếp làm cho nó hành động như 1 cơ chế báo hiệu hơn là tính năng xây dựng cơ bắp.  Từ tuyến tụy, insulin đi vào máu đến các mô khác nhau, trong đó có mô cơ. Các tế bào cơ dưới tác dụng của insulin sẽ “mở cửa” cho phép, glucose, axit amin, creatine đi vào cơ bắp. Quá trình này chính là lý do chính tại sao insulin rất quan trọng trong việc xây dựng cơ bắp.  Một lý do khác nữa là insulin làm tăng các phản ứng sinh hóa trong cơ làm tăng tổng hợp protein. Ngoài ra, insulin cũng giúp ngăn chặn cơ bắp rơi vào trạng thái dị hóa (khối lượng cơ bắp suy giảm), mà tăng cường phát triển cơ bắp.  Insulin cũng gián tiếp hỗ trợ phát triển cơ bắp bằng cách làm có các mạch máu giãn ra và "thư giãn" mạch, điều này cho phép máu vận chuyển đến cơ bắp nhiều hơn, do đó chất dinh dưỡng (glucose, axit amin, creatine) đến cơ bắp nhiều hơn. Đây là lí do tại sao nhiều VĐV thể hình nạp glucose khi tập luyện để đẩy cao insulin giúp dinh dưỡng trong cơ bắp ở mức cao nhất.', N'Insulin.jpg', N'Insulin', N'Insulin Là Gì? Vai Trò Phát Triển Cơ Bắp', NULL, CAST(0x80400B00 AS Date))
INSERT [dbo].[BaiVietKT] ([MaBaiVietKT], [NoiDung], [AnhChuDe], [TenChuDe], [TieuDe], [MaNguoiDung], [NgayDang]) VALUES (5, N'Dự trữ ATP trong 1 bó cơ không nhiều, để co cơ lâu dài ATP luôn phải được phục hồi đầy đủ. Năng lượng dùng để phục hồi ATP bằng cách phân giải nhiều chất khác nhau: tinh bột, protein, chất béo.  Trong cơ thể, ATP được tổng hợp bằng 2 con đường khác nhau:  - Không có sự tham gia của oxy gọi là quá trình yếm khí.  - Có sự tham gia của oxy gọi là quá trình hiếu khí.  Để tái tạo ATP có 3 hệ thống (hệ năng lượng) làm việc:  + Hệ photphagen  +Hệ lactic  + Hệ oxy  Trong đó hệ photphagen và hệ lactic là hệ yếm khí, hệ oxy là hệ hiếu khí.  Ba hệ trên khác nhau về:  + Cơ chất: chất sinh ra năng lượng.  + Dung lượng: là số lượng tối đa có thể cung cấp.  + Công suất: là nguồn năng lượng tối đa có thể cung cấp trong 1 khoảng thời gian nhất định.  Mức độ tham gia của 3 hệ năng lượng trên phụ thuộc vào: công suất và thời gian co cơ, điều kiện hoạt động của cơ và mức độ cung cấp oxy choc ơ thể.', N'ATP.jpg', N'ATP', N'ATP Là Gì? Tập Thể Hình Cần Biết', NULL, CAST(0x7F400B00 AS Date))
INSERT [dbo].[BaiVietKT] ([MaBaiVietKT], [NoiDung], [AnhChuDe], [TenChuDe], [TieuDe], [MaNguoiDung], [NgayDang]) VALUES (6, N'Chỉ Số BMI Đây là cách tính đơn giản nhất: BMI = cân nặng (kg) chia cho bình phương chiều cao (m).  Ví dụ: tôi nặng 75kg cao 172cm thì BMI của tôi là 75/(1.72*1.72) = 25.3', N'xdtlmct.jpg', N'Tỉ lệ mỡ', N'Xác Định Tỉ Lệ Mỡ Của Cơ Thể', NULL, CAST(0x7E400B00 AS Date))
INSERT [dbo].[BaiVietKT] ([MaBaiVietKT], [NoiDung], [AnhChuDe], [TenChuDe], [TieuDe], [MaNguoiDung], [NgayDang]) VALUES (7, N'Cúm thường đi kèm với nhiều cơn đau trên khắp cơ thể và sốt vì vậy sẽ nguy hiểm hơn cảm thông thường. Tập luyện lúc này không chỉ hại đến cơ bắp mà còn hại cả sức khỏe của bạn. Hãy lưu ý rằng dù tập luyện giúp bạn tăng cơ bắp, giảm mỡ thừa và năng động hơn thì vẫn là hoạt động tiêu hao nhiều năng lượng. Cơ thể bạn cần phải thật khỏe mạnh để đi từ chế độ tiêu hao năng lượng sang chế độ đồng hóa giữa nghỉ ngơi và sản sinh cơ bắp. Vì vậy khi bị cúm, cơ thể bạn đã tiêu tốn nhiều sức lực để đối chọi lại virut cúm, tập luyện lúc này sẽ rút cạn sức của bạn. Thế nên, không được tập luyện khi đang cúm mà hãy tập trung bồi bổ và uống thật nhiều nước (như nước và chất điện giải để chống mất nước). Khi đã khỏi bệnh, hãy bắt đầu tập lại ở mức tạ vừa phải. Đừng bắt ép mình quá nhiều. Vào tuần thứ 2 sau khi đã khỏi bệnh, hãy nâng cường độ tập lên một tý. Tuần sau, bạn đã có thể tập lại bình thường.  Nếu bị cảm nhẹ (triệu chứng là chảy nước mũi và ho), bạn có thể hạ mức tập xuống 75% để tránh tập quá mức. Nếu bị cảm nặng (triệu chứng là đau nhức, mệt mỏi và viêm họng), bạn nên ngưng tập luyện hẳn tới khi các triệu chứng ngưng hẳn. Trong trường hợp này, bạn chỉ cần tập những bài tập khởi động giống như bài tập cho người bị cúm. Hãy lưu ý rằng đừng bắt hệ miện dịch làm việc quá sức khi đang chống lại bệnh tật. Hãy dành thời gian nghỉ ngơi trong thời gian này.  Nếu tình hình tệ hơn thì bạn hãy tìm đến bác sỹ để được tư vấn.', N'cnttkbb.jpg', N'Có Nên Tập Tạ Khi Bị Bệnh', N'Có Nên Tập Tạ Khi Bị Bệnh', NULL, CAST(0x7D400B00 AS Date))
INSERT [dbo].[BaiVietKT] ([MaBaiVietKT], [NoiDung], [AnhChuDe], [TenChuDe], [TieuDe], [MaNguoiDung], [NgayDang]) VALUES (8, N'Phục hồi cơ bắp rất quan trọng trong việc tập thể hình của chúng ta, chúng ta chỉ có thể thực hiện tốt bài Khái niệm về phục hồi cơ bắp nếu chúng ta thực hiện công tác phục hồi đúng cách.  Giữa các hiệp tập Khái niệm về phục hồi cơ bắp : Rất đơn giản tùy vào điều kiện dinh dưỡng của mình mà các bạn có thời gian phục hồi cần thiết khác nhau.  Tập nặng (tạ nặng < 8reps/set trên 80% 1RM): lúc này bạn cần phải có thời gian phục hồi lâu nhất để cơ bắp đủ thời gian tiếp nhiên liệu (đường glucose, BCAA, Glutamin, Creatine ...) chuẩn bị cho lượt đẩy phía sau. Bạn cần nghỉ từ 2-3 phút để có thể tập lại, nếu thời gian nghỉ của bạn quá 3 phút thì mọi cố gắng tập luyện của bạn sẽ không còn nhiều ý nghĩa do cơ bắp đã mất đi độ kích thích cần thiết.  Tập vừa (tạ vừa từ 8reps/set 60%-80% 1RM): lúc này bạn cần thời gian phục hồi ít hơn 1-2 phút là đủ cho cơ bắp bạn sẵn sàng cho lượt đẩy tiếp theo  Tập nhẹ (tạ nhẹ trên 12reps/set 40%-60% 1RM): bạn nghỉ ít thôi, dưới 1 phút thôi bạn nhé.', N'knphcb.jpg', N'Khái Niệm Về Phục Hồi Cơ Bắp', N'Khái Niệm Về Phục Hồi Cơ Bắp', NULL, CAST(0x7C400B00 AS Date))
INSERT [dbo].[BaiVietKT] ([MaBaiVietKT], [NoiDung], [AnhChuDe], [TenChuDe], [TieuDe], [MaNguoiDung], [NgayDang]) VALUES (10, N'Suy nghĩ này khiến không ít người chần chừ không dám đi tập gym, cũng như nhiều bậc phụ huynh không muốn cho con mình đến phòng tập vì sợ ảnh hưởng đến chiều cao. Trên thực tế, việc chiều cao bị giảm đi do tập gym hoàn toàn chỉ là suy đoán của những người bình thường, không phải là kết quả của một nghiên cứu khoa học nào.  Theo các chuyên gia thể hình, nếu bạn còn đang ở độ tuổi phát triển chiều cao, các bài tập như nâng tạ hay đứng gánh tạ có thể sẽ không khiến bạn lùn đi, nhưng không phải là điều kiện tốt nhất để đạt đến chiều cao tối đa của bản thân. Đó là lý do vì sao bạn chỉ nên đi tập gym khi hệ cơ xương và chiều cao đã phát triển tương đối toàn diện.   Nếu bạn đã trưởng thành và chiều cao đã ngừng phát triển, thì việc tập gym hoàn toàn KHÔNG có khả năng làm suy giảm chiều cao của bạn. Thực ra thì bạn có muốn lùn đi cũng không được, vì chiều cao của một người chỉ giảm xuống nếu bạn phẫu thuật cắt bỏ xương, hoặc khi về già xương bị cong lại.  Không những thế, tập gym đúng cách với một chế độ dinh dưỡng hợp lý thậm chí còn có thể khiến chiều cao của bạn phát triển ngoài mong đợi. ', N'tgcbl.jpg', N'Tập gym có bị lùn không? Cuối cùng đã có câu trả lời', N'Tập gym có bị lùn không? Cuối cùng đã có câu trả lời', NULL, CAST(0x82400B00 AS Date))
SET IDENTITY_INSERT [dbo].[BaiVietKT] OFF
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (1, N'Chests -Ngực')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (2, N'Back - Lưng')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (3, N'Shoulders - Vai')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (4, N'Legs - Chân Mông Đùi')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (5, N'Biceps - Tay trước')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (6, N'Triceps - Tay sau')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (7, N'Abs - Bụng')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (8, N'Bài Tập Cho Người Mới')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (9, N'Những bài cardio quan trọng')
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
SET IDENTITY_INSERT [dbo].[DinhDuong] ON 

INSERT [dbo].[DinhDuong] ([Ma_DinhDuong], [TieuDe], [TenThucPham], [NoiDung], [Quyen], [AnhThucPham], [LuotXem]) VALUES (28, N'Có bao nhiêu bạn tập thể hình thưởng thức long trắng trứng sau khi tập. Trứng là một trong những loại thực phẩm hoàn thiện nhất và dễ mua và dễ chế biến. Bạn có thể đơn giản là luộc, chiên, hấp… Nó có một vai trò quan trọng trong việc cung cấp một chế độ ăn uống lành mạnh cho tất cả và đặc biệt là tập thể hình. Chúng ta đều biết tầm quan trọng của protein trong quá trình hình thành cơ bắp, không có protein, cơ bắp của bạn sẽ chỉ đơn giản là không phát triển, trứng là một câu trả lời về Protein cho bạn. Dưới đây là toàn bộ lý do tại sao tôi đề cao giá trị của trứng.', N'Trứng', N'Trứng gà là nguồn cung cấp chất đạm dồi dào và rất dễ tìm thấy. Chất đạm trong trứng gà chứa nhiều acid amin có tác dụng hỗ trợ hoạt động của các hormone, cơ bắp và enzim. Theo nghiên cứu, có 10.8g Protein trong 100g trứng gà. Thông thường thì 1 quả trứng lớn có 3.6g protein từ lòng trắng và 2.7g protein từ lòng đỏ. Lòng đỏ chứa chất đạm đơn giản và dễ hòa tan. Còn lượng đạm ở lòng trắng thường là các acid amin và albumin đóng vai trò quan trọng với cơ thể.', NULL, N'trung.jpg', 2)
INSERT [dbo].[DinhDuong] ([Ma_DinhDuong], [TieuDe], [TenThucPham], [NoiDung], [Quyen], [AnhThucPham], [LuotXem]) VALUES (29, N'Chuối là món khoái khẩu của nhiều người. Tuy nhiên, không ít người không biết tối đa hóa lợi ích của chuối với sức khỏe khi chọn ăn.', N'Chuối', N'Chuối là loại trái cây quen thuộc với mọi người và được các gymer ưa thích và dùng trước khi luyện tập gym. Bởi hàm lượng chất Kali có trong chuối giúp duy trì và ổn định các Noron thần kinh và cơ bắp.  Ngoài ra trong chuối có 8 loại axit amin thiết yếu, có 11 khoáng chất và 6 loại vitamin. Trong chuối còn có đường fructose được hấp thụ chậm để duy trì năng lượng cho cơ thể. Chuối cũng rất giàu các loại carbohydrate khác chuyển hóa chậm và phóng thích đường vào máu, để đáp ứng cho những hoạt động thể lực kéo dài hàng giờ. Lượng potassium cao có trong chuối sẽ duy trì lực, giảm nguy cơ bị vọp bẻ. Nếu bạn đang băn khoăn nên ăn gì trước khi tập thể hình thì chuối là lựa chọn không thể phù hợp hơn.', NULL, N'chuoi.jpg', 1)
INSERT [dbo].[DinhDuong] ([Ma_DinhDuong], [TieuDe], [TenThucPham], [NoiDung], [Quyen], [AnhThucPham], [LuotXem]) VALUES (30, N'Là một món ăn quen thuộc và dễ làm, mà giá trị dinh dưỡng đem lại rất cao', N'Bánh mì trứng', N'Trước khi tập thể hình bạn hãy ăn bánh mì trứng, một lát bánh mì trứng sẽ cung cấp đầy đủ carbohydrate cho cơ thể. Ăn bánh mì kèm với mật ong, bơ lạc hoặc mứt, kèm theo 1-2 quả trứng cung cấp protein dồi dào. Còn tập gym vào giữa buổi sáng thì nên ăn 30-40 gram carbohydrate và 15-20 gram protein.', NULL, N'banhmitrung.jpg', 1)
INSERT [dbo].[DinhDuong] ([Ma_DinhDuong], [TieuDe], [TenThucPham], [NoiDung], [Quyen], [AnhThucPham], [LuotXem]) VALUES (31, N'Yến mạch còn được mệnh danh là “nữ hoàng của các loại ngũ cốc”, có cách đây hơn 4000 năm và trước đây được xem như thức ăn cho những người nghèo. Nhưng đến ngày nay yến mạch được xem như thực phẩm được ưa chuộng trên toàn thế giới. Yến mạch chứa carbohydrate hấp thu chậm vì vậy giúp có cảm giác no lâu và hơn thế nữa cung cấp năng lượng cho một ngày làm việc.Trong yến mạch giàu các chất đạm thiên nhiên, chất béo không bão hòa, vitamin và các chất dinh dưỡng quan trọng khác.', N'Yến mạch', N'Yến mạch là thực phẩm dinh dưỡng được nhiều gymer lựa chọn, bởi chất xơ có nhiều trong yến mạch giúp giải phóng năng lượng trong máu nhanh hơn. Ngoài ra, trong yến mạch cũng chứa nhiều Vitamin B để chuyển hóa thành carb thành năng lượng hiệu quả hơn. Trong 100g yến mạch có khoảng 2.5g Protein. Yến mạch cho tỷ lệ chất xơ hòa tan cao nhất. Chất xơ này di chuyển qua đường ruột của bạn và giảm nồng độ cholesterol trong máu. ', NULL, N'yenmach.jpg', 13)
INSERT [dbo].[DinhDuong] ([Ma_DinhDuong], [TieuDe], [TenThucPham], [NoiDung], [Quyen], [AnhThucPham], [LuotXem]) VALUES (32, N'Nếu ban đầu thức uống protein chỉ phổ biến trong phạm vi các cửa hàng chăm sóc sức khỏe chuyên biệt thì ngày nay, bạn dễ dàng tìm mua chúng ngay cả trong các siêu thị lớn bé. Dần dà, nó trở thành một thứ không thể thiếu cho cánh đàn ông, đặc biệt là những người yêu thể hình.', N'Đồ uống giàu protein', N'Cơ bắp được cấu tạo từ protein, đồng thời protein rất có lợi cho sự phát triển của xương và da. Nên bổ sung thêm các loại đồ uống có chứa nhiều Protein như: Sữa đậu nành, sữa đậu Hà Lan, sữa đậu đỏ, nước rau ngót, nước mơ ngâm, nước ổi, nước chanh dây, nước hạt lựu,… trước khi tập thể hình. ', NULL, N'douongprotein.jpg', 1)
INSERT [dbo].[DinhDuong] ([Ma_DinhDuong], [TieuDe], [TenThucPham], [NoiDung], [Quyen], [AnhThucPham], [LuotXem]) VALUES (33, N'Cá hồi được coi là một trong những thực phẩm bổ dưỡng nhất hành tinh vì không chỉ chứa a xít béo Omega-3 mà còn chứa đa vitamin và khoáng chất khác.', N'Cá hồi và rau xanh ', N'Bên cạch các thực phẩm trên thì bạn có thể dùng thêm cá hồi và rau xanh sau khi tập. Cá hồi là thực phẩm tốt nhất với người tập gym, đặc biệt là những người muốn lên cơ nạc mà không có mỡ.  Các chuyên gia cũng khuyến khích ăn nhiều các lọai rau xanh như cải xoăn, bông cải và rau bina. Những loại rau cải lá màu xanh sậm có hàm lượng calo đủ cung cấp cho nhu cầu dinh dưỡng của người tập, cũng như nhiều loại khoáng chất và enzyme khác.  Mỗi người có một chế độ luyện tập, đặc điểm cơ thể khác nhau. Hy vọng rằng bạn sẽ có được một chế độ hợp lý nhất để đạt được kết quả luyện tập tốt.', NULL, N'cahoivarau.jpg', 1)
INSERT [dbo].[DinhDuong] ([Ma_DinhDuong], [TieuDe], [TenThucPham], [NoiDung], [Quyen], [AnhThucPham], [LuotXem]) VALUES (34, N'Ngũ cốc nguyên chất có thể cung cấp đầy đủ protein, carbohydrate và các loại vitamin, khoáng chất cần thiết khác cho cơ thể. Ngũ cốc là đồ ăn lý tưởng sau khi tập, đặc biệt với những người ăn chay. Chọn ngũ cốc làm từ ngũ cốc nguyên hạt mà không nhiều thêm đường. Thêm một vài loại hạt hoặc một ít hoa quả cắt nhỏ cho cốc ngũ cốc thêm đậm đà hương vị và dinh dưỡng hơn. Ngoài ra bạn có thể uống thêm sữa sẽ có lợi cho tiêu hoá, cũng như cung cấp đầy đủ casein và protein dạng lỏng.Các loại sữa có lợi cho tim bao gồm: sữa hạnh nhân, sữa đậu nành, sữa gạo, sữa bò và sữa dừa. ', N'Ngũ cốc và sữa', NULL, NULL, N'ngucocvasua.jpg', 1)
INSERT [dbo].[DinhDuong] ([Ma_DinhDuong], [TieuDe], [TenThucPham], [NoiDung], [Quyen], [AnhThucPham], [LuotXem]) VALUES (35, N'Protein, carbohydrate và kali có nhiều trong bánh sandwich bơ đậu phộng. Một lượng vừa phải protein trong thực phẩm này rất có lợi cho cơ thể của bạn sau khi tập gym giảm cân. Protein đóng vai trò quan trọng trong việc hình thành và giúp săn chắc cơ bắp của bạn. Bơ đậu phộng tự nhiên được làm từ các loại hạt, cung cấp chất béo tư nhiên cho cơ thể. Kết hợp bánh sandwich giàu protein và bơ đậu phộng cung cấp năng lượng dồi dào nhưng vẫn không gây béo cho cơ thể chính bạn.', N'Sandwich', NULL, NULL, N'Sandwich.jpg', 1)
INSERT [dbo].[DinhDuong] ([Ma_DinhDuong], [TieuDe], [TenThucPham], [NoiDung], [Quyen], [AnhThucPham], [LuotXem]) VALUES (36, N'Việc ăn kết hợp thực phẩm giàu protein với tinh bột rất tốt cho những người nghỉ ngơi sau khi tập. Bạn nên chọn gạo, ngô, khoai tây, đây là những thực phẩm chứa maltodextrin - một loại carbohydrate phức hợp được hấp thụ trực tiếp qua ruột và giúp cơ thể tiêu hóa protein nhanh hơn mà không có tiềm năng tăng chất béo.  Một bữa ăn khoa học, giàu dinh dưỡng khi tập gym có thể là một miếng cá hồi ăn với cơm và tráng miệng bằng một quả chuối.', N'Tinh bột', NULL, NULL, N'tinhbot.jpg', 1)
INSERT [dbo].[DinhDuong] ([Ma_DinhDuong], [TieuDe], [TenThucPham], [NoiDung], [Quyen], [AnhThucPham], [LuotXem]) VALUES (37, N'Sữa chua Hy Lạp kết hợp với trái cây sẽ mang lại cho bạn một lượng protein chất lượng cao, tuy nhiên protein trong sữa chua là loại hấp thu chậm, nên lượng này sẽ có tốt dụng tốt sau khi bạn tập, còn trái cây sẽ là phân tách nhanh hơn để phục vụ cho việc luyện tập của bạn.', N'Sữa chua Hy Lạp – trái cây', NULL, NULL, N'suachuahilap.jpg', 1)
INSERT [dbo].[DinhDuong] ([Ma_DinhDuong], [TieuDe], [TenThucPham], [NoiDung], [Quyen], [AnhThucPham], [LuotXem]) VALUES (38, N'Những loại thực phẩm có lượng đường cao như bánh ngọt thường chứa nhiều số lượng đường mà bạn cần nạp vào cơ thể sau khi tập. Các loại như bánh quy, bánh bông lan… có tác dụng mang đến nguồn năng lượng thiết yếu trước khi tập luyện không phải sau. Vì đây là những thực phẩm có thể dễ dàng tiêu hóa và là nguồn nguyên liệu lý tưởng cho tập luyện. Để nạp năng lượng sau tập luyện, thay vì bánh ngọt bạn có thể ăn hoa quả sấy khô hoặc vài lát bánh mì nướng.', N'Thực phẩm có lượng đường cao', NULL, NULL, N'tpldc.jpg', 1)
INSERT [dbo].[DinhDuong] ([Ma_DinhDuong], [TieuDe], [TenThucPham], [NoiDung], [Quyen], [AnhThucPham], [LuotXem]) VALUES (39, N'Những thực phẩm nhiều chất xơ như rau củ quả tuy là thực phẩm tốt cho việc giảm cân nhưng lại không phải lựa chọn hợp lý sau khi tập luyện. Lý do chính bởi vì những rau củ quả: cần tây, cà rốt, súp lơ xanh, ớt chuông…  chứa ít calo và không thể mang đến đủ lượng dinh dưỡng để người tập phục hồi năng lượng sau khi tập luyện. ', N'Thực phẩm nhiều chất xơ', NULL, NULL, N'tpncx.jpg', 2)
SET IDENTITY_INSERT [dbo].[DinhDuong] OFF
INSERT [dbo].[KT] ([MaKienThuc], [TenKienThuc]) VALUES (1, N'Kiến Thức Căn bản')
INSERT [dbo].[KT] ([MaKienThuc], [TenKienThuc]) VALUES (2, N'Kiến Thức Nâng Cao')
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [MatKhau], [Gmail], [NhapLaiMatKhau], [NgaySinh], [DienThoaiND], [DiaChi]) VALUES (10, N'hoangtu1999', N'123123', N'hoangtu2719@gmail.com', N'123123', CAST(0x8D590000 AS SmallDateTime), N'0367278221', N'Phú An')
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [MatKhau], [Gmail], [NhapLaiMatKhau], [NgaySinh], [DienThoaiND], [DiaChi]) VALUES (17, N'tu2', N'1', N'hoangtu2719@gmail.com', N'1', CAST(0x8D590000 AS SmallDateTime), N'0367278221', NULL)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [MatKhau], [Gmail], [NhapLaiMatKhau], [NgaySinh], [DienThoaiND], [DiaChi]) VALUES (18, N'thanhyeupa', N'1', N'hoangtu2719@gmail.com', N'1', CAST(0x8D590000 AS SmallDateTime), N'0367278221', NULL)
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenNguoiDung], [MatKhau], [Gmail], [NhapLaiMatKhau], [NgaySinh], [DienThoaiND], [DiaChi]) VALUES (1030, N'1', N'1', N'hoangtu2719@gmail.com', N'1', CAST(0xAB390000 AS SmallDateTime), N'0367278221', NULL)
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
SET IDENTITY_INSERT [dbo].[TinTuc] ON 

INSERT [dbo].[TinTuc] ([MaTinTuc], [TieuDe], [HinhAnh], [NoiDung], [Tieude2]) VALUES (1, N'BẠN MUỐN', N'Banner3.jpg', N'Số đo 3 vòng hoàn hảo? Cơ bụng 6 múi? Hay đơn giản bạn cần rèn luyện sức khỏe nhưng lại lười biếng và không có chút hứng thú, động lực khi bước vào phòng tập gym?', N'Có một vóc dáng quyến rũ')
INSERT [dbo].[TinTuc] ([MaTinTuc], [TieuDe], [HinhAnh], [NoiDung], [Tieude2]) VALUES (2, N'NẾU BẠN DỪNG LẠI', N'Banner2.jpg', N'Thành công sẽ biến mất', N'')
INSERT [dbo].[TinTuc] ([MaTinTuc], [TieuDe], [HinhAnh], [NoiDung], [Tieude2]) VALUES (3, N'FITNESS', N'Banner4.jpg', N'Được ra đời với tiêu chí là WEDSITE dành cho của những người đam mê tập luyện theo một cách khoa học và có đam mê cháy bỏng muốn thay đổi bản thân, FITNESS cung cấp giải pháp toàn diện cho mọi nhu cầu của bạn từ giảm béo, tăng cơ, kiến thức tập gym, dinh dưỡng…', N'')
SET IDENTITY_INSERT [dbo].[TinTuc] OFF
ALTER TABLE [dbo].[BaiViet]  WITH CHECK ADD  CONSTRAINT [FK_BaiViet_ADMIN] FOREIGN KEY([MaAdmin])
REFERENCES [dbo].[ADMIN] ([MaAdmin])
GO
ALTER TABLE [dbo].[BaiViet] CHECK CONSTRAINT [FK_BaiViet_ADMIN]
GO
ALTER TABLE [dbo].[BaiViet]  WITH CHECK ADD  CONSTRAINT [FK_BaiViet_BaiVietKT] FOREIGN KEY([MaBaiVietKT])
REFERENCES [dbo].[BaiVietKT] ([MaBaiVietKT])
GO
ALTER TABLE [dbo].[BaiViet] CHECK CONSTRAINT [FK_BaiViet_BaiVietKT]
GO
ALTER TABLE [dbo].[BaiViet]  WITH CHECK ADD  CONSTRAINT [FK_BaiViet_DanhMuc] FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DanhMuc] ([MaDanhMuc])
GO
ALTER TABLE [dbo].[BaiViet] CHECK CONSTRAINT [FK_BaiViet_DanhMuc]
GO
ALTER TABLE [dbo].[BaiViet]  WITH CHECK ADD  CONSTRAINT [FK_BaiViet_DinhDuong] FOREIGN KEY([MaDinhDuong])
REFERENCES [dbo].[DinhDuong] ([Ma_DinhDuong])
GO
ALTER TABLE [dbo].[BaiViet] CHECK CONSTRAINT [FK_BaiViet_DinhDuong]
GO
ALTER TABLE [dbo].[BaiViet]  WITH CHECK ADD  CONSTRAINT [FK_BaiViet_KT] FOREIGN KEY([MaKienThuc])
REFERENCES [dbo].[KT] ([MaKienThuc])
GO
ALTER TABLE [dbo].[BaiViet] CHECK CONSTRAINT [FK_BaiViet_KT]
GO
ALTER TABLE [dbo].[BaiViet]  WITH CHECK ADD  CONSTRAINT [FK_BaiViet_NguoiDung] FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[BaiViet] CHECK CONSTRAINT [FK_BaiViet_NguoiDung]
GO
ALTER TABLE [dbo].[BaiViet]  WITH CHECK ADD  CONSTRAINT [FK_BaiViet_PhanLoai] FOREIGN KEY([MaPhanLoai])
REFERENCES [dbo].[PhanLoai] ([MaPhanLoai])
GO
ALTER TABLE [dbo].[BaiViet] CHECK CONSTRAINT [FK_BaiViet_PhanLoai]
GO
ALTER TABLE [dbo].[BaiViet]  WITH CHECK ADD  CONSTRAINT [FK_BaiViet_TinTuc] FOREIGN KEY([MaTinTuc])
REFERENCES [dbo].[TinTuc] ([MaTinTuc])
GO
ALTER TABLE [dbo].[BaiViet] CHECK CONSTRAINT [FK_BaiViet_TinTuc]
GO
ALTER TABLE [dbo].[Binhluan]  WITH CHECK ADD  CONSTRAINT [FK_Binhluan_BaiViet] FOREIGN KEY([MaBaiViet])
REFERENCES [dbo].[BaiViet] ([MaBaiViet])
GO
ALTER TABLE [dbo].[Binhluan] CHECK CONSTRAINT [FK_Binhluan_BaiViet]
GO
ALTER TABLE [dbo].[Binhluan]  WITH CHECK ADD  CONSTRAINT [FK_Binhluan_NguoiDung] FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[Binhluan] CHECK CONSTRAINT [FK_Binhluan_NguoiDung]
GO
ALTER TABLE [dbo].[TraLoi]  WITH CHECK ADD  CONSTRAINT [FK_TraLoi_Binhluan] FOREIGN KEY([MaBinhLuan])
REFERENCES [dbo].[Binhluan] ([MaBinhLuan])
GO
ALTER TABLE [dbo].[TraLoi] CHECK CONSTRAINT [FK_TraLoi_Binhluan]
GO
ALTER TABLE [dbo].[TraLoi]  WITH CHECK ADD  CONSTRAINT [FK_TraLoi_NguoiDung] FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[TraLoi] CHECK CONSTRAINT [FK_TraLoi_NguoiDung]
GO
USE [master]
GO
ALTER DATABASE [Gym] SET  READ_WRITE 
GO
