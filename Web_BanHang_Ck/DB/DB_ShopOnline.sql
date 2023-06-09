USE [master]
GO
/****** Object:  Database [Shoponline]    Script Date: 25/3/2023 7:22:31 CH ******/
CREATE DATABASE [Shoponline]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Shoponline', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Shoponline.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Shoponline_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Shoponline_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Shoponline] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Shoponline].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Shoponline] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Shoponline] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Shoponline] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Shoponline] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Shoponline] SET ARITHABORT OFF 
GO
ALTER DATABASE [Shoponline] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Shoponline] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Shoponline] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Shoponline] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Shoponline] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Shoponline] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Shoponline] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Shoponline] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Shoponline] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Shoponline] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Shoponline] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Shoponline] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Shoponline] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Shoponline] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Shoponline] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Shoponline] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Shoponline] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Shoponline] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Shoponline] SET  MULTI_USER 
GO
ALTER DATABASE [Shoponline] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Shoponline] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Shoponline] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Shoponline] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Shoponline] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Shoponline] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Shoponline] SET QUERY_STORE = OFF
GO
USE [Shoponline]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 25/3/2023 7:22:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSanPham] [nvarchar](10) NULL,
	[TenLoaiSanPham] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 25/3/2023 7:22:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNhaSanXuat] [nvarchar](10) NULL,
	[TenNhaSanXuat] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 25/3/2023 7:22:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [nvarchar](10) NOT NULL,
	[MaLoaiSanPham] [nvarchar](10) NULL,
	[MaNhaSanXuat] [nvarchar](10) NULL,
	[TenSanPham] [nvarchar](max) NULL,
	[CauHinh] [text] NULL,
	[HinhChinh] [nvarchar](50) NULL,
	[Hinh1] [nvarchar](50) NULL,
	[Hinh2] [nvarchar](50) NULL,
	[Hinh3] [nvarchar](50) NULL,
	[Gia] [int] NULL,
	[SoLuongDaBan] [int] NULL,
	[LuotView] [int] NULL,
	[TinhTrang] [nchar](10) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP01', N'Cao Cap')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP02', N'Trung Binh')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'LSP03', N'Sang Chanh')
GO
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX01', N'Iphone')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX02', N'Samsung')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX03', N'Oppo')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (N'NSX04', N'Sony')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP01', N'LSP01', N'NSX01', N'Iphone7', N'Chua xac dinh', N'1.png', NULL, NULL, NULL, 20000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP02', N'LSP02', N'NSX04', N'Sony 1', N'Chua xac dinh', N'2.png', NULL, NULL, NULL, 30000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP03', N'LSP02', N'NSX01', N'Iphone 9', N'Chua xac dinh', N'3.png', NULL, NULL, NULL, 22000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP04', N'LSP03', N'NSX01', N'Iphone 5', N'Chua xac dinh', N'4.png', NULL, NULL, NULL, 21000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP05', N'LSP01', N'NSX02', N'Samsung 1', N'Chua xac dinh', N'5.png', NULL, NULL, NULL, 19000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP06', N'LSP02', N'NSX01', N'iphone 1', N'Chua xac dinh', N'6.png', NULL, NULL, NULL, 18000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP07', N'LSP03', N'NSX02', N'Sangsung 2', N'Chua xac dinh', N'7.png', NULL, NULL, NULL, 17000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP08', N'LSP03', N'NSX01', N'iphone 2', N'Chua xac dinh', N'8.png', NULL, NULL, NULL, 16000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP09', N'LSP02', N'NSX02', N'Samsung 3', N'Chua xac dinh', N'9.png', NULL, NULL, NULL, 25000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP10', N'LSP01', N'NSX03', N'Oppo 1', N'Chua xac dinh', N'10.png', NULL, NULL, NULL, 26000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP11', N'LSP03', N'NSX01', N'iphone 3', N'Chua xac dinh', N'11.png', NULL, NULL, NULL, 28000, 0, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang]) VALUES (N'SP112', N'LSP02', N'NSX02', N'Samsung 4', N'Chua xac dinh', N'12.png', NULL, NULL, NULL, 29000, 0, 0, N'0         ')
GO
USE [master]
GO
ALTER DATABASE [Shoponline] SET  READ_WRITE 
GO
