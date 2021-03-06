USE [DTDD]
GO
/****** Object:  Table [dbo].[BAOHANH]    Script Date: 6/17/2020 9:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BAOHANH](
	[MABAOHANH] [int] NOT NULL,
	[MAKH] [char](20) NOT NULL,
	[NGAYBAOHANH] [datetime] NULL,
	[NGAYBAOHANHXONG] [datetime] NULL,
	[MALOIND] [char](21) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ct_bH]    Script Date: 6/17/2020 9:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ct_bH](
	[MABAOHANH] [int] NOT NULL,
	[MANDBH] [int] NOT NULL,
	[MALK] [char](20) NOT NULL,
 CONSTRAINT [PK_ct_bH] PRIMARY KEY CLUSTERED 
(
	[MABAOHANH] ASC,
	[MANDBH] ASC,
	[MALK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CT_HOADON_LINHKIEN]    Script Date: 6/17/2020 9:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_HOADON_LINHKIEN](
	[MALINHKIEN] [char](20) NOT NULL,
	[MAHD] [int] NOT NULL,
	[MANCC] [char](20) NOT NULL,
	[SL] [int] NULL,
 CONSTRAINT [PK_CT_HOADON_LINHKIEN] PRIMARY KEY CLUSTERED 
(
	[MALINHKIEN] ASC,
	[MAHD] ASC,
	[MANCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ct_mua_SP]    Script Date: 6/17/2020 9:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ct_mua_SP](
	[MaHD] [int] NOT NULL,
	[MaKH] [char](20) NOT NULL,
	[MaSP] [nchar](10) NOT NULL,
	[SL] [nchar](10) NULL,
 CONSTRAINT [PK_Ct_mua_SP_1] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaKH] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CT_NHAP_LK]    Script Date: 6/17/2020 9:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_NHAP_LK](
	[MALINHKIEN] [nchar](20) NULL,
	[MANHAP] [char](20) NULL,
	[MANCC] [char](20) NULL,
	[SL] [int] NULL,
	[DONGIA] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CT_NHAP_SP]    Script Date: 6/17/2020 9:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_NHAP_SP](
	[MANHAP] [char](20) NOT NULL,
	[MASP] [char](20) NOT NULL,
	[MANCC] [char](20) NOT NULL,
	[SL] [int] NULL,
	[DonGia] [int] NULL,
 CONSTRAINT [PK_CT_NHAP_SP] PRIMARY KEY CLUSTERED 
(
	[MANHAP] ASC,
	[MASP] ASC,
	[MANCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DATHANG]    Script Date: 6/17/2020 9:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DATHANG](
	[MADAT] [char](20) NOT NULL,
	[MAKH] [char](20) NOT NULL,
	[SL] [int] NULL,
	[NGAYDAT] [char](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DATHANG_SP]    Script Date: 6/17/2020 9:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DATHANG_SP](
	[MADAT] [char](20) NOT NULL,
	[MASP] [char](20) NOT NULL,
	[SL] [int] NULL,
 CONSTRAINT [PK_DATHANG_SP] PRIMARY KEY CLUSTERED 
(
	[MADAT] ASC,
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DOITRA]    Script Date: 6/17/2020 9:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DOITRA](
	[MADOITRA] [char](21) NOT NULL,
	[MAKH] [char](20) NOT NULL,
	[NGAYDOI] [char](21) NULL,
	[TENDOITRA] [nvarchar](51) NULL,
	[SPLay] [char](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DOITRA_SP]    Script Date: 6/17/2020 9:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DOITRA_SP](
	[MADOITRA] [char](21) NOT NULL,
	[MASP] [char](20) NOT NULL,
	[MALOIND] [char](21) NOT NULL,
	[MALOISX] [char](20) NOT NULL,
 CONSTRAINT [PK_DOITRA_SP] PRIMARY KEY CLUSTERED 
(
	[MADOITRA] ASC,
	[MASP] ASC,
	[MALOIND] ASC,
	[MALOISX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 6/17/2020 9:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HOADON](
	[MAHD] [int] IDENTITY(1,1) NOT NULL,
	[MANCC] [char](20) NOT NULL,
	[MALOAIHD] [char](20) NOT NULL,
	[NGAYLAP] [datetime] NULL,
	[MaTraGop] [char](20) NULL,
	[MaNV] [char](20) NULL,
	[ChenhLech] [char](20) NULL,
	[MaDoiTra] [char](21) NULL,
	[MaBaoHanh] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 6/17/2020 9:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MAKH] [char](20) NOT NULL,
	[TENKH] [nvarchar](50) NULL,
	[SDT] [char](11) NULL,
	[DIACHI] [char](51) NULL,
	[CMND] [char](13) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHO]    Script Date: 6/17/2020 9:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHO](
	[MAKHO] [char](20) NOT NULL,
	[SL] [int] NULL,
	[MASP] [char](20) NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [int] NULL,
	[MALINHKIEN] [char](20) NOT NULL,
 CONSTRAINT [PK_KHO_1] PRIMARY KEY CLUSTERED 
(
	[MAKHO] ASC,
	[MASP] ASC,
	[MALINHKIEN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHUYENMAI]    Script Date: 6/17/2020 9:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHUYENMAI](
	[MAKHUYENMAI] [char](20) NOT NULL,
	[MASP] [char](20) NOT NULL,
	[MALINHKIEN] [char](20) NOT NULL,
	[TENKHUYENMAI] [nvarchar](50) NULL,
	[NGAYBD] [datetime] NULL,
	[NGAYKT] [datetime] NULL,
	[GIATRI] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LINHKIEN]    Script Date: 6/17/2020 9:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LINHKIEN](
	[MALINHKIEN] [char](20) NOT NULL,
	[TENLINHKIEN] [nvarchar](51) NULL,
	[DONGIA] [int] NULL,
	[MAKHO] [char](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOAIHOADON]    Script Date: 6/17/2020 9:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOAIHOADON](
	[MALOAIHD] [char](20) NOT NULL,
	[TENLOAIHD] [nvarchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOAISANPHAM]    Script Date: 6/17/2020 9:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOAISANPHAM](
	[MALOAI] [char](20) NOT NULL,
	[TENLOAI] [nvarchar](51) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOIDONGUOIDUNG]    Script Date: 6/17/2020 9:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOIDONGUOIDUNG](
	[MALOIND] [char](21) NOT NULL,
	[TENLOIND] [nvarchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOIDONHASX]    Script Date: 6/17/2020 9:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOIDONHASX](
	[MALOISX] [char](20) NOT NULL,
	[TENLOISX] [nvarchar](51) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MANHINH]    Script Date: 6/17/2020 9:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MANHINH](
	[MAMANHINH] [char](20) NOT NULL,
	[TENMANHINH] [nvarchar](51) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NDBaoHanh]    Script Date: 6/17/2020 9:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NDBaoHanh](
	[MANDBH] [int] NOT NULL,
	[TenNDBH] [nvarchar](50) NULL,
	[DonGia] [int] NULL,
 CONSTRAINT [PK_NDBaoHanh] PRIMARY KEY CLUSTERED 
(
	[MANDBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 6/17/2020 9:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MANCC] [char](20) NOT NULL,
	[TENNCC] [nvarchar](50) NULL,
	[DIACHI] [char](51) NULL,
	[SDT] [char](11) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 6/17/2020 9:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MANV] [char](20) NOT NULL,
	[HOTEN] [nvarchar](50) NULL,
	[NGAYSINH] [char](20) NULL,
	[DIACHI] [char](51) NULL,
	[SDT] [char](11) NULL,
	[GIOITINH] [char](4) NULL,
	[CMND] [char](13) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHAPHANG]    Script Date: 6/17/2020 9:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHAPHANG](
	[MANHAP] [char](20) NOT NULL,
	[MANV] [char](20) NOT NULL,
	[NGAYNHAP] [char](20) NULL,
	[TrangThai] [nchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHOMNGUOIDUNG]    Script Date: 6/17/2020 9:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHOMNGUOIDUNG](
	[MANHOM] [char](20) NOT NULL,
	[TENNHOM] [nvarchar](50) NOT NULL,
	[GhiChu] [char](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHANQUYEN]    Script Date: 6/17/2020 9:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHANQUYEN](
	[MANHOM] [char](20) NOT NULL,
	[MAMANHINH] [char](20) NOT NULL,
	[CoQuyen] [bit] NULL,
 CONSTRAINT [PK_PHANQUYEN] PRIMARY KEY CLUSTERED 
(
	[MANHOM] ASC,
	[MAMANHINH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 6/17/2020 9:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MASP] [char](20) NOT NULL,
	[MALOAI] [char](20) NOT NULL,
	[MAKHO] [char](20) NOT NULL,
	[TENSP] [nvarchar](51) NULL,
	[TINHTRANG] [char](4) NULL,
	[DonGia] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 6/17/2020 9:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[TENDANGNHAP] [char](20) NOT NULL,
	[MANV] [char](20) NOT NULL,
	[MATKHAU] [char](31) NULL,
	[HOATDONG] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TinhTrangTT]    Script Date: 6/17/2020 9:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TinhTrangTT](
	[MaHD] [int] NOT NULL,
	[TinhTrangThanhToan] [nchar](10) NULL,
	[NgayTT] [datetime] NOT NULL,
	[NgayTTTiepTheo] [datetime] NULL,
	[MANHAP] [char](20) NULL,
 CONSTRAINT [PK_TinhTrangTT] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[NgayTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tk_NND]    Script Date: 6/17/2020 9:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tk_NND](
	[TENDANGNHAP] [char](20) NOT NULL,
	[MANHOM] [char](20) NOT NULL,
 CONSTRAINT [PK_tk_NND] PRIMARY KEY CLUSTERED 
(
	[TENDANGNHAP] ASC,
	[MANHOM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TraGop]    Script Date: 6/17/2020 9:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TraGop](
	[MaTraGop] [char](20) NOT NULL,
	[SoTienPhaiTra] [int] NULL,
	[SoTienConLai] [int] NULL,
	[NgayTra] [date] NOT NULL,
	[deadline] [nchar](10) NULL,
 CONSTRAINT [PK_TraGop_1] PRIMARY KEY CLUSTERED 
(
	[MaTraGop] ASC,
	[NgayTra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[BAOHANH] ([MABAOHANH], [MAKH], [NGAYBAOHANH], [NGAYBAOHANHXONG], [MALOIND]) VALUES (1, N'KH01                ', CAST(0x0000ABC300E86DDB AS DateTime), NULL, N'1                    ')
INSERT [dbo].[BAOHANH] ([MABAOHANH], [MAKH], [NGAYBAOHANH], [NGAYBAOHANHXONG], [MALOIND]) VALUES (2, N'KH01                ', CAST(0x0000ABDD00EE5E5E AS DateTime), NULL, N'1                    ')
INSERT [dbo].[BAOHANH] ([MABAOHANH], [MAKH], [NGAYBAOHANH], [NGAYBAOHANHXONG], [MALOIND]) VALUES (3, N'KH01                ', CAST(0x0000ABDD00EEEFDE AS DateTime), NULL, N'khong                ')
INSERT [dbo].[BAOHANH] ([MABAOHANH], [MAKH], [NGAYBAOHANH], [NGAYBAOHANHXONG], [MALOIND]) VALUES (4, N'KH01                ', CAST(0x0000ABDD00F456DE AS DateTime), NULL, N'khong                ')
INSERT [dbo].[BAOHANH] ([MABAOHANH], [MAKH], [NGAYBAOHANH], [NGAYBAOHANHXONG], [MALOIND]) VALUES (5, N'KH01                ', CAST(0x0000ABDD0101366E AS DateTime), NULL, N'khong                ')
INSERT [dbo].[ct_bH] ([MABAOHANH], [MANDBH], [MALK]) VALUES (1, 1, N'TEMP                ')
INSERT [dbo].[ct_bH] ([MABAOHANH], [MANDBH], [MALK]) VALUES (1, 2, N'LK01                ')
INSERT [dbo].[ct_bH] ([MABAOHANH], [MANDBH], [MALK]) VALUES (2, 1, N'LK01                ')
INSERT [dbo].[ct_bH] ([MABAOHANH], [MANDBH], [MALK]) VALUES (3, 1, N'LK01                ')
INSERT [dbo].[ct_bH] ([MABAOHANH], [MANDBH], [MALK]) VALUES (4, 2, N'LK01                ')
INSERT [dbo].[ct_bH] ([MABAOHANH], [MANDBH], [MALK]) VALUES (5, 2, N'LK01                ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (14, N'KH01                ', N'SP01      ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (19, N'KH01                ', N'SP01      ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (20, N'KH01                ', N'SP01      ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (21, N'KH04                ', N'SP01      ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (22, N'KH01                ', N'SP02      ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (23, N'KH01                ', N'SP02      ', N'10        ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (24, N'KH01                ', N'SP01      ', N'6         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (25, N'KH01                ', N'SP01      ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (26, N'KH01                ', N'SP01      ', N'2         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (27, N'KH01                ', N'SP01      ', N'2         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (28, N'KH01                ', N'SP01      ', N'2         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (29, N'KH01                ', N'SP01      ', N'3         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (30, N'KH01                ', N'SP01      ', N'2         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (42, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (43, N'KH05                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (44, N'KH05                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (45, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (46, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (47, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (48, N'KH01                ', N'sp01      ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (49, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (50, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (51, N'KH01                ', N'SP02      ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (51, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (52, N'KH01                ', N'SP02      ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (52, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (53, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (60, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (62, N'KH01                ', N'SP6       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (63, N'KH01                ', N'SP02      ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (63, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (64, N'KH01                ', N'SP6       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (66, N'KH01                ', N'SP04      ', N'3         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (67, N'KH01                ', N'SP6       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (68, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (70, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (71, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (72, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (74, N'KH01                ', N'SP6       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (76, N'KH01                ', N'SP6       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (78, N'KH01                ', N'SP02      ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (80, N'KH01                ', N'SP04      ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (82, N'KH01                ', N'SP02      ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (82, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (84, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (86, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (87, N'KH03                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (88, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (90, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (92, N'KH01                ', N'SP02      ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (92, N'KH01                ', N'SP6       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (93, N'KH01                ', N'SP03      ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (93, N'KH01                ', N'SP6       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (94, N'KH01                ', N'SP6       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (95, N'KH01                ', N'SP6       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (96, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (97, N'KH01                ', N'SP04      ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (98, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (98, N'KH01                ', N'SP6       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (99, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (100, N'KH01                ', N'SP6       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (101, N'KH01                ', N'SP6       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (102, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (103, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (104, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (105, N'KH01                ', N'SP02      ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (134, N'KH01                ', N'SP02      ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (135, N'KH01                ', N'SP02      ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (136, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (137, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (137, N'KH01                ', N'SP6       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (139, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (140, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (141, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (146, N'KH01                ', N'SP03      ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (146, N'KH01                ', N'SP04      ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (147, N'KH04                ', N'SP04      ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (148, N'KH04                ', N'SP02      ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (148, N'KH04                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (149, N'KH01                ', N'SP04      ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (150, N'KH01                ', N'SP9       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (151, N'KH01                ', N'SP9       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (156, N'KH06                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (161, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (164, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (165, N'KH05                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (166, N'KH05                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (167, N'KH06                ', N'SP02      ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (168, N'KH04                ', N'SP04      ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (169, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (170, N'KH03                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (171, N'KH02                ', N'SP02      ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (172, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (173, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (174, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (175, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (176, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (177, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (178, N'KH01                ', N'SP04      ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (178, N'KH01                ', N'SP5       ', N'1         ')
GO
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (179, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (179, N'KH01                ', N'SP6       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (180, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (180, N'KH01                ', N'SP6       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (181, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (181, N'KH01                ', N'SP6       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (182, N'KH01                ', N'SP5       ', N'1         ')
INSERT [dbo].[Ct_mua_SP] ([MaHD], [MaKH], [MaSP], [SL]) VALUES (182, N'KH01                ', N'SP6       ', N'1         ')
INSERT [dbo].[CT_NHAP_LK] ([MALINHKIEN], [MANHAP], [MANCC], [SL], [DONGIA]) VALUES (N'LK01                ', N'PN35                ', N'NCC001              ', 2, 2000000)
INSERT [dbo].[CT_NHAP_LK] ([MALINHKIEN], [MANHAP], [MANCC], [SL], [DONGIA]) VALUES (N'LK03                ', N'PN38                ', N'NCC001              ', 1, 200000)
INSERT [dbo].[CT_NHAP_SP] ([MANHAP], [MASP], [MANCC], [SL], [DonGia]) VALUES (N'PN001               ', N'SP5                 ', N'NCC001              ', 2, 3)
INSERT [dbo].[CT_NHAP_SP] ([MANHAP], [MASP], [MANCC], [SL], [DonGia]) VALUES (N'PN005               ', N'SP02                ', N'NCC001              ', 2, 3)
INSERT [dbo].[CT_NHAP_SP] ([MANHAP], [MASP], [MANCC], [SL], [DonGia]) VALUES (N'PN005               ', N'SP03                ', N'NCC001              ', 1, 1)
INSERT [dbo].[CT_NHAP_SP] ([MANHAP], [MASP], [MANCC], [SL], [DonGia]) VALUES (N'PN005               ', N'SP5                 ', N'NCC001              ', 2, 3)
INSERT [dbo].[CT_NHAP_SP] ([MANHAP], [MASP], [MANCC], [SL], [DonGia]) VALUES (N'PN007               ', N'SP5                 ', N'NCC001              ', 2, 3)
INSERT [dbo].[CT_NHAP_SP] ([MANHAP], [MASP], [MANCC], [SL], [DonGia]) VALUES (N'PN14                ', N'SP04                ', N'NCC001              ', 20, 3)
INSERT [dbo].[CT_NHAP_SP] ([MANHAP], [MASP], [MANCC], [SL], [DonGia]) VALUES (N'PN14                ', N'SP5                 ', N'NCC001              ', 20, 3)
INSERT [dbo].[CT_NHAP_SP] ([MANHAP], [MASP], [MANCC], [SL], [DonGia]) VALUES (N'PN15                ', N'SP5                 ', N'NCC001              ', 2, 3)
INSERT [dbo].[CT_NHAP_SP] ([MANHAP], [MASP], [MANCC], [SL], [DonGia]) VALUES (N'PN16                ', N'SP02                ', N'NCC001              ', 2, 3)
INSERT [dbo].[CT_NHAP_SP] ([MANHAP], [MASP], [MANCC], [SL], [DonGia]) VALUES (N'PN16                ', N'SP04                ', N'NCC001              ', 2, 3)
INSERT [dbo].[CT_NHAP_SP] ([MANHAP], [MASP], [MANCC], [SL], [DonGia]) VALUES (N'PN16                ', N'SP5                 ', N'NCC001              ', 2, 3)
INSERT [dbo].[CT_NHAP_SP] ([MANHAP], [MASP], [MANCC], [SL], [DonGia]) VALUES (N'PN16                ', N'SP6                 ', N'NCC001              ', 5, 3)
INSERT [dbo].[CT_NHAP_SP] ([MANHAP], [MASP], [MANCC], [SL], [DonGia]) VALUES (N'PN17                ', N'SP5                 ', N'NCC001              ', 2, 3)
INSERT [dbo].[CT_NHAP_SP] ([MANHAP], [MASP], [MANCC], [SL], [DonGia]) VALUES (N'PN18                ', N'SP5                 ', N'NCC001              ', 2, 3)
INSERT [dbo].[CT_NHAP_SP] ([MANHAP], [MASP], [MANCC], [SL], [DonGia]) VALUES (N'PN19                ', N'SP5                 ', N'NCC001              ', 2, 3)
INSERT [dbo].[CT_NHAP_SP] ([MANHAP], [MASP], [MANCC], [SL], [DonGia]) VALUES (N'PN20                ', N'SP5                 ', N'NCC001              ', 2, 10000000)
INSERT [dbo].[CT_NHAP_SP] ([MANHAP], [MASP], [MANCC], [SL], [DonGia]) VALUES (N'PN21                ', N'SP5                 ', N'NCC001              ', 2, 10000000)
INSERT [dbo].[CT_NHAP_SP] ([MANHAP], [MASP], [MANCC], [SL], [DonGia]) VALUES (N'PN22                ', N'SP5                 ', N'NCC001              ', 2, 2000000)
INSERT [dbo].[CT_NHAP_SP] ([MANHAP], [MASP], [MANCC], [SL], [DonGia]) VALUES (N'PN23                ', N'SP5                 ', N'NCC001              ', 2, 2000000)
INSERT [dbo].[CT_NHAP_SP] ([MANHAP], [MASP], [MANCC], [SL], [DonGia]) VALUES (N'PN25                ', N'SP5                 ', N'NCC001              ', 2, 4000000)
INSERT [dbo].[CT_NHAP_SP] ([MANHAP], [MASP], [MANCC], [SL], [DonGia]) VALUES (N'PN26                ', N'SP5                 ', N'NCC001              ', 2, 3000000)
INSERT [dbo].[CT_NHAP_SP] ([MANHAP], [MASP], [MANCC], [SL], [DonGia]) VALUES (N'PN27                ', N'SP5                 ', N'NCC001              ', 2, 3000000)
INSERT [dbo].[CT_NHAP_SP] ([MANHAP], [MASP], [MANCC], [SL], [DonGia]) VALUES (N'PN28                ', N'SP5                 ', N'NCC001              ', 2, 20000000)
INSERT [dbo].[CT_NHAP_SP] ([MANHAP], [MASP], [MANCC], [SL], [DonGia]) VALUES (N'PN30                ', N'SP6                 ', N'NCC001              ', 10, 12000000)
INSERT [dbo].[CT_NHAP_SP] ([MANHAP], [MASP], [MANCC], [SL], [DonGia]) VALUES (N'PN31                ', N'SP5                 ', N'NCC001              ', 2, 30000000)
INSERT [dbo].[CT_NHAP_SP] ([MANHAP], [MASP], [MANCC], [SL], [DonGia]) VALUES (N'PN32                ', N'SP5                 ', N'NCC001              ', 10, 15000000)
INSERT [dbo].[CT_NHAP_SP] ([MANHAP], [MASP], [MANCC], [SL], [DonGia]) VALUES (N'PN33                ', N'SP5                 ', N'NCC001              ', 5, 15000000)
INSERT [dbo].[CT_NHAP_SP] ([MANHAP], [MASP], [MANCC], [SL], [DonGia]) VALUES (N'PN34                ', N'SP5                 ', N'NCC001              ', 2, 3000000)
INSERT [dbo].[DOITRA] ([MADOITRA], [MAKH], [NGAYDOI], [TENDOITRA], [SPLay]) VALUES (N'1                    ', N'KH01                ', N'06/05/2020           ', N'Ð?i máy khác', NULL)
INSERT [dbo].[DOITRA] ([MADOITRA], [MAKH], [NGAYDOI], [TENDOITRA], [SPLay]) VALUES (N'2                    ', N'KH01                ', N'07/05/2020           ', N'Ð?i máy khác', NULL)
INSERT [dbo].[DOITRA] ([MADOITRA], [MAKH], [NGAYDOI], [TENDOITRA], [SPLay]) VALUES (N'3                    ', N'KH01                ', N'07/22/2020           ', N'doi may khac', NULL)
INSERT [dbo].[DOITRA] ([MADOITRA], [MAKH], [NGAYDOI], [TENDOITRA], [SPLay]) VALUES (N'4                    ', N'KH05                ', N'07-05-2020           ', N'Đổi máy', N'                    ')
INSERT [dbo].[DOITRA] ([MADOITRA], [MAKH], [NGAYDOI], [TENDOITRA], [SPLay]) VALUES (N'12                   ', N'KH05                ', N'07-05-2020           ', N'Đổi máy', N'SP9                 ')
INSERT [dbo].[DOITRA] ([MADOITRA], [MAKH], [NGAYDOI], [TENDOITRA], [SPLay]) VALUES (N'13                   ', N'KH05                ', N'07-05-2020           ', N'Đổi máy', N'                    ')
INSERT [dbo].[DOITRA] ([MADOITRA], [MAKH], [NGAYDOI], [TENDOITRA], [SPLay]) VALUES (N'5                    ', N'KH01                ', N'07-05-2020           ', N'Đổi máy', N'                    ')
INSERT [dbo].[DOITRA] ([MADOITRA], [MAKH], [NGAYDOI], [TENDOITRA], [SPLay]) VALUES (N'6                    ', N'KH01                ', N'07-05-2020           ', N'Đổi máy', N'                    ')
INSERT [dbo].[DOITRA] ([MADOITRA], [MAKH], [NGAYDOI], [TENDOITRA], [SPLay]) VALUES (N'7                    ', N'KH01                ', N'07-05-2020           ', N'Đổi máy', N'                    ')
INSERT [dbo].[DOITRA] ([MADOITRA], [MAKH], [NGAYDOI], [TENDOITRA], [SPLay]) VALUES (N'8                    ', N'KH01                ', N'07-05-2020           ', N'Đổi máy', N'                    ')
INSERT [dbo].[DOITRA] ([MADOITRA], [MAKH], [NGAYDOI], [TENDOITRA], [SPLay]) VALUES (N'9                    ', N'KH03                ', N'07-05-2020           ', N'Đổi máy', N'SP01                ')
INSERT [dbo].[DOITRA] ([MADOITRA], [MAKH], [NGAYDOI], [TENDOITRA], [SPLay]) VALUES (N'10                   ', N'KH01                ', N'07-05-2020           ', N'Đổi máy', N'                    ')
INSERT [dbo].[DOITRA] ([MADOITRA], [MAKH], [NGAYDOI], [TENDOITRA], [SPLay]) VALUES (N'11                   ', N'KH01                ', N'07-05-2020           ', N'Đổi máy', N'SP9                 ')
INSERT [dbo].[DOITRA] ([MADOITRA], [MAKH], [NGAYDOI], [TENDOITRA], [SPLay]) VALUES (N'14                   ', N'KH01                ', N'01-06-2020           ', N'Đổi máy', N'SP6                 ')
INSERT [dbo].[DOITRA] ([MADOITRA], [MAKH], [NGAYDOI], [TENDOITRA], [SPLay]) VALUES (N'15                   ', N'KH01                ', N'01-06-2020           ', N'Đổi máy', N'SP6                 ')
INSERT [dbo].[DOITRA] ([MADOITRA], [MAKH], [NGAYDOI], [TENDOITRA], [SPLay]) VALUES (N'16                   ', N'KH01                ', N'01-06-2020           ', N'Đổi máy', N'SP6                 ')
INSERT [dbo].[DOITRA] ([MADOITRA], [MAKH], [NGAYDOI], [TENDOITRA], [SPLay]) VALUES (N'17                   ', N'KH01                ', N'01-06-2020           ', N'Đổi máy', N'SP6                 ')
INSERT [dbo].[DOITRA] ([MADOITRA], [MAKH], [NGAYDOI], [TENDOITRA], [SPLay]) VALUES (N'18                   ', N'KH01                ', N'01-06-2020           ', N'Đổi máy', N'SP6                 ')
INSERT [dbo].[DOITRA] ([MADOITRA], [MAKH], [NGAYDOI], [TENDOITRA], [SPLay]) VALUES (N'19                   ', N'KH01                ', N'01-06-2020           ', N'Đổi máy', N'SP6                 ')
INSERT [dbo].[DOITRA_SP] ([MADOITRA], [MASP], [MALOIND], [MALOISX]) VALUES (N'1                    ', N'SP5                 ', N'khong                ', N'1                   ')
INSERT [dbo].[DOITRA_SP] ([MADOITRA], [MASP], [MALOIND], [MALOISX]) VALUES (N'10                   ', N'SP6                 ', N'khong                ', N'1                   ')
INSERT [dbo].[DOITRA_SP] ([MADOITRA], [MASP], [MALOIND], [MALOISX]) VALUES (N'10                   ', N'SP6                 ', N'khong                ', N'2                   ')
INSERT [dbo].[DOITRA_SP] ([MADOITRA], [MASP], [MALOIND], [MALOISX]) VALUES (N'11                   ', N'SP6                 ', N'khong                ', N'1                   ')
INSERT [dbo].[DOITRA_SP] ([MADOITRA], [MASP], [MALOIND], [MALOISX]) VALUES (N'11                   ', N'SP6                 ', N'khong                ', N'2                   ')
INSERT [dbo].[DOITRA_SP] ([MADOITRA], [MASP], [MALOIND], [MALOISX]) VALUES (N'12                   ', N'SP5                 ', N'khong                ', N'1                   ')
INSERT [dbo].[DOITRA_SP] ([MADOITRA], [MASP], [MALOIND], [MALOISX]) VALUES (N'12                   ', N'SP5                 ', N'khong                ', N'2                   ')
INSERT [dbo].[DOITRA_SP] ([MADOITRA], [MASP], [MALOIND], [MALOISX]) VALUES (N'13                   ', N'SP5                 ', N'khong                ', N'1                   ')
INSERT [dbo].[DOITRA_SP] ([MADOITRA], [MASP], [MALOIND], [MALOISX]) VALUES (N'14                   ', N'SP5                 ', N'khong                ', N'1                   ')
INSERT [dbo].[DOITRA_SP] ([MADOITRA], [MASP], [MALOIND], [MALOISX]) VALUES (N'15                   ', N'SP01                ', N'khong                ', N'2                   ')
INSERT [dbo].[DOITRA_SP] ([MADOITRA], [MASP], [MALOIND], [MALOISX]) VALUES (N'16                   ', N'SP01                ', N'khong                ', N'1                   ')
INSERT [dbo].[DOITRA_SP] ([MADOITRA], [MASP], [MALOIND], [MALOISX]) VALUES (N'17                   ', N'SP5                 ', N'khong                ', N'2                   ')
INSERT [dbo].[DOITRA_SP] ([MADOITRA], [MASP], [MALOIND], [MALOISX]) VALUES (N'18                   ', N'SP5                 ', N'khong                ', N'1                   ')
INSERT [dbo].[DOITRA_SP] ([MADOITRA], [MASP], [MALOIND], [MALOISX]) VALUES (N'19                   ', N'SP5                 ', N'khong                ', N'1                   ')
INSERT [dbo].[DOITRA_SP] ([MADOITRA], [MASP], [MALOIND], [MALOISX]) VALUES (N'19                   ', N'SP5                 ', N'khong                ', N'khong               ')
INSERT [dbo].[DOITRA_SP] ([MADOITRA], [MASP], [MALOIND], [MALOISX]) VALUES (N'6                    ', N'SP04                ', N'khong                ', N'1                   ')
INSERT [dbo].[DOITRA_SP] ([MADOITRA], [MASP], [MALOIND], [MALOISX]) VALUES (N'6                    ', N'SP6                 ', N'khong                ', N'1                   ')
INSERT [dbo].[DOITRA_SP] ([MADOITRA], [MASP], [MALOIND], [MALOISX]) VALUES (N'9                    ', N'SP5                 ', N'khong                ', N'1                   ')
SET IDENTITY_INSERT [dbo].[HOADON] ON 

INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (10, N'NCC001              ', N'MLHD01              ', CAST(0x0000AB0E014B5450 AS DateTime), NULL, N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (14, N'NCC001              ', N'MLHD01              ', CAST(0x0000AB0E00000000 AS DateTime), NULL, N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (13, N'NCC001              ', N'MLHD01              ', CAST(0x0000AB0E00000000 AS DateTime), NULL, N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (19, N'temp                ', N'MLHD02              ', CAST(0x0000ABA300000000 AS DateTime), N'temp                ', N'NV01                ', N'10                  ', N'3                    ', NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (20, N'temp                ', N'MLHD02              ', CAST(0x0000ABA300000000 AS DateTime), N'temp                ', N'NV01                ', N'12600000            ', N'15                   ', 3)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (23, N'temp                ', N'MLHD02              ', CAST(0x0000ABA300000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (24, N'temp                ', N'MLHD02              ', CAST(0x0000ABA300000000 AS DateTime), N'temp                ', N'NV01                ', N'12600000            ', N'16                   ', NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (25, N'temp                ', N'MLHD02              ', CAST(0x0000ABA300000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, 5)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (26, N'temp                ', N'MLHD02              ', CAST(0x0000ABA300000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (27, N'temp                ', N'MLHD02              ', CAST(0x0000ABA300000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (28, N'temp                ', N'MLHD02              ', CAST(0x0000ABA300000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (29, N'temp                ', N'MLHD02              ', CAST(0x0000ABA300000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (30, N'temp                ', N'MLHD02              ', CAST(0x0000ABA300000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (32, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABA500000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (33, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABA500000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (34, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABA500000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (35, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABA500000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (36, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABA500000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (37, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABA500000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (38, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABA500000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (39, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABA500000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (41, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABA500000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (42, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABA500000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (43, N'temp                ', N'MLHD02              ', CAST(0x0000ABA500000000 AS DateTime), N'temp                ', N'NV01                ', N'-5000000            ', N'9                    ', NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (44, N'temp                ', N'MLHD02              ', CAST(0x0000ABA500000000 AS DateTime), N'temp                ', N'NV01                ', N'8000000             ', N'12                   ', NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (45, N'temp                ', N'MLHD02              ', CAST(0x0000ABA500000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (46, N'temp                ', N'MLHD02              ', CAST(0x0000ABA500000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (47, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', N'7000000             ', N'17                   ', NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (48, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (49, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', N'7000000             ', N'14                   ', NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (50, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (51, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (52, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (53, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (55, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (56, N'temp                ', N'MLHD04              ', CAST(0x0000ABA600000000 AS DateTime), N'2                   ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (57, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (58, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (59, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (60, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (71, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (72, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (73, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (74, N'temp                ', N'MLHD04              ', CAST(0x0000ABA600000000 AS DateTime), N'6                   ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (75, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (76, N'temp                ', N'MLHD04              ', CAST(0x0000ABA600000000 AS DateTime), N'7                   ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (77, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (81, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (82, N'temp                ', N'MLHD04              ', CAST(0x0000ABA600000000 AS DateTime), N'10                  ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (85, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (86, N'temp                ', N'MLHD04              ', CAST(0x0000ABA600000000 AS DateTime), N'12                  ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (87, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (88, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', N'7000000             ', N'17                   ', NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (89, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (90, N'temp                ', N'MLHD04              ', CAST(0x0000ABA600000000 AS DateTime), N'13                  ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (91, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (92, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (93, N'temp                ', N'MLHD04              ', CAST(0x0000ABA600000000 AS DateTime), N'14                  ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (94, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (95, N'temp                ', N'MLHD04              ', CAST(0x0000ABA600000000 AS DateTime), N'15                  ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (21, N'temp                ', N'MLHD02              ', CAST(0x0000ABA300000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (22, N'temp                ', N'MLHD02              ', CAST(0x0000ABA300000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, 4)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (31, N'temp                ', N'MLHD02              ', CAST(0x0000ABA300000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (61, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (62, N'temp                ', N'MLHD04              ', CAST(0x0000ABA600000000 AS DateTime), N'3                   ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (63, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', N'7000000             ', N'14                   ', NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (64, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (65, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (66, N'temp                ', N'MLHD04              ', CAST(0x0000ABA600000000 AS DateTime), N'4                   ', N'NV01                ', N'8000000             ', N'11                   ', NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (67, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (68, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (69, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (70, N'temp                ', N'MLHD04              ', CAST(0x0000ABA600000000 AS DateTime), N'5                   ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (78, N'temp                ', N'MLHD04              ', CAST(0x0000ABA600000000 AS DateTime), N'8                   ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (79, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (80, N'temp                ', N'MLHD04              ', CAST(0x0000ABA600000000 AS DateTime), N'9                   ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (83, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (84, N'temp                ', N'MLHD04              ', CAST(0x0000ABA600000000 AS DateTime), N'11                  ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (101, N'temp                ', N'MLHD04              ', CAST(0x0000ABA600000000 AS DateTime), N'18                  ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (102, N'temp                ', N'MLHD04              ', CAST(0x0000ABA600000000 AS DateTime), N'19                  ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (106, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABA700000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (107, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABA700000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (108, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABA700000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (109, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABA700000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (110, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABA700000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (113, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABA700000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (132, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABAA00000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (133, N'NCC001              ', N'MLHD03              ', CAST(0x0000ABAA00000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (134, N'temp                ', N'MLHD02              ', CAST(0x0000ABAC00000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (135, N'temp                ', N'MLHD02              ', CAST(0x0000ABAC00000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (136, N'temp                ', N'MLHD02              ', CAST(0x0000ABAC00000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (137, N'temp                ', N'MLHD02              ', CAST(0x0000ABAC00000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (138, N'temp                ', N'MLHD02              ', CAST(0x0000ABAC00000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (139, N'temp                ', N'MLHD02              ', CAST(0x0000ABAC00000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (140, N'temp                ', N'MLHD02              ', CAST(0x0000ABAC00000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (141, N'temp                ', N'MLHD02              ', CAST(0x0000ABAC00000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (142, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABB000000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (143, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABB000000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (144, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABB000000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
GO
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (145, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABB000000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (146, N'temp                ', N'MLHD02              ', CAST(0x0000ABB200000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (147, N'temp                ', N'MLHD02              ', CAST(0x0000ABB200000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (148, N'temp                ', N'MLHD02              ', CAST(0x0000ABB200000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (149, N'temp                ', N'MLHD02              ', CAST(0x0000ABB300000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (150, N'temp                ', N'MLHD02              ', CAST(0x0000ABB300000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (151, N'temp                ', N'MLHD02              ', CAST(0x0000ABB300000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (96, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', N'7000000             ', N'14                   ', NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (97, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (98, N'temp                ', N'MLHD04              ', CAST(0x0000ABA600000000 AS DateTime), N'16                  ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (99, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', N'7000000             ', N'18                   ', NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (100, N'temp                ', N'MLHD04              ', CAST(0x0000ABA600000000 AS DateTime), N'17                  ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (103, N'temp                ', N'MLHD04              ', CAST(0x0000ABA600000000 AS DateTime), N'22                  ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (104, N'temp                ', N'MLHD02              ', CAST(0x0000ABA600000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (105, N'temp                ', N'MLHD04              ', CAST(0x0000ABA600000000 AS DateTime), N'24                  ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (114, N'NCC001              ', N'MLHD03              ', CAST(0x0000ABA700000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (115, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABA700000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (116, N'NCC001              ', N'MLHD03              ', CAST(0x0000ABA700000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (117, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABA700000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (118, N'NCC001              ', N'MLHD03              ', CAST(0x0000ABA700000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (120, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABA700000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (121, N'NCC001              ', N'MLHD03              ', CAST(0x0000ABA700000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (122, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABA700000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (123, N'NCC001              ', N'MLHD03              ', CAST(0x0000ABA700000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (124, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABA700000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (125, N'NCC001              ', N'MLHD03              ', CAST(0x0000ABA700000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (126, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABA700000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (127, N'NCC001              ', N'MLHD03              ', CAST(0x0000ABA700000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (128, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABA700000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (129, N'NCC001              ', N'MLHD03              ', CAST(0x0000ABA700000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (130, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABA700000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (131, N'NCC001              ', N'MLHD03              ', CAST(0x0000ABA700000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (152, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABBF00000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (153, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABBF00000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (154, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABBF00000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (155, N'NCC001              ', N'MLHD03              ', CAST(0x0000ABBF00000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (156, N'temp                ', N'MLHD02              ', CAST(0x0000ABBF00000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (158, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABC000000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (159, N'NCC001              ', N'MLHD03              ', CAST(0x0000ABC000000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (160, N'NCC001              ', N'MLHD03              ', CAST(0x0000ABC700000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (161, N'temp                ', N'MLHD02              ', CAST(0x0000ABCD00000000 AS DateTime), N'temp                ', N'NV01                ', N'7000000             ', N'19                   ', NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (162, N'NCC001              ', N'MLHD01              ', CAST(0x0000ABCD00000000 AS DateTime), N'temp                ', N'admin               ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (163, N'NCC001              ', N'MLHD03              ', CAST(0x0000ABCD00000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (164, N'temp                ', N'MLHD02              ', CAST(0x0000ABD200000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (165, N'temp                ', N'MLHD02              ', CAST(0x0000ABD200000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (166, N'temp                ', N'MLHD02              ', CAST(0x0000ABD200000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (167, N'temp                ', N'MLHD02              ', CAST(0x0000ABD200000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (169, N'temp                ', N'MLHD02              ', CAST(0x0000ABD200000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (170, N'temp                ', N'MLHD02              ', CAST(0x0000ABD200000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (171, N'temp                ', N'MLHD02              ', CAST(0x0000ABD200000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (172, N'temp                ', N'MLHD02              ', CAST(0x0000ABD200000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (173, N'temp                ', N'MLHD02              ', CAST(0x0000ABD200000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (175, N'temp                ', N'MLHD02              ', CAST(0x0000ABD200000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (176, N'temp                ', N'MLHD02              ', CAST(0x0000ABD200000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (177, N'temp                ', N'MLHD02              ', CAST(0x0000ABD200000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (178, N'temp                ', N'MLHD02              ', CAST(0x0000ABD200000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (179, N'temp                ', N'MLHD02              ', CAST(0x0000ABD200000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (180, N'temp                ', N'MLHD02              ', CAST(0x0000ABD200000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (181, N'temp                ', N'MLHD02              ', CAST(0x0000ABD200000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (182, N'temp                ', N'MLHD02              ', CAST(0x0000ABD200000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (168, N'temp                ', N'MLHD02              ', CAST(0x0000ABD200000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (174, N'temp                ', N'MLHD02              ', CAST(0x0000ABD200000000 AS DateTime), N'temp                ', N'NV01                ', NULL, NULL, NULL)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (184, N'khong               ', N'MLHD05              ', CAST(0x0000ABDD00EEEFDE AS DateTime), N'                    ', N'NV01                ', N'                    ', N'                     ', 3)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (186, N'khong               ', N'MLHD05              ', CAST(0x0000ABDD0101366E AS DateTime), N'                    ', N'NV01                ', N'                    ', N'                     ', 5)
INSERT [dbo].[HOADON] ([MAHD], [MANCC], [MALOAIHD], [NGAYLAP], [MaTraGop], [MaNV], [ChenhLech], [MaDoiTra], [MaBaoHanh]) VALUES (185, N'khong               ', N'MLHD05              ', CAST(0x0000ABDD00F456DE AS DateTime), N'                    ', N'NV01                ', N'                    ', N'                     ', 4)
SET IDENTITY_INSERT [dbo].[HOADON] OFF
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT], [DIACHI], [CMND]) VALUES (N'khong               ', N'tempHoaDonNhap                                    ', N'khong      ', N'khong                                              ', N'khong        ')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT], [DIACHI], [CMND]) VALUES (N'KH01                ', N'Lý Thiện Thanh', N'0397299292 ', N'TPHCM                                              ', N'3432117      ')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT], [DIACHI], [CMND]) VALUES (N'KH02                ', N'Phạm Tấn Dũng', N'0123456789 ', N'TPHCM                                              ', N'3298115      ')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT], [DIACHI], [CMND]) VALUES (N'KH03                ', N'Nguyễn Văn A', N'0979829117 ', N'TN                                                 ', N'1173432      ')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT], [DIACHI], [CMND]) VALUES (N'KH04                ', N'Nguyễn Thị Thu Hằng', N'0358694856 ', N'HN                                                 ', N'291175665    ')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT], [DIACHI], [CMND]) VALUES (N'KH05                ', N'Pham Tan Dung', N'0353497478 ', N'HCM                                                ', N'362504076    ')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [SDT], [DIACHI], [CMND]) VALUES (N'KH06                ', N'Pham Tan Dung', N'0123456    ', N'HCM                                                ', N'362504076    ')
INSERT [dbo].[KHO] ([MAKHO], [SL], [MASP], [DiaChi], [SDT], [MALINHKIEN]) VALUES (N'KHO1                ', -80, N'SP01                ', N'TPHCM', 397299292, N'TEMP                ')
INSERT [dbo].[KHO] ([MAKHO], [SL], [MASP], [DiaChi], [SDT], [MALINHKIEN]) VALUES (N'KHO1                ', -82, N'SP02                ', N'TPHCM', 397299292, N'TEMP                ')
INSERT [dbo].[KHO] ([MAKHO], [SL], [MASP], [DiaChi], [SDT], [MALINHKIEN]) VALUES (N'KHO1                ', -75, N'SP10                ', N'tphcm', 397299292, N'TEMP                ')
INSERT [dbo].[KHO] ([MAKHO], [SL], [MASP], [DiaChi], [SDT], [MALINHKIEN]) VALUES (N'KHO1                ', -78, N'SP11                ', N'TPHCM', 397299292, N'TEMP                ')
INSERT [dbo].[KHO] ([MAKHO], [SL], [MASP], [DiaChi], [SDT], [MALINHKIEN]) VALUES (N'KHO1                ', -90, N'SP5                 ', N'TPHCM', 397299292, N'TEMP                ')
INSERT [dbo].[KHO] ([MAKHO], [SL], [MASP], [DiaChi], [SDT], [MALINHKIEN]) VALUES (N'KHO1                ', -79, N'SP6                 ', N'TPHCM', 397299292, N'TEMP                ')
INSERT [dbo].[KHO] ([MAKHO], [SL], [MASP], [DiaChi], [SDT], [MALINHKIEN]) VALUES (N'KHO1                ', 116, N'TEMP                ', N'TPHCM', 397299292, N'TEMP                ')
INSERT [dbo].[KHUYENMAI] ([MAKHUYENMAI], [MASP], [MALINHKIEN], [TENKHUYENMAI], [NGAYBD], [NGAYKT], [GIATRI]) VALUES (N'KM1                 ', N'SP5                 ', N'TEMP                ', N'KHUYEN MAI 500', CAST(0x0000AC8700000000 AS DateTime), CAST(0x0000AC8800000000 AS DateTime), 50)
INSERT [dbo].[KHUYENMAI] ([MAKHUYENMAI], [MASP], [MALINHKIEN], [TENKHUYENMAI], [NGAYBD], [NGAYKT], [GIATRI]) VALUES (N'KM2                 ', N'SP5                 ', N'TEMP                ', N'50', CAST(0x0000ABAB00000000 AS DateTime), CAST(0x0000ABAD00000000 AS DateTime), 50)
INSERT [dbo].[KHUYENMAI] ([MAKHUYENMAI], [MASP], [MALINHKIEN], [TENKHUYENMAI], [NGAYBD], [NGAYKT], [GIATRI]) VALUES (N'KM3                 ', N'SP5                 ', N'LK03                ', N'TANG KEM PK', CAST(0x0000ABAB00000000 AS DateTime), CAST(0x0000ABAD00000000 AS DateTime), 0)
INSERT [dbo].[KHUYENMAI] ([MAKHUYENMAI], [MASP], [MALINHKIEN], [TENKHUYENMAI], [NGAYBD], [NGAYKT], [GIATRI]) VALUES (N'KM4                 ', N'SP5                 ', N'TEMP                ', N'50', CAST(0x0000ABAB00000000 AS DateTime), CAST(0x0000ABAD00000000 AS DateTime), 50)
INSERT [dbo].[KHUYENMAI] ([MAKHUYENMAI], [MASP], [MALINHKIEN], [TENKHUYENMAI], [NGAYBD], [NGAYKT], [GIATRI]) VALUES (N'KM05                ', N'SP5                 ', N'TEMP                ', N'KHUYEN MAI 500', CAST(0x0000AC8700000000 AS DateTime), CAST(0x0000AC8800000000 AS DateTime), 50)
INSERT [dbo].[KHUYENMAI] ([MAKHUYENMAI], [MASP], [MALINHKIEN], [TENKHUYENMAI], [NGAYBD], [NGAYKT], [GIATRI]) VALUES (N'KM06                ', N'SP5                 ', N'TEMP                ', N'KHUYEN MAI 500', CAST(0x0000ABCD00000000 AS DateTime), CAST(0x0000ABEA00000000 AS DateTime), 50)
INSERT [dbo].[LINHKIEN] ([MALINHKIEN], [TENLINHKIEN], [DONGIA], [MAKHO]) VALUES (N'LK01                ', N'Man Hinh j7 prime                                  ', 200000, N'KHO1                ')
INSERT [dbo].[LINHKIEN] ([MALINHKIEN], [TENLINHKIEN], [DONGIA], [MAKHO]) VALUES (N'LK02                ', N'headphone ipod', 1300000, N'KHO1                ')
INSERT [dbo].[LINHKIEN] ([MALINHKIEN], [TENLINHKIEN], [DONGIA], [MAKHO]) VALUES (N'LK03                ', N'headphone sony', 200000, N'KHO1                ')
INSERT [dbo].[LINHKIEN] ([MALINHKIEN], [TENLINHKIEN], [DONGIA], [MAKHO]) VALUES (N'TEMP                ', N'TEMP', 0, N'KHO1                ')
INSERT [dbo].[LOAIHOADON] ([MALOAIHD], [TENLOAIHD]) VALUES (N'MLHD01              ', N'HDNCC               ')
INSERT [dbo].[LOAIHOADON] ([MALOAIHD], [TENLOAIHD]) VALUES (N'MLHD02              ', N'Bán Hàng')
INSERT [dbo].[LOAIHOADON] ([MALOAIHD], [TENLOAIHD]) VALUES (N'MLHD04              ', N'Bán Hàng Trả góp')
INSERT [dbo].[LOAIHOADON] ([MALOAIHD], [TENLOAIHD]) VALUES (N'MLHD03              ', N'CH tra gop cho ncc')
INSERT [dbo].[LOAIHOADON] ([MALOAIHD], [TENLOAIHD]) VALUES (N'MLHD05              ', N'Bảo hành')
INSERT [dbo].[LOAIHOADON] ([MALOAIHD], [TENLOAIHD]) VALUES (N'MLHD06              ', N'đổi trả')
INSERT [dbo].[LOAISANPHAM] ([MALOAI], [TENLOAI]) VALUES (N'LSP01               ', N'DT SamSung                                         ')
INSERT [dbo].[LOAISANPHAM] ([MALOAI], [TENLOAI]) VALUES (N'LSP07               ', N'DT Sony                                            ')
INSERT [dbo].[LOIDONGUOIDUNG] ([MALOIND], [TENLOIND]) VALUES (N'khong                ', N'khong')
INSERT [dbo].[LOIDONGUOIDUNG] ([MALOIND], [TENLOIND]) VALUES (N'1                    ', N'hỏng màn hình')
INSERT [dbo].[LOIDONHASX] ([MALOISX], [TENLOISX]) VALUES (N'1                   ', N'Lỗi màn hinh')
INSERT [dbo].[LOIDONHASX] ([MALOISX], [TENLOISX]) VALUES (N'2                   ', N'loi cam ung')
INSERT [dbo].[LOIDONHASX] ([MALOISX], [TENLOISX]) VALUES (N'khong               ', N'khong')
INSERT [dbo].[MANHINH] ([MAMANHINH], [TENMANHINH]) VALUES (N'MH000000000000000001', N'NguoiDung                                          ')
INSERT [dbo].[MANHINH] ([MAMANHINH], [TENMANHINH]) VALUES (N'MH000000000000000002', N'NhomNguoiDung                                      ')
INSERT [dbo].[MANHINH] ([MAMANHINH], [TENMANHINH]) VALUES (N'MH000000000000000003', N'PhanQuyen                                          ')
INSERT [dbo].[MANHINH] ([MAMANHINH], [TENMANHINH]) VALUES (N'MH000000000000000004', N'NhapHang                                           ')
INSERT [dbo].[MANHINH] ([MAMANHINH], [TENMANHINH]) VALUES (N'MH000000000000000023', N'quan ly khach hang')
INSERT [dbo].[MANHINH] ([MAMANHINH], [TENMANHINH]) VALUES (N'MH000000000000000005', N'San Pham')
INSERT [dbo].[MANHINH] ([MAMANHINH], [TENMANHINH]) VALUES (N'MH000000000000000006', N'Nha cung cap')
INSERT [dbo].[MANHINH] ([MAMANHINH], [TENMANHINH]) VALUES (N'MH000000000000000007', N'linh kien')
INSERT [dbo].[MANHINH] ([MAMANHINH], [TENMANHINH]) VALUES (N'MH000000000000000008', N'nhap hang')
INSERT [dbo].[MANHINH] ([MAMANHINH], [TENMANHINH]) VALUES (N'MH000000000000000009', N'nhap linh kien')
INSERT [dbo].[MANHINH] ([MAMANHINH], [TENMANHINH]) VALUES (N'MH000000000000000010', N'ban hang')
INSERT [dbo].[MANHINH] ([MAMANHINH], [TENMANHINH]) VALUES (N'MH000000000000000020', N'bao hanh')
INSERT [dbo].[MANHINH] ([MAMANHINH], [TENMANHINH]) VALUES (N'MH000000000000000021', N'loi sx')
INSERT [dbo].[MANHINH] ([MAMANHINH], [TENMANHINH]) VALUES (N'MH000000000000000022', N'loi nd')
INSERT [dbo].[MANHINH] ([MAMANHINH], [TENMANHINH]) VALUES (N'MH000000000000000018', N'km san pham')
INSERT [dbo].[MANHINH] ([MAMANHINH], [TENMANHINH]) VALUES (N'MH000000000000000019', N'km linh kien')
INSERT [dbo].[MANHINH] ([MAMANHINH], [TENMANHINH]) VALUES (N'MH000000000000000012', N'tinh doanh thu')
INSERT [dbo].[MANHINH] ([MAMANHINH], [TENMANHINH]) VALUES (N'MH000000000000000013', N'tra gop')
INSERT [dbo].[MANHINH] ([MAMANHINH], [TENMANHINH]) VALUES (N'MH000000000000000011', N'thong ke san pham')
INSERT [dbo].[MANHINH] ([MAMANHINH], [TENMANHINH]) VALUES (N'MH000000000000000014', N'san pham khuyen mai')
INSERT [dbo].[MANHINH] ([MAMANHINH], [TENMANHINH]) VALUES (N'MH000000000000000015', N'tim kiem khach hang')
INSERT [dbo].[MANHINH] ([MAMANHINH], [TENMANHINH]) VALUES (N'MH000000000000000016', N'tim kiem san pham')
INSERT [dbo].[MANHINH] ([MAMANHINH], [TENMANHINH]) VALUES (N'MH000000000000000017', N'tim kiem san pham khuyen mai')
INSERT [dbo].[NDBaoHanh] ([MANDBH], [TenNDBH], [DonGia]) VALUES (1, N'Vệ Sinh', 50000)
INSERT [dbo].[NDBaoHanh] ([MANDBH], [TenNDBH], [DonGia]) VALUES (2, N'Thay Linh Kiện', 0)
INSERT [dbo].[NDBaoHanh] ([MANDBH], [TenNDBH], [DonGia]) VALUES (3, N'Sữa Chữa', 50000)
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [DIACHI], [SDT]) VALUES (N'NCC001              ', N'Sony', N'TPHCM                                              ', N'0123456789 ')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [DIACHI], [SDT]) VALUES (N'temp                ', N'khong', N'khong                                              ', N'khong      ')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [DIACHI], [SDT]) VALUES (N'NCC002              ', N'xxx', N'TPHCM                                              ', N'0123456789 ')
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [DIACHI], [SDT]) VALUES (N'khong               ', N'khong', N'khong                                              ', N'khong      ')
INSERT [dbo].[NHANVIEN] ([MANV], [HOTEN], [NGAYSINH], [DIACHI], [SDT], [GIOITINH], [CMND]) VALUES (N'NV01                ', N'admin                          ', N'01/01/2000          ', N'TN                                                 ', N'0397299292 ', N'Nam ', N'3497117      ')
INSERT [dbo].[NHANVIEN] ([MANV], [HOTEN], [NGAYSINH], [DIACHI], [SDT], [GIOITINH], [CMND]) VALUES (N'NV02                ', N'Thái Van Thu?c', N'01/01/2000          ', N'HCM                                                ', N'0123456789 ', N'N?  ', N'0322131      ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN005               ', N'NV01                ', N'11/23/2019          ', N'Đã lưu              ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN006               ', N'NV01                ', N'11/23/2019          ', N'Đã lưu              ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN007               ', N'NV01                ', N'11/23/2019          ', N'50%                 ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN001               ', N'NV01                ', N'11/23/2019          ', N'Đã lưu              ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN003               ', N'NV01                ', N'11/23/2019          ', N'Đã lưu              ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN0011              ', N'NV01                ', N'11/23/2019          ', N'Đã lưu              ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN008               ', N'NV01                ', N'11/28/2019          ', N'Đã lưu              ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN009               ', N'NV01                ', N'11/28/2019          ', N'Đã lưu              ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN0010              ', N'NV01                ', N'11/23/2019          ', N'Đã lưu              ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN0013              ', N'NV01                ', N'11/23/2019          ', N'Đã lưu              ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN0012              ', N'NV01                ', N'11/23/2019          ', N'Đã lưu              ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN0014              ', N'NV01                ', N'11/23/2019          ', N'Đã lưu              ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN0015              ', N'NV01                ', N'11/23/2019          ', N'Đã lưu              ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN14                ', N'NV01                ', N'04/22/2020          ', N'Đã lưu              ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN15                ', N'NV01                ', N'04/22/2020          ', N'50%                 ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN16                ', N'NV01                ', N'04/22/2020          ', N'Đã lưu              ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN17                ', N'NV01                ', N'04/24/2020          ', N'50                  ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN18                ', N'NV01                ', N'04/25/2020          ', N'100                 ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN19                ', N'NV01                ', N'04/26/2020          ', N'70                  ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN24                ', N'NV01                ', N'04/24/2020          ', N'Chưa lưu            ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN28                ', N'NV01                ', N'04/27/2020          ', N'70                  ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN29                ', N'NV01                ', N'04/27/2020          ', N'Chưa lưu            ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN30                ', N'NV01                ', N'05/03/2020          ', N'Đã lưu              ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN31                ', N'NV01                ', N'05/04/2020          ', N'Chưa lưu            ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN20                ', N'NV01                ', N'04/24/2020          ', N'100                 ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN21                ', N'NV01                ', N'04/24/2020          ', N'Đã lưu              ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN22                ', N'NV01                ', N'04/24/2020          ', N'100                 ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN23                ', N'NV01                ', N'04/24/2020          ', N'100                 ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN25                ', N'NV01                ', N'04/24/2020          ', N'100                 ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN26                ', N'NV01                ', N'04/24/2020          ', N'100                 ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN27                ', N'NV01                ', N'04/24/2020          ', N'100                 ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN32                ', N'NV01                ', N'05/18/2020          ', N'Đã lưu              ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN33                ', N'NV01                ', N'05/19/2020          ', N'100                 ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN34                ', N'NV01                ', N'05/19/2020          ', N'50%                 ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN35                ', N'NV01                ', N'05/26/2020          ', N'Đã lưu              ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN36                ', N'NV01                ', N'05/26/2020          ', N'Chưa lưu            ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN37                ', N'NV01                ', N'05/27/2020          ', N'Chưa lưu            ')
INSERT [dbo].[NHAPHANG] ([MANHAP], [MANV], [NGAYNHAP], [TrangThai]) VALUES (N'PN38                ', N'NV01                ', N'05/26/2020          ', N'70                  ')
INSERT [dbo].[NHOMNGUOIDUNG] ([MANHOM], [TENNHOM], [GhiChu]) VALUES (N'N001                ', N'Quản Lý', NULL)
INSERT [dbo].[NHOMNGUOIDUNG] ([MANHOM], [TENNHOM], [GhiChu]) VALUES (N'N002                ', N'Bán Hàng', NULL)
INSERT [dbo].[NHOMNGUOIDUNG] ([MANHOM], [TENNHOM], [GhiChu]) VALUES (N'N003                ', N'Kỹ Thuật', NULL)
INSERT [dbo].[NHOMNGUOIDUNG] ([MANHOM], [TENNHOM], [GhiChu]) VALUES (N'N004                ', N'Kế Toán', NULL)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMANHINH], [CoQuyen]) VALUES (N'N001                ', N'MH000000000000000001', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMANHINH], [CoQuyen]) VALUES (N'N001                ', N'MH000000000000000002', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMANHINH], [CoQuyen]) VALUES (N'N001                ', N'MH000000000000000003', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMANHINH], [CoQuyen]) VALUES (N'N001                ', N'MH000000000000000004', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMANHINH], [CoQuyen]) VALUES (N'N001                ', N'MH000000000000000005', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMANHINH], [CoQuyen]) VALUES (N'N001                ', N'MH000000000000000006', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMANHINH], [CoQuyen]) VALUES (N'N001                ', N'MH000000000000000007', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMANHINH], [CoQuyen]) VALUES (N'N001                ', N'MH000000000000000008', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMANHINH], [CoQuyen]) VALUES (N'N001                ', N'MH000000000000000009', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMANHINH], [CoQuyen]) VALUES (N'N001                ', N'MH000000000000000010', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMANHINH], [CoQuyen]) VALUES (N'N001                ', N'MH000000000000000011', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMANHINH], [CoQuyen]) VALUES (N'N001                ', N'MH000000000000000012', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMANHINH], [CoQuyen]) VALUES (N'N001                ', N'MH000000000000000013', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMANHINH], [CoQuyen]) VALUES (N'N001                ', N'MH000000000000000014', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMANHINH], [CoQuyen]) VALUES (N'N001                ', N'MH000000000000000015', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMANHINH], [CoQuyen]) VALUES (N'N001                ', N'MH000000000000000016', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMANHINH], [CoQuyen]) VALUES (N'N001                ', N'MH000000000000000017', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMANHINH], [CoQuyen]) VALUES (N'N001                ', N'MH000000000000000018', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMANHINH], [CoQuyen]) VALUES (N'N001                ', N'MH000000000000000019', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMANHINH], [CoQuyen]) VALUES (N'N001                ', N'MH000000000000000020', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMANHINH], [CoQuyen]) VALUES (N'N001                ', N'MH000000000000000021', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMANHINH], [CoQuyen]) VALUES (N'N001                ', N'MH000000000000000022', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMANHINH], [CoQuyen]) VALUES (N'N001                ', N'MH000000000000000023', 1)
INSERT [dbo].[PHANQUYEN] ([MANHOM], [MAMANHINH], [CoQuyen]) VALUES (N'N002                ', N'MH000000000000000010', 1)
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAKHO], [TENSP], [TINHTRANG], [DonGia]) VALUES (N'SP5                 ', N'LSP01               ', N'KHO1                ', N'S9                                                 ', N'new ', 10000000)
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAKHO], [TENSP], [TINHTRANG], [DonGia]) VALUES (N'SP02                ', N'LSP01               ', N'KHO1                ', N'S8                                                 ', N'new ', 50)
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAKHO], [TENSP], [TINHTRANG], [DonGia]) VALUES (N'SP03                ', N'LSP07               ', N'KHO1                ', N'Xperia A1 plust                                    ', N'new ', 50)
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAKHO], [TENSP], [TINHTRANG], [DonGia]) VALUES (N'SP04                ', N'LSP01               ', N'KHO1                ', N's7                                                 ', N'new ', 10000000)
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAKHO], [TENSP], [TINHTRANG], [DonGia]) VALUES (N'khong               ', N'LSP01               ', N'KHO1                ', N'tempHoaDonNhap                                     ', N'new ', 0)
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAKHO], [TENSP], [TINHTRANG], [DonGia]) VALUES (N'SP6                 ', N'LSP01               ', N'KHO1                ', N'S10', N'new ', 15000000)
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAKHO], [TENSP], [TINHTRANG], [DonGia]) VALUES (N'TEMP                ', N'LSP01               ', N'KHO1                ', N'0', N'0   ', 0)
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAKHO], [TENSP], [TINHTRANG], [DonGia]) VALUES (N'SP01                ', N'LSP01               ', N'KHO1                ', N'S6', N'NEW ', 3000000)
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAKHO], [TENSP], [TINHTRANG], [DonGia]) VALUES (N'SP9                 ', N'LSP01               ', N'KHO1                ', N'S20', N'new ', 16000000)
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAKHO], [TENSP], [TINHTRANG], [DonGia]) VALUES (N'SP10                ', N'LSP01               ', N'KHO1                ', N'S9 old                                             ', N'OLD ', 9000000)
INSERT [dbo].[SANPHAM] ([MASP], [MALOAI], [MAKHO], [TENSP], [TINHTRANG], [DonGia]) VALUES (N'SP11                ', N'LSP01               ', N'KHO1                ', N'S6 old', N'old ', 2000000)
INSERT [dbo].[TAIKHOAN] ([TENDANGNHAP], [MANV], [MATKHAU], [HOATDONG]) VALUES (N'admin               ', N'NV01                ', N'admin                          ', 1)
INSERT [dbo].[TAIKHOAN] ([TENDANGNHAP], [MANV], [MATKHAU], [HOATDONG]) VALUES (N'banhang             ', N'NV02                ', N'banhang                        ', 1)
INSERT [dbo].[TinhTrangTT] ([MaHD], [TinhTrangThanhToan], [NgayTT], [NgayTTTiepTheo], [MANHAP]) VALUES (60, N'100       ', CAST(0x0000ABA600000000 AS DateTime), CAST(0x0000ABA700000000 AS DateTime), NULL)
INSERT [dbo].[TinhTrangTT] ([MaHD], [TinhTrangThanhToan], [NgayTT], [NgayTTTiepTheo], [MANHAP]) VALUES (110, N'50        ', CAST(0x0000ABA700000000 AS DateTime), CAST(0x0000ABA700000000 AS DateTime), NULL)
INSERT [dbo].[TinhTrangTT] ([MaHD], [TinhTrangThanhToan], [NgayTT], [NgayTTTiepTheo], [MANHAP]) VALUES (113, N'50        ', CAST(0x0000ABA700000000 AS DateTime), CAST(0x0000ABA700000000 AS DateTime), NULL)
INSERT [dbo].[TinhTrangTT] ([MaHD], [TinhTrangThanhToan], [NgayTT], [NgayTTTiepTheo], [MANHAP]) VALUES (114, N'50        ', CAST(0x0000ABA700000000 AS DateTime), CAST(0x0000ABA700000000 AS DateTime), N'PN17                ')
INSERT [dbo].[TinhTrangTT] ([MaHD], [TinhTrangThanhToan], [NgayTT], [NgayTTTiepTheo], [MANHAP]) VALUES (115, N'20        ', CAST(0x0000ABA700000000 AS DateTime), CAST(0x0000ABA900000000 AS DateTime), NULL)
INSERT [dbo].[TinhTrangTT] ([MaHD], [TinhTrangThanhToan], [NgayTT], [NgayTTTiepTheo], [MANHAP]) VALUES (116, N'100       ', CAST(0x0000ABA700000000 AS DateTime), CAST(0x0000ABA900000000 AS DateTime), N'PN18                ')
INSERT [dbo].[TinhTrangTT] ([MaHD], [TinhTrangThanhToan], [NgayTT], [NgayTTTiepTheo], [MANHAP]) VALUES (117, N'50        ', CAST(0x0000ABA700000000 AS DateTime), CAST(0x0000ABAB00000000 AS DateTime), NULL)
INSERT [dbo].[TinhTrangTT] ([MaHD], [TinhTrangThanhToan], [NgayTT], [NgayTTTiepTheo], [MANHAP]) VALUES (118, N'70        ', CAST(0x0000ABA700000000 AS DateTime), CAST(0x0000ABAB00000000 AS DateTime), N'PN19                ')
INSERT [dbo].[TinhTrangTT] ([MaHD], [TinhTrangThanhToan], [NgayTT], [NgayTTTiepTheo], [MANHAP]) VALUES (120, N'50        ', CAST(0x0000ABA700000000 AS DateTime), CAST(0x0000ABA800000000 AS DateTime), NULL)
INSERT [dbo].[TinhTrangTT] ([MaHD], [TinhTrangThanhToan], [NgayTT], [NgayTTTiepTheo], [MANHAP]) VALUES (121, N'100       ', CAST(0x0000ABA700000000 AS DateTime), CAST(0x0000ABA800000000 AS DateTime), N'PN20                ')
INSERT [dbo].[TinhTrangTT] ([MaHD], [TinhTrangThanhToan], [NgayTT], [NgayTTTiepTheo], [MANHAP]) VALUES (122, N'50        ', CAST(0x0000ABA700000000 AS DateTime), CAST(0x0000AC9700000000 AS DateTime), NULL)
INSERT [dbo].[TinhTrangTT] ([MaHD], [TinhTrangThanhToan], [NgayTT], [NgayTTTiepTheo], [MANHAP]) VALUES (123, N'100       ', CAST(0x0000ABA700000000 AS DateTime), CAST(0x0000AC9700000000 AS DateTime), N'PN22                ')
INSERT [dbo].[TinhTrangTT] ([MaHD], [TinhTrangThanhToan], [NgayTT], [NgayTTTiepTheo], [MANHAP]) VALUES (124, N'50        ', CAST(0x0000ABA700000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL)
INSERT [dbo].[TinhTrangTT] ([MaHD], [TinhTrangThanhToan], [NgayTT], [NgayTTTiepTheo], [MANHAP]) VALUES (125, N'100       ', CAST(0x0000ABA700000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), N'PN23                ')
INSERT [dbo].[TinhTrangTT] ([MaHD], [TinhTrangThanhToan], [NgayTT], [NgayTTTiepTheo], [MANHAP]) VALUES (126, N'50        ', CAST(0x0000ABA700000000 AS DateTime), CAST(0x0000AC8A00000000 AS DateTime), NULL)
INSERT [dbo].[TinhTrangTT] ([MaHD], [TinhTrangThanhToan], [NgayTT], [NgayTTTiepTheo], [MANHAP]) VALUES (127, N'100       ', CAST(0x0000ABA700000000 AS DateTime), CAST(0x0000AC8A00000000 AS DateTime), N'PN25                ')
INSERT [dbo].[TinhTrangTT] ([MaHD], [TinhTrangThanhToan], [NgayTT], [NgayTTTiepTheo], [MANHAP]) VALUES (128, N'50        ', CAST(0x0000ABA700000000 AS DateTime), CAST(0x0000AC8B00000000 AS DateTime), NULL)
INSERT [dbo].[TinhTrangTT] ([MaHD], [TinhTrangThanhToan], [NgayTT], [NgayTTTiepTheo], [MANHAP]) VALUES (129, N'100       ', CAST(0x0000ABA700000000 AS DateTime), CAST(0x0000AC8B00000000 AS DateTime), N'PN26                ')
INSERT [dbo].[TinhTrangTT] ([MaHD], [TinhTrangThanhToan], [NgayTT], [NgayTTTiepTheo], [MANHAP]) VALUES (130, N'50        ', CAST(0x0000ABA700000000 AS DateTime), CAST(0x0000AC8A00000000 AS DateTime), NULL)
INSERT [dbo].[TinhTrangTT] ([MaHD], [TinhTrangThanhToan], [NgayTT], [NgayTTTiepTheo], [MANHAP]) VALUES (131, N'100       ', CAST(0x0000ABA700000000 AS DateTime), CAST(0x0000AC8A00000000 AS DateTime), N'PN27                ')
INSERT [dbo].[TinhTrangTT] ([MaHD], [TinhTrangThanhToan], [NgayTT], [NgayTTTiepTheo], [MANHAP]) VALUES (132, N'50        ', CAST(0x0000ABAA00000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), NULL)
INSERT [dbo].[TinhTrangTT] ([MaHD], [TinhTrangThanhToan], [NgayTT], [NgayTTTiepTheo], [MANHAP]) VALUES (133, N'70        ', CAST(0x0000ABAA00000000 AS DateTime), CAST(0x0000AC8F00000000 AS DateTime), N'PN28                ')
INSERT [dbo].[TinhTrangTT] ([MaHD], [TinhTrangThanhToan], [NgayTT], [NgayTTTiepTheo], [MANHAP]) VALUES (154, N'50        ', CAST(0x0000ABBF00000000 AS DateTime), CAST(0x0000ABCC00000000 AS DateTime), NULL)
INSERT [dbo].[TinhTrangTT] ([MaHD], [TinhTrangThanhToan], [NgayTT], [NgayTTTiepTheo], [MANHAP]) VALUES (155, N'100       ', CAST(0x0000ABBF00000000 AS DateTime), CAST(0x0000ABCC00000000 AS DateTime), N'PN33                ')
INSERT [dbo].[TinhTrangTT] ([MaHD], [TinhTrangThanhToan], [NgayTT], [NgayTTTiepTheo], [MANHAP]) VALUES (158, N'50        ', CAST(0x0000ABC000000000 AS DateTime), CAST(0x0000ABB300000000 AS DateTime), NULL)
INSERT [dbo].[TinhTrangTT] ([MaHD], [TinhTrangThanhToan], [NgayTT], [NgayTTTiepTheo], [MANHAP]) VALUES (159, N'50        ', CAST(0x0000ABC000000000 AS DateTime), CAST(0x0000ABB300000000 AS DateTime), N'PN34                ')
INSERT [dbo].[TinhTrangTT] ([MaHD], [TinhTrangThanhToan], [NgayTT], [NgayTTTiepTheo], [MANHAP]) VALUES (162, N'50        ', CAST(0x0000ABCD00000000 AS DateTime), CAST(0x0000ABCD00000000 AS DateTime), NULL)
INSERT [dbo].[TinhTrangTT] ([MaHD], [TinhTrangThanhToan], [NgayTT], [NgayTTTiepTheo], [MANHAP]) VALUES (163, N'70        ', CAST(0x0000ABCD00000000 AS DateTime), CAST(0x0000ABCD00000000 AS DateTime), N'PN38                ')
INSERT [dbo].[tk_NND] ([TENDANGNHAP], [MANHOM]) VALUES (N'admin               ', N'N001                ')
INSERT [dbo].[tk_NND] ([TENDANGNHAP], [MANHOM]) VALUES (N'banhang             ', N'N002                ')
INSERT [dbo].[TraGop] ([MaTraGop], [SoTienPhaiTra], [SoTienConLai], [NgayTra], [deadline]) VALUES (N'1                   ', 5000025, 5000025, CAST(0x01410B00 AS Date), N'2020-05-23')
INSERT [dbo].[TraGop] ([MaTraGop], [SoTienPhaiTra], [SoTienConLai], [NgayTra], [deadline]) VALUES (N'10                  ', 5000000, 5000000, CAST(0x01410B00 AS Date), N'2020-05-23')
INSERT [dbo].[TraGop] ([MaTraGop], [SoTienPhaiTra], [SoTienConLai], [NgayTra], [deadline]) VALUES (N'11                  ', 5000025, 5000025, CAST(0x01410B00 AS Date), N'2020-05-23')
INSERT [dbo].[TraGop] ([MaTraGop], [SoTienPhaiTra], [SoTienConLai], [NgayTra], [deadline]) VALUES (N'12                  ', 5000000, 5000000, CAST(0x01410B00 AS Date), N'2020-05-23')
INSERT [dbo].[TraGop] ([MaTraGop], [SoTienPhaiTra], [SoTienConLai], [NgayTra], [deadline]) VALUES (N'13                  ', 5000000, 5000000, CAST(0x01410B00 AS Date), N'2020-05-23')
INSERT [dbo].[TraGop] ([MaTraGop], [SoTienPhaiTra], [SoTienConLai], [NgayTra], [deadline]) VALUES (N'14                  ', 7500025, 7500025, CAST(0x01410B00 AS Date), N'2020-05-23')
INSERT [dbo].[TraGop] ([MaTraGop], [SoTienPhaiTra], [SoTienConLai], [NgayTra], [deadline]) VALUES (N'15                  ', 7500000, 7500000, CAST(0x01410B00 AS Date), N'2020-05-23')
INSERT [dbo].[TraGop] ([MaTraGop], [SoTienPhaiTra], [SoTienConLai], [NgayTra], [deadline]) VALUES (N'16                  ', 12500000, 12500000, CAST(0x01410B00 AS Date), N'2020-05-23')
INSERT [dbo].[TraGop] ([MaTraGop], [SoTienPhaiTra], [SoTienConLai], [NgayTra], [deadline]) VALUES (N'17                  ', 7500000, 7500000, CAST(0x01410B00 AS Date), N'2020-05-23')
INSERT [dbo].[TraGop] ([MaTraGop], [SoTienPhaiTra], [SoTienConLai], [NgayTra], [deadline]) VALUES (N'18                  ', 7500000, 7500000, CAST(0x01410B00 AS Date), N'2020-05-23')
INSERT [dbo].[TraGop] ([MaTraGop], [SoTienPhaiTra], [SoTienConLai], [NgayTra], [deadline]) VALUES (N'18                  ', 500000, 7000000, CAST(0x02410B00 AS Date), N'2020-05-23')
INSERT [dbo].[TraGop] ([MaTraGop], [SoTienPhaiTra], [SoTienConLai], [NgayTra], [deadline]) VALUES (N'18                  ', 2000000, 5500000, CAST(0x21410B00 AS Date), N'2020-05-23')
INSERT [dbo].[TraGop] ([MaTraGop], [SoTienPhaiTra], [SoTienConLai], [NgayTra], [deadline]) VALUES (N'19                  ', 5000000, 5000000, CAST(0x01410B00 AS Date), N'2020-05-23')
INSERT [dbo].[TraGop] ([MaTraGop], [SoTienPhaiTra], [SoTienConLai], [NgayTra], [deadline]) VALUES (N'19                  ', 2000000, 3000000, CAST(0x02410B00 AS Date), N'2020-05-23')
INSERT [dbo].[TraGop] ([MaTraGop], [SoTienPhaiTra], [SoTienConLai], [NgayTra], [deadline]) VALUES (N'2                   ', 5000000, 5000000, CAST(0x01410B00 AS Date), N'2020-05-23')
INSERT [dbo].[TraGop] ([MaTraGop], [SoTienPhaiTra], [SoTienConLai], [NgayTra], [deadline]) VALUES (N'22                  ', 5000000, 5000000, CAST(0x01410B00 AS Date), N'2020-05-23')
INSERT [dbo].[TraGop] ([MaTraGop], [SoTienPhaiTra], [SoTienConLai], [NgayTra], [deadline]) VALUES (N'22                  ', 20, 4999980, CAST(0x02410B00 AS Date), N'2020-05-23')
INSERT [dbo].[TraGop] ([MaTraGop], [SoTienPhaiTra], [SoTienConLai], [NgayTra], [deadline]) VALUES (N'24                  ', 25, 25, CAST(0x01410B00 AS Date), N'2020-05-23')
INSERT [dbo].[TraGop] ([MaTraGop], [SoTienPhaiTra], [SoTienConLai], [NgayTra], [deadline]) VALUES (N'24                  ', 25, 0, CAST(0x0B410B00 AS Date), N'2020-05-23')
INSERT [dbo].[TraGop] ([MaTraGop], [SoTienPhaiTra], [SoTienConLai], [NgayTra], [deadline]) VALUES (N'3                   ', 5000000, 4999980, CAST(0x01410B00 AS Date), N'2020-05-23')
INSERT [dbo].[TraGop] ([MaTraGop], [SoTienPhaiTra], [SoTienConLai], [NgayTra], [deadline]) VALUES (N'3                   ', 80, 4999900, CAST(0x21410B00 AS Date), N'2020-05-23')
INSERT [dbo].[TraGop] ([MaTraGop], [SoTienPhaiTra], [SoTienConLai], [NgayTra], [deadline]) VALUES (N'4                   ', 7500000, 7450000, CAST(0x01410B00 AS Date), N'2020-05-23')
INSERT [dbo].[TraGop] ([MaTraGop], [SoTienPhaiTra], [SoTienConLai], [NgayTra], [deadline]) VALUES (N'5                   ', 5000000, 5000000, CAST(0x01410B00 AS Date), N'2020-05-23')
INSERT [dbo].[TraGop] ([MaTraGop], [SoTienPhaiTra], [SoTienConLai], [NgayTra], [deadline]) VALUES (N'6                   ', 5000000, 5000000, CAST(0x01410B00 AS Date), N'2020-05-23')
INSERT [dbo].[TraGop] ([MaTraGop], [SoTienPhaiTra], [SoTienConLai], [NgayTra], [deadline]) VALUES (N'7                   ', 7500000, 7500000, CAST(0x01410B00 AS Date), N'2020-05-23')
INSERT [dbo].[TraGop] ([MaTraGop], [SoTienPhaiTra], [SoTienConLai], [NgayTra], [deadline]) VALUES (N'8                   ', 7500000, 7500000, CAST(0x01410B00 AS Date), N'2020-05-23')
INSERT [dbo].[TraGop] ([MaTraGop], [SoTienPhaiTra], [SoTienConLai], [NgayTra], [deadline]) VALUES (N'8                   ', 500000, 7000000, CAST(0x28410B00 AS Date), N'2020-05-23')
INSERT [dbo].[TraGop] ([MaTraGop], [SoTienPhaiTra], [SoTienConLai], [NgayTra], [deadline]) VALUES (N'temp                ', 0, 0, CAST(0x01410B00 AS Date), N'2020-04-23')
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_BAOHANH]    Script Date: 6/17/2020 9:41:24 PM ******/
ALTER TABLE [dbo].[BAOHANH] ADD  CONSTRAINT [PK_BAOHANH] PRIMARY KEY NONCLUSTERED 
(
	[MABAOHANH] ASC,
	[MALOIND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_DATHANG]    Script Date: 6/17/2020 9:41:24 PM ******/
ALTER TABLE [dbo].[DATHANG] ADD  CONSTRAINT [PK_DATHANG] PRIMARY KEY NONCLUSTERED 
(
	[MADAT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_DOITRA]    Script Date: 6/17/2020 9:41:24 PM ******/
ALTER TABLE [dbo].[DOITRA] ADD  CONSTRAINT [PK_DOITRA] PRIMARY KEY NONCLUSTERED 
(
	[MADOITRA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_HOADON]    Script Date: 6/17/2020 9:41:24 PM ******/
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [PK_HOADON] PRIMARY KEY NONCLUSTERED 
(
	[MAHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_KHACHHANG]    Script Date: 6/17/2020 9:41:24 PM ******/
ALTER TABLE [dbo].[KHACHHANG] ADD  CONSTRAINT [PK_KHACHHANG] PRIMARY KEY NONCLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_KHUYENMAI]    Script Date: 6/17/2020 9:41:24 PM ******/
ALTER TABLE [dbo].[KHUYENMAI] ADD  CONSTRAINT [PK_KHUYENMAI] PRIMARY KEY NONCLUSTERED 
(
	[MAKHUYENMAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_LINHKIEN]    Script Date: 6/17/2020 9:41:24 PM ******/
ALTER TABLE [dbo].[LINHKIEN] ADD  CONSTRAINT [PK_LINHKIEN] PRIMARY KEY NONCLUSTERED 
(
	[MALINHKIEN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_LOAIHOADON]    Script Date: 6/17/2020 9:41:24 PM ******/
ALTER TABLE [dbo].[LOAIHOADON] ADD  CONSTRAINT [PK_LOAIHOADON] PRIMARY KEY NONCLUSTERED 
(
	[MALOAIHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_LOAISANPHAM]    Script Date: 6/17/2020 9:41:24 PM ******/
ALTER TABLE [dbo].[LOAISANPHAM] ADD  CONSTRAINT [PK_LOAISANPHAM] PRIMARY KEY NONCLUSTERED 
(
	[MALOAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_LOIDONGUOIDUNG]    Script Date: 6/17/2020 9:41:24 PM ******/
ALTER TABLE [dbo].[LOIDONGUOIDUNG] ADD  CONSTRAINT [PK_LOIDONGUOIDUNG] PRIMARY KEY NONCLUSTERED 
(
	[MALOIND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_LOIDONHASX]    Script Date: 6/17/2020 9:41:24 PM ******/
ALTER TABLE [dbo].[LOIDONHASX] ADD  CONSTRAINT [PK_LOIDONHASX] PRIMARY KEY NONCLUSTERED 
(
	[MALOISX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_MANHINH]    Script Date: 6/17/2020 9:41:24 PM ******/
ALTER TABLE [dbo].[MANHINH] ADD  CONSTRAINT [PK_MANHINH] PRIMARY KEY NONCLUSTERED 
(
	[MAMANHINH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_NHACUNGCAP]    Script Date: 6/17/2020 9:41:24 PM ******/
ALTER TABLE [dbo].[NHACUNGCAP] ADD  CONSTRAINT [PK_NHACUNGCAP] PRIMARY KEY NONCLUSTERED 
(
	[MANCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_NHANVIEN]    Script Date: 6/17/2020 9:41:24 PM ******/
ALTER TABLE [dbo].[NHANVIEN] ADD  CONSTRAINT [PK_NHANVIEN] PRIMARY KEY NONCLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_NHAPHANG]    Script Date: 6/17/2020 9:41:24 PM ******/
ALTER TABLE [dbo].[NHAPHANG] ADD  CONSTRAINT [PK_NHAPHANG] PRIMARY KEY NONCLUSTERED 
(
	[MANHAP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_NHOMNGUOIDUNG]    Script Date: 6/17/2020 9:41:24 PM ******/
ALTER TABLE [dbo].[NHOMNGUOIDUNG] ADD  CONSTRAINT [PK_NHOMNGUOIDUNG] PRIMARY KEY NONCLUSTERED 
(
	[MANHOM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_SANPHAM]    Script Date: 6/17/2020 9:41:24 PM ******/
ALTER TABLE [dbo].[SANPHAM] ADD  CONSTRAINT [PK_SANPHAM] PRIMARY KEY NONCLUSTERED 
(
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_TAIKHOAN]    Script Date: 6/17/2020 9:41:24 PM ******/
ALTER TABLE [dbo].[TAIKHOAN] ADD  CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY NONCLUSTERED 
(
	[TENDANGNHAP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BAOHANH]  WITH CHECK ADD  CONSTRAINT [FK_BAOHANH_CO5_KHACHHAN] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
GO
ALTER TABLE [dbo].[BAOHANH] CHECK CONSTRAINT [FK_BAOHANH_CO5_KHACHHAN]
GO
ALTER TABLE [dbo].[CT_HOADON_LINHKIEN]  WITH CHECK ADD  CONSTRAINT [FK_CT_HOADO_CT_HOADON_HOADON] FOREIGN KEY([MAHD])
REFERENCES [dbo].[HOADON] ([MAHD])
GO
ALTER TABLE [dbo].[CT_HOADON_LINHKIEN] CHECK CONSTRAINT [FK_CT_HOADO_CT_HOADON_HOADON]
GO
ALTER TABLE [dbo].[CT_HOADON_LINHKIEN]  WITH CHECK ADD  CONSTRAINT [FK_CT_HOADO_CT_HOADON_LINHKIEN] FOREIGN KEY([MALINHKIEN])
REFERENCES [dbo].[LINHKIEN] ([MALINHKIEN])
GO
ALTER TABLE [dbo].[CT_HOADON_LINHKIEN] CHECK CONSTRAINT [FK_CT_HOADO_CT_HOADON_LINHKIEN]
GO
ALTER TABLE [dbo].[CT_HOADON_LINHKIEN]  WITH CHECK ADD  CONSTRAINT [FK_CT_HOADO_CT_HOADON_NHACUNGC] FOREIGN KEY([MANCC])
REFERENCES [dbo].[NHACUNGCAP] ([MANCC])
GO
ALTER TABLE [dbo].[CT_HOADON_LINHKIEN] CHECK CONSTRAINT [FK_CT_HOADO_CT_HOADON_NHACUNGC]
GO
ALTER TABLE [dbo].[Ct_mua_SP]  WITH CHECK ADD  CONSTRAINT [FK_Ct_mua_SP_HOADON] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HOADON] ([MAHD])
GO
ALTER TABLE [dbo].[Ct_mua_SP] CHECK CONSTRAINT [FK_Ct_mua_SP_HOADON]
GO
ALTER TABLE [dbo].[Ct_mua_SP]  WITH CHECK ADD  CONSTRAINT [FK_Ct_mua_SP_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
GO
ALTER TABLE [dbo].[Ct_mua_SP] CHECK CONSTRAINT [FK_Ct_mua_SP_KHACHHANG]
GO
ALTER TABLE [dbo].[CT_NHAP_SP]  WITH CHECK ADD  CONSTRAINT [FK_CT_NHAP__CT_NHAP_S_NHACUNGC] FOREIGN KEY([MANCC])
REFERENCES [dbo].[NHACUNGCAP] ([MANCC])
GO
ALTER TABLE [dbo].[CT_NHAP_SP] CHECK CONSTRAINT [FK_CT_NHAP__CT_NHAP_S_NHACUNGC]
GO
ALTER TABLE [dbo].[CT_NHAP_SP]  WITH CHECK ADD  CONSTRAINT [FK_CT_NHAP__CT_NHAP_S_NHAPHANG] FOREIGN KEY([MANHAP])
REFERENCES [dbo].[NHAPHANG] ([MANHAP])
GO
ALTER TABLE [dbo].[CT_NHAP_SP] CHECK CONSTRAINT [FK_CT_NHAP__CT_NHAP_S_NHAPHANG]
GO
ALTER TABLE [dbo].[CT_NHAP_SP]  WITH CHECK ADD  CONSTRAINT [FK_CT_NHAP__CT_NHAP_S_SANPHAM] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[CT_NHAP_SP] CHECK CONSTRAINT [FK_CT_NHAP__CT_NHAP_S_SANPHAM]
GO
ALTER TABLE [dbo].[DATHANG]  WITH CHECK ADD  CONSTRAINT [FK_DATHANG_CO_THE_DA_KHACHHAN] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
GO
ALTER TABLE [dbo].[DATHANG] CHECK CONSTRAINT [FK_DATHANG_CO_THE_DA_KHACHHAN]
GO
ALTER TABLE [dbo].[DATHANG_SP]  WITH CHECK ADD  CONSTRAINT [FK_DATHANG__DATHANG_S_DATHANG] FOREIGN KEY([MADAT])
REFERENCES [dbo].[DATHANG] ([MADAT])
GO
ALTER TABLE [dbo].[DATHANG_SP] CHECK CONSTRAINT [FK_DATHANG__DATHANG_S_DATHANG]
GO
ALTER TABLE [dbo].[DATHANG_SP]  WITH CHECK ADD  CONSTRAINT [FK_DATHANG__DATHANG_S_SANPHAM] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[DATHANG_SP] CHECK CONSTRAINT [FK_DATHANG__DATHANG_S_SANPHAM]
GO
ALTER TABLE [dbo].[DOITRA]  WITH CHECK ADD  CONSTRAINT [FK_DOITRA_DOI_KHACHHAN] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
GO
ALTER TABLE [dbo].[DOITRA] CHECK CONSTRAINT [FK_DOITRA_DOI_KHACHHAN]
GO
ALTER TABLE [dbo].[DOITRA_SP]  WITH CHECK ADD  CONSTRAINT [FK_DOITRA_S_DOITRA_SP_DOITRA] FOREIGN KEY([MADOITRA])
REFERENCES [dbo].[DOITRA] ([MADOITRA])
GO
ALTER TABLE [dbo].[DOITRA_SP] CHECK CONSTRAINT [FK_DOITRA_S_DOITRA_SP_DOITRA]
GO
ALTER TABLE [dbo].[DOITRA_SP]  WITH CHECK ADD  CONSTRAINT [FK_DOITRA_S_DOITRA_SP_LOIDONGU] FOREIGN KEY([MALOIND])
REFERENCES [dbo].[LOIDONGUOIDUNG] ([MALOIND])
GO
ALTER TABLE [dbo].[DOITRA_SP] CHECK CONSTRAINT [FK_DOITRA_S_DOITRA_SP_LOIDONGU]
GO
ALTER TABLE [dbo].[DOITRA_SP]  WITH CHECK ADD  CONSTRAINT [FK_DOITRA_S_DOITRA_SP_LOIDONHA] FOREIGN KEY([MALOISX])
REFERENCES [dbo].[LOIDONHASX] ([MALOISX])
GO
ALTER TABLE [dbo].[DOITRA_SP] CHECK CONSTRAINT [FK_DOITRA_S_DOITRA_SP_LOIDONHA]
GO
ALTER TABLE [dbo].[DOITRA_SP]  WITH CHECK ADD  CONSTRAINT [FK_DOITRA_S_DOITRA_SP_SANPHAM] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[DOITRA_SP] CHECK CONSTRAINT [FK_DOITRA_S_DOITRA_SP_SANPHAM]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_LOAIHOADON] FOREIGN KEY([MALOAIHD])
REFERENCES [dbo].[LOAIHOADON] ([MALOAIHD])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_LOAIHOADON]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_NHACUNGCAP] FOREIGN KEY([MANCC])
REFERENCES [dbo].[NHACUNGCAP] ([MANCC])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_NHACUNGCAP]
GO
ALTER TABLE [dbo].[KHO]  WITH CHECK ADD  CONSTRAINT [FK_KHO_LINHKIEN] FOREIGN KEY([MALINHKIEN])
REFERENCES [dbo].[LINHKIEN] ([MALINHKIEN])
GO
ALTER TABLE [dbo].[KHO] CHECK CONSTRAINT [FK_KHO_LINHKIEN]
GO
ALTER TABLE [dbo].[KHO]  WITH CHECK ADD  CONSTRAINT [FK_KHO_SANPHAM] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[KHO] CHECK CONSTRAINT [FK_KHO_SANPHAM]
GO
ALTER TABLE [dbo].[KHUYENMAI]  WITH CHECK ADD  CONSTRAINT [FK_KHUYENMA_CT_KM_LK_LINHKIEN] FOREIGN KEY([MALINHKIEN])
REFERENCES [dbo].[LINHKIEN] ([MALINHKIEN])
GO
ALTER TABLE [dbo].[KHUYENMAI] CHECK CONSTRAINT [FK_KHUYENMA_CT_KM_LK_LINHKIEN]
GO
ALTER TABLE [dbo].[KHUYENMAI]  WITH CHECK ADD  CONSTRAINT [FK_KHUYENMA_CT_KM_SP_SANPHAM] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[KHUYENMAI] CHECK CONSTRAINT [FK_KHUYENMA_CT_KM_SP_SANPHAM]
GO
ALTER TABLE [dbo].[NHAPHANG]  WITH CHECK ADD  CONSTRAINT [FK_NHAPHANG_CO_THE_NH_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[NHAPHANG] CHECK CONSTRAINT [FK_NHAPHANG_CO_THE_NH_NHANVIEN]
GO
ALTER TABLE [dbo].[PHANQUYEN]  WITH CHECK ADD  CONSTRAINT [FK_PHANQUYE_PHANQUYEN_MANHINH] FOREIGN KEY([MAMANHINH])
REFERENCES [dbo].[MANHINH] ([MAMANHINH])
GO
ALTER TABLE [dbo].[PHANQUYEN] CHECK CONSTRAINT [FK_PHANQUYE_PHANQUYEN_MANHINH]
GO
ALTER TABLE [dbo].[PHANQUYEN]  WITH CHECK ADD  CONSTRAINT [FK_PHANQUYE_PHANQUYEN_NHOMNGUO] FOREIGN KEY([MANHOM])
REFERENCES [dbo].[NHOMNGUOIDUNG] ([MANHOM])
GO
ALTER TABLE [dbo].[PHANQUYEN] CHECK CONSTRAINT [FK_PHANQUYE_PHANQUYEN_NHOMNGUO]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_THUOC_VE2_LOAISANP] FOREIGN KEY([MALOAI])
REFERENCES [dbo].[LOAISANPHAM] ([MALOAI])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_THUOC_VE2_LOAISANP]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [FK_TAIKHOAN_CO_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [FK_TAIKHOAN_CO_NHANVIEN]
GO
ALTER TABLE [dbo].[TinhTrangTT]  WITH CHECK ADD  CONSTRAINT [FK_TinhTrangTT_NHAPHANG] FOREIGN KEY([MANHAP])
REFERENCES [dbo].[NHAPHANG] ([MANHAP])
GO
ALTER TABLE [dbo].[TinhTrangTT] CHECK CONSTRAINT [FK_TinhTrangTT_NHAPHANG]
GO
ALTER TABLE [dbo].[tk_NND]  WITH CHECK ADD  CONSTRAINT [FK_tk_NND_NHOMNGUOIDUNG] FOREIGN KEY([MANHOM])
REFERENCES [dbo].[NHOMNGUOIDUNG] ([MANHOM])
GO
ALTER TABLE [dbo].[tk_NND] CHECK CONSTRAINT [FK_tk_NND_NHOMNGUOIDUNG]
GO
ALTER TABLE [dbo].[tk_NND]  WITH CHECK ADD  CONSTRAINT [FK_tk_NND_TAIKHOAN] FOREIGN KEY([TENDANGNHAP])
REFERENCES [dbo].[TAIKHOAN] ([TENDANGNHAP])
GO
ALTER TABLE [dbo].[tk_NND] CHECK CONSTRAINT [FK_tk_NND_TAIKHOAN]
GO
