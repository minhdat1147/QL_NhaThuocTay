USE [master]
GO
/****** Object:  Database [QL_NhaThuocTay]    Script Date: 4/28/2022 10:17:54 PM ******/
CREATE DATABASE [QL_NhaThuocTay]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QL_NhaThuocTay', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QL_NhaThuocTay.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QL_NhaThuocTay_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QL_NhaThuocTay_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QL_NhaThuocTay] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_NhaThuocTay].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_NhaThuocTay] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_NhaThuocTay] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_NhaThuocTay] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_NhaThuocTay] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_NhaThuocTay] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_NhaThuocTay] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QL_NhaThuocTay] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_NhaThuocTay] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_NhaThuocTay] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_NhaThuocTay] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_NhaThuocTay] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_NhaThuocTay] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_NhaThuocTay] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_NhaThuocTay] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_NhaThuocTay] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QL_NhaThuocTay] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_NhaThuocTay] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_NhaThuocTay] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_NhaThuocTay] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_NhaThuocTay] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_NhaThuocTay] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_NhaThuocTay] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_NhaThuocTay] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QL_NhaThuocTay] SET  MULTI_USER 
GO
ALTER DATABASE [QL_NhaThuocTay] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_NhaThuocTay] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_NhaThuocTay] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_NhaThuocTay] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QL_NhaThuocTay]
GO
/****** Object:  Table [dbo].[ChiTietHD]    Script Date: 4/28/2022 10:17:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHD](
	[MaHD] [int] NOT NULL,
	[MALOAI] [nvarchar](10) NOT NULL,
	[MaThuoc] [nvarchar](10) NOT NULL,
	[SOLUONG] [int] NULL,
	[DVT] [nvarchar](10) NULL,
	[GIA] [int] NULL,
	[THANHTIEN] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MALOAI] ASC,
	[MaThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHD1]    Script Date: 4/28/2022 10:17:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHD1](
	[MaHD] [int] NOT NULL,
	[MALOAI] [nvarchar](100) NOT NULL,
	[MaThuoc] [nvarchar](100) NOT NULL,
	[SOLUONG] [int] NULL,
	[DVT] [nvarchar](10) NULL,
	[GIA] [int] NULL,
	[THANHTIEN] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MALOAI] ASC,
	[MaThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPN]    Script Date: 4/28/2022 10:17:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPN](
	[MaPN] [int] NOT NULL,
	[MALOAI] [nvarchar](10) NOT NULL,
	[MaThuoc] [nvarchar](10) NOT NULL,
	[SOLUONG] [int] NULL,
	[DVT] [nvarchar](10) NULL,
	[GIA] [int] NULL,
	[THANHTIEN] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC,
	[MALOAI] ASC,
	[MaThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPN1]    Script Date: 4/28/2022 10:17:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPN1](
	[MaPN] [int] NOT NULL,
	[MALOAI] [nvarchar](50) NOT NULL,
	[MaThuoc] [nvarchar](50) NOT NULL,
	[SOLUONG] [int] NULL,
	[DVT] [nvarchar](10) NULL,
	[GIA] [int] NULL,
	[THANHTIEN] [int] NULL,
 CONSTRAINT [PK_ChiTietPN1] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC,
	[MALOAI] ASC,
	[MaThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 4/28/2022 10:17:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [nvarchar](10) NULL,
	[NgayLap] [date] NULL,
	[TongTien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAITHUOC]    Script Date: 4/28/2022 10:17:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAITHUOC](
	[MALOAI] [nvarchar](10) NOT NULL,
	[TENLOAI] [nvarchar](50) NULL,
	[MANCC] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MALOAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 4/28/2022 10:17:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [nvarchar](10) NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 4/28/2022 10:17:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](10) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [int] NULL,
	[CCCD] [int] NULL,
	[ChucVu] [nvarchar](20) NULL,
	[MatKhau] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 4/28/2022 10:17:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [nvarchar](10) NULL,
	[MaNCC] [nvarchar](10) NULL,
	[NgayLap] [date] NULL,
	[TongTien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thuoc]    Script Date: 4/28/2022 10:17:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thuoc](
	[MaThuoc] [nvarchar](10) NOT NULL,
	[TenThuoc] [nvarchar](50) NULL,
	[DVT] [nvarchar](50) NULL,
	[DonGia] [int] NULL,
	[HSD] [nvarchar](max) NULL,
	[MALOAI] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[LOAITHUOC] ([MALOAI], [TENLOAI], [MANCC]) VALUES (N'LT001', N'THUỐC CẢM', N'NCC001')
INSERT [dbo].[LOAITHUOC] ([MALOAI], [TENLOAI], [MANCC]) VALUES (N'LT002', N'THUỐC HO', N'NCC002')
INSERT [dbo].[LOAITHUOC] ([MALOAI], [TENLOAI], [MANCC]) VALUES (N'LT003', N'THUỐC SỐT', N'NCC003')
INSERT [dbo].[LOAITHUOC] ([MALOAI], [TENLOAI], [MANCC]) VALUES (N'LT004', N'THUỐC SỔ MŨI', N'NCC004')
INSERT [dbo].[LOAITHUOC] ([MALOAI], [TENLOAI], [MANCC]) VALUES (N'LT005', N'THUỐC TRỊ  NHỨC ĐẦU', N'NCC005')
INSERT [dbo].[LOAITHUOC] ([MALOAI], [TENLOAI], [MANCC]) VALUES (N'LT006', N'THUỐC CHỐNG ỐI', N'NCC006')
INSERT [dbo].[LOAITHUOC] ([MALOAI], [TENLOAI], [MANCC]) VALUES (N'LT007', N'CÁC LOẠI THUỐC VÀ THIẾT BỊ VẬT DỤNG KHÁC', N'NCC007')
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (N'NCC001', N'Thảo dược tâm Bình', N'Bình Dương', 263258202)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (N'NCC002', N'Công ty dược phẩm xanh', N'TP.HCM', 396581022)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (N'NCC003', N'CÔNG TY AN NAM', N'BẾN TRE', 202002252)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (N'NCC004', N'CÔNG TY DƯỢC PHẨM HOA KỲ', N'TP.HCM', 225525220)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (N'NCC005', N'TẬP ĐOÀN DƯỢC PHẨM BIBICO', N'HÀ NỘI', 354855262)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (N'NCC006', N'TẬP ĐOÀN PHÚ XUÂN', N'ĐỒNG NAI', 987626200)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (N'NCC007', N'CÔNG TY THÁI AN', N'CẦN THƠ', 969698623)
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [CCCD], [ChucVu], [MatKhau]) VALUES (N'NV001', N'THÁI MINH ĐẠT', CAST(N'2000-04-07' AS Date), N'NAM', N'TP.HCM', 907876260, 321786303, N'Quản lý', N'123')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [CCCD], [ChucVu], [MatKhau]) VALUES (N'NV002', N'NGUYỄN CỬU TRÍ', CAST(N'2000-05-02' AS Date), N'NAM', N'TP.HCM', 486253050, 321782542, N'Nhân Viên', N'123')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [CCCD], [ChucVu], [MatKhau]) VALUES (N'NV003', N'VÕ THIÊN LƯỢNG', CAST(N'2000-11-25' AS Date), N'NAM', N'TP.HCM', 303864544, 321826203, N'Nhân Viên', N'123')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [CCCD], [ChucVu], [MatKhau]) VALUES (N'NV004', N'TRẦN MINH ANH', CAST(N'2001-08-25' AS Date), N'NỮ', N'TÂY NINH', 232326262, 321825532, N'NHÂN VIÊN', N'123')
GO
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DVT], [DonGia], [HSD], [MALOAI]) VALUES (N'TH001', N'THUỐC CẢM LOẠI 1', N'VIÊN', 1000, N'1', N'LT001')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DVT], [DonGia], [HSD], [MALOAI]) VALUES (N'TH002', N'THUỐC CẢM LOẠI 2', N'VIÊN', 2000, N'1', N'LT001')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DVT], [DonGia], [HSD], [MALOAI]) VALUES (N'TH003', N'THUỐC CẢM ASPIRIN', N'HỘP', 60000, N'2', N'LT001')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DVT], [DonGia], [HSD], [MALOAI]) VALUES (N'TH004', N'THUỐC CẢM ĐÔNG ANH', N'VĨ', 10000, N'1', N'LT001')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DVT], [DonGia], [HSD], [MALOAI]) VALUES (N'TH005', N'THUỐC HO LOẠI 1', N'VIÊN', 1000, N'1', N'LT002')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DVT], [DonGia], [HSD], [MALOAI]) VALUES (N'TH006', N'THUỐC HO HIỆU CON ẾCH', N'HỘP', 30000, N'2', N'LT002')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DVT], [DonGia], [HSD], [MALOAI]) VALUES (N'TH007', N'SIRO TRỊ HO', N'CHAI', 56000, N'3', N'LT002')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DVT], [DonGia], [HSD], [MALOAI]) VALUES (N'TH008', N'THUỐC HO LOẠI 2', N'VĨ', 10000, N'1', N'LT002')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DVT], [DonGia], [HSD], [MALOAI]) VALUES (N'TH009', N'THUỐC SỐT MỸ', N'VIÊN', 3000, N'1', N'LT003')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DVT], [DonGia], [HSD], [MALOAI]) VALUES (N'TH010', N'THUỐC SỐT Paracetamol', N'VIÊN', 2000, N'1', N'LT003')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DVT], [DonGia], [HSD], [MALOAI]) VALUES (N'TH011', N'Thuốc hạ sốt Tatanol 500mg', N'HỘP', 68000, N'3', N'LT003')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DVT], [DonGia], [HSD], [MALOAI]) VALUES (N'TH012', N'Thuốc trị sổ mũi, nghẹt mũi Clorpheniramin 4mg', N'HỘP', 86000, N'3', N'LT004')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DVT], [DonGia], [HSD], [MALOAI]) VALUES (N'TH013', N'THUỐC SỔ MŨI Coldacmin Flu', N'VIÊN', 3000, N'1', N'LT004')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DVT], [DonGia], [HSD], [MALOAI]) VALUES (N'TH014', N'THUỐC SỔ MŨI Hadocolcen ', N'VĨ', 12000, N'2', N'LT004')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DVT], [DonGia], [HSD], [MALOAI]) VALUES (N'TH015', N'THUỐC NHỨC ĐẦU PARADOL', N'VIÊN', 1000, N'1', N'LT005')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DVT], [DonGia], [HSD], [MALOAI]) VALUES (N'TH016', N'THUỐC NHỨC ĐẦU Decolgen ND', N'HỘP', 106000, N'3', N'LT005')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DVT], [DonGia], [HSD], [MALOAI]) VALUES (N'TH017', N'thuốc chống say xe Hàn Quốc Toslong Solution', N'HỘP', 112000, N'3', N'LT006')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DVT], [DonGia], [HSD], [MALOAI]) VALUES (N'TH018', N'THUỐC CHỐNG ÓI Bestrip', N'HỘP', 95000, N'3', N'LT006')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DVT], [DonGia], [HSD], [MALOAI]) VALUES (N'TH019', N'KHẨU TRANG Y TẾ', N'HỘP', 34000, N'3', N'LT007')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DVT], [DonGia], [HSD], [MALOAI]) VALUES (N'TH020', N'KẸO TRỊ HO', N'VIÊN', 3000, N'2', N'LT007')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DVT], [DonGia], [HSD], [MALOAI]) VALUES (N'TH021', N'CỐM TRẺ EM', N'HỘP', 12000, N'1', N'LT007')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DVT], [DonGia], [HSD], [MALOAI]) VALUES (N'TH022', N'BAO TAY Y TẾ', N' HỘP', 36000, N'1', N'LT007')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DVT], [DonGia], [HSD], [MALOAI]) VALUES (N'TH023', N'CỒN SÁT KHUẨN', N'CHAI', 26000, N'1', N'LT007')
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DVT], [DonGia], [HSD], [MALOAI]) VALUES (N'TH024', N'VIÊN C', N'VIÊN', 5000, N'1', N'LT007')
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_HD] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHD] CHECK CONSTRAINT [FK_CTHD_HD]
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_HD1] FOREIGN KEY([MALOAI])
REFERENCES [dbo].[LOAITHUOC] ([MALOAI])
GO
ALTER TABLE [dbo].[ChiTietHD] CHECK CONSTRAINT [FK_CTHD_HD1]
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_Thuoc] FOREIGN KEY([MaThuoc])
REFERENCES [dbo].[Thuoc] ([MaThuoc])
GO
ALTER TABLE [dbo].[ChiTietHD] CHECK CONSTRAINT [FK_CTHD_Thuoc]
GO
ALTER TABLE [dbo].[ChiTietHD1]  WITH CHECK ADD  CONSTRAINT [FK_CTHD1_HD] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHD1] CHECK CONSTRAINT [FK_CTHD1_HD]
GO
ALTER TABLE [dbo].[ChiTietPN]  WITH CHECK ADD  CONSTRAINT [FK_CTPN_THUOC] FOREIGN KEY([MaThuoc])
REFERENCES [dbo].[Thuoc] ([MaThuoc])
GO
ALTER TABLE [dbo].[ChiTietPN] CHECK CONSTRAINT [FK_CTPN_THUOC]
GO
ALTER TABLE [dbo].[ChiTietPN]  WITH CHECK ADD  CONSTRAINT [FK_CTPN_THUOC1] FOREIGN KEY([MALOAI])
REFERENCES [dbo].[LOAITHUOC] ([MALOAI])
GO
ALTER TABLE [dbo].[ChiTietPN] CHECK CONSTRAINT [FK_CTPN_THUOC1]
GO
ALTER TABLE [dbo].[ChiTietPN]  WITH CHECK ADD  CONSTRAINT [PK_CTPN_PN] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[ChiTietPN] CHECK CONSTRAINT [PK_CTPN_PN]
GO
ALTER TABLE [dbo].[ChiTietPN1]  WITH CHECK ADD  CONSTRAINT [FK_CTPN1_PN] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[ChiTietPN1] CHECK CONSTRAINT [FK_CTPN1_PN]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HD_NV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HD_NV]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PN_NCC] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PN_NCC]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PN_NV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PN_NV]
GO
USE [master]
GO
ALTER DATABASE [QL_NhaThuocTay] SET  READ_WRITE 
GO
