
/****** Object:  Table [dbo].[BaiThi]    Script Date: 9/4/2018 10:09:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiThi](
	[ID_BAITHI] [bigint] IDENTITY(1,1) NOT NULL,
	[ID_DE] [bigint] NOT NULL,
	[ID_DANGKY] [bigint] NOT NULL,
	[Ma_BaiThi] [nvarchar](250) NOT NULL,
	[NgayThi] [datetime] NOT NULL,
	[ThoiGianConLai_BaiThi] [int] NULL,
	[Khac_BaiThi] [nvarchar](250) NULL,
	[HT_BaiThi] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CauHoi]    Script Date: 9/4/2018 10:09:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CauHoi](
	[ID_CH] [bigint] IDENTITY(1,1) NOT NULL,
	[ID_LoaiCH] [bigint] NOT NULL,
	[ID_DeMuc] [bigint] NOT NULL,
	[NoiDung_CauHoi] [text] NOT NULL,
	[CapDo] [int] NOT NULL,
	[TrangThaiTron_CauHoi] [bit] NOT NULL,
	[HT_CauHoi] [bit] NOT NULL,
	[Diem_CauHoi] [float] NOT NULL,
	[NguoiTao_CauHoi] [nvarchar](250) NOT NULL,
	[NgayTao_CauHoi] [datetime] NOT NULL,
	[NguoiCN_CauHoi] [nvarchar](250) NULL,
	[NgayCN_CauHoi] [datetime] NULL,
	[Khac_CauHoi] [nvarchar](250) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTiet_BaiThi]    Script Date: 9/4/2018 10:09:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTiet_BaiThi](
	[ID_CTBAITHI] [bigint] IDENTITY(1,1) NOT NULL,
	[ID_BAITHI] [bigint] NOT NULL,
	[ID_CauHoi] [bigint] NOT NULL,
	[ThiSinh_LuaChon] [nvarchar](350) NULL,
	[HT_ChiTiet_BaiThi] [bit] NOT NULL,
	[Diem_BaiThi] [float] NOT NULL,
	[ThuTu_CH] [int] NOT NULL,
	[Khac_CTBT] [nvarchar](250) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTiet_DeThi]    Script Date: 9/4/2018 10:09:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTiet_DeThi](
	[ID_CTDT] [bigint] IDENTITY(1,1) NOT NULL,
	[ID_DE] [bigint] NOT NULL,
	[ID_CH] [bigint] NOT NULL,
	[ThoiGianConLai] [int] NOT NULL,
	[ThuTu_DeThi] [int] NOT NULL,
	[Khac_ChiTiet_DeThi] [nvarchar](250) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DangKy]    Script Date: 9/4/2018 10:09:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangKy](
	[ID_DANGKY] [bigint] IDENTITY(1,1) NOT NULL,
	[ID_TK] [bigint] NOT NULL,
	[ID_MonHoc] [bigint] NOT NULL,
	[Ngay_DangKy] [datetime] NOT NULL,
	[CamThi] [bit] NOT NULL,
	[NguoiCN_DangKy] [nvarchar](250) NULL,
	[NgayCN_DangKy] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhSach_DeThi]    Script Date: 9/4/2018 10:09:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhSach_DeThi](
	[ID_DE] [bigint] IDENTITY(1,1) NOT NULL,
	[ID_MonHoc] [bigint] NOT NULL,
	[Ma_DeThi] [nvarchar](30) NOT NULL,
	[Ten_DeThi] [nvarchar](50) NOT NULL,
	[TrangThai_DeThi] [bit] NOT NULL,
	[TrangThai_Tron_DeThi] [bit] NOT NULL,
	[HT_DeThi] [bit] NOT NULL,
	[ThoiGianLamBai] [int] NOT NULL,
	[NgayBatDau_SuDung] [datetime] NOT NULL,
	[NgayKetThucDuKien] [datetime] NOT NULL,
	[NgayKetThucThatTe] [datetime] NULL,
	[Khac_DeThi] [nvarchar](300) NULL,
	[NguoiTao_DeThi] [nvarchar](250) NOT NULL,
	[NgayTao_DeThi] [datetime] NOT NULL,
	[NguoiCN_DeThi] [nvarchar](250) NULL,
	[NgayCN_DeThi] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DeMuc]    Script Date: 9/4/2018 10:09:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeMuc](
	[ID_DeMuc] [bigint] IDENTITY(1,1) NOT NULL,
	[ID_MonHoc] [bigint] NOT NULL,
	[Ma_DeMuc] [nvarchar](30) NOT NULL,
	[Ten_DeMuc] [nvarchar](100) NOT NULL,
	[HT_DeMuc] [bit] NOT NULL,
	[Khac_DeMuc] [nvarchar](250) NULL,
	[NguoiTao_DM] [nvarchar](250) NOT NULL,
	[NgayTao_DM] [datetime] NOT NULL,
	[NguoiCN_DM] [nvarchar](250) NULL,
	[NgayCN_DM] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GiangDay]    Script Date: 9/4/2018 10:09:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiangDay](
	[ID_GIANGDAY] [bigint] IDENTITY(1,1) NOT NULL,
	[ID_GV] [bigint] NOT NULL,
	[ID_MonHoc] [bigint] NOT NULL,
	[NgayBatDau_GiangDay] [datetime] NOT NULL,
	[NgayKetThuc_GiangDay] [datetime] NULL,
	[NgayKetThuc_GiangDay_ThucTe] [datetime] NULL,
	[NguoiCN_GiangDay] [nvarchar](250) NULL,
	[NgayCN_GiangDay] [datetime] NULL,
	[Khac_GiangDay] [nvarchar](250) NULL,
	[HT_GiangDay] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 9/4/2018 10:09:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[ID_GV] [bigint] IDENTITY(1,1) NOT NULL,
	[MADN_GV] [nvarchar](250) NOT NULL,
	[Ho_GV] [nvarchar](250) NOT NULL,
	[Ten_GV] [nvarchar](250) NOT NULL,
	[MatKhau_GV] [nvarchar](250) NOT NULL,
	[Email_GV] [nvarchar](250) NOT NULL,
	[DienThoai_GV] [nvarchar](20) NOT NULL,
	[DiaChi_GV] [nvarchar](200) NOT NULL,
	[NgaySinh_GV] [date] NOT NULL,
	[GioiTinh_GV] [nvarchar](10) NOT NULL,
	[HT_GV] [bit] NOT NULL,
	[NguoiTao_GV] [nvarchar](250) NOT NULL,
	[NgayTao_GV] [datetime] NOT NULL,
	[NguoiCN_GV] [nvarchar](250) NULL,
	[NgayCN_GV] [datetime] NULL,
	[Khac_GV] [nvarchar](300) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LichSu_CH]    Script Date: 9/4/2018 10:09:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSu_CH](
	[ID_LS_CH] [bigint] IDENTITY(1,1) NOT NULL,
	[ID_CH] [bigint] NOT NULL,
	[MoTa_HanhDong] [nvarchar](10) NOT NULL,
	[NoiDungCN_LS_CH] [text] NOT NULL,
	[NoiDung_Cu_LS_CH] [text] NOT NULL,
	[NoiDung_Moi_LS_CH] [text] NOT NULL,
	[DiemCH_Cu] [float] NOT NULL,
	[DiemCH_Moi] [float] NOT NULL,
	[CapDoCH_Cu] [int] NOT NULL,
	[CapDoCH_Moi] [int] NOT NULL,
	[NguoiCN_LS_CH] [nvarchar](250) NOT NULL,
	[NgayCN_LS_CH] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LichSu_LC]    Script Date: 9/4/2018 10:09:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSu_LC](
	[ID_LS_LC] [bigint] IDENTITY(1,1) NOT NULL,
	[ID_LUACHON] [bigint] NOT NULL,
	[MoTa_LS_LC] [nvarchar](10) NOT NULL,
	[NoiDungCN_LS_LC] [text] NOT NULL,
	[NoiDungMoi_LS_LC] [text] NULL,
	[NoiDungCu_LS_LC] [text] NULL,
	[NguoiCN_LS_LC] [nvarchar](250) NOT NULL,
	[Ngay_LS_LC] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Loai_CH]    Script Date: 9/4/2018 10:09:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai_CH](
	[ID_LoaiCH] [bigint] IDENTITY(1,1) NOT NULL,
	[MaLoai_CH] [nvarchar](250) NOT NULL,
	[TenLoai_CH] [nvarchar](300) NULL,
	[HT_Loai] [bit] NOT NULL,
	[Khac_LCH] [nvarchar](250) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LuaChon]    Script Date: 9/4/2018 10:09:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LuaChon](
	[ID_LUACHON] [bigint] IDENTITY(1,1) NOT NULL,
	[ID_CH] [bigint] NOT NULL,
	[NoiDung_LuaChon] [text] NOT NULL,
	[DapAn] [bit] NOT NULL,
	[HT_LuaChon] [bit] NOT NULL,
	[NguoiTao_LuaChon] [nvarchar](250) NOT NULL,
	[NgayTao_LuaChon] [datetime] NOT NULL,
	[NguoiCN_LuaChon] [nvarchar](250) NULL,
	[NgayCN_LuaChon] [datetime] NULL,
	[Khac_LuaChon] [nvarchar](250) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ManHinh]    Script Date: 9/4/2018 10:09:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManHinh](
	[ID_ManHinh] [bigint] IDENTITY(1,1) NOT NULL,
	[MaManHinh] [nvarchar](250) NOT NULL,
	[TenManHInh] [nvarchar](100) NULL,
	[HT_ManHinh] [bit] NULL,
	[MoTaManHinh] [text] NOT NULL,
	[URL] [nvarchar](300) NOT NULL,
	[Khac_MaHinh] [nvarchar](250) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 9/4/2018 10:09:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[ID_MonHoc] [bigint] IDENTITY(1,1) NOT NULL,
	[Ma_MonHoc] [nvarchar](30) NOT NULL,
	[TenMonHoc] [nvarchar](100) NOT NULL,
	[HT_MonHoc] [bit] NOT NULL,
	[NguoiTao_MonHoc] [nvarchar](250) NOT NULL,
	[NgayTao_MonHoc] [datetime] NOT NULL,
	[NguoiCN_MonHoc] [nvarchar](250) NULL,
	[NgayCN_MonHoc] [datetime] NULL,
	[Khac_MonHoc] [nvarchar](250) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 9/4/2018 10:09:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[ID_PhanQuyen] [bigint] IDENTITY(1,1) NOT NULL,
	[ID_ManHinh] [bigint] NOT NULL,
	[ID_GV] [bigint] NOT NULL,
	[CoQuyen] [bit] NOT NULL,
	[HT_PQ] [bit] NOT NULL,
	[NgayBD_PQ] [datetime] NOT NULL,
	[NgayKT_PQ] [datetime] NOT NULL,
	[NgayKT_TT] [datetime] NULL,
	[NguoiTao_PQ] [nvarchar](250) NOT NULL,
	[NgayTao_PQ] [datetime] NOT NULL,
	[NguoiCN_PQ] [nvarchar](250) NULL,
	[NgayCN_PQ] [datetime] NULL,
	[Khac_PQ] [nvarchar](250) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThiSinh]    Script Date: 9/4/2018 10:09:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThiSinh](
	[ID_TK] [bigint] IDENTITY(1,1) NOT NULL,
	[MADN_TS] [nvarchar](250) NOT NULL,
	[Ho_ThiSinh] [nvarchar](250) NOT NULL,
	[Ten_ThiSinh] [nvarchar](250) NOT NULL,
	[MatKhau_ThiSinh] [nvarchar](200) NOT NULL,
	[GioiTinh_ThiSinh] [nvarchar](10) NOT NULL,
	[Email_ThiSinh] [nvarchar](250) NOT NULL,
	[DienThoai_ThiSinh] [nvarchar](20) NOT NULL,
	[DiaChi_ThiSinh] [nvarchar](300) NOT NULL,
	[NgaySinh_ThiSinh] [date] NOT NULL,
	[HT_ThiSinh] [bit] NOT NULL,
	[NguoiTao_ThiSinh] [nvarchar](250) NOT NULL,
	[NgayTao_ThiSinh] [datetime] NOT NULL,
	[NguoiCN_ThiSinh] [nvarchar](250) NULL,
	[NgayCN_ThiSinh] [datetime] NULL,
	[Khac_ThiSinh] [nvarchar](300) NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BaiThi] ON 

INSERT [dbo].[BaiThi] ([ID_BAITHI], [ID_DE], [ID_DANGKY], [Ma_BaiThi], [NgayThi], [ThoiGianConLai_BaiThi], [Khac_BaiThi], [HT_BaiThi]) VALUES (1, 19, 2, N'00A848KWUQ74', CAST(N'2017-07-20 04:17:44.190' AS DateTime), 145, N'WCC04WA7S7', 1)
INSERT [dbo].[BaiThi] ([ID_BAITHI], [ID_DE], [ID_DANGKY], [Ma_BaiThi], [NgayThi], [ThoiGianConLai_BaiThi], [Khac_BaiThi], [HT_BaiThi]) VALUES (2, 14, 13, N'T3NO40JEX3LQ8SI15W4575I527T', CAST(N'2018-03-30 22:37:18.590' AS DateTime), 50, N'0', 1)
INSERT [dbo].[BaiThi] ([ID_BAITHI], [ID_DE], [ID_DANGKY], [Ma_BaiThi], [NgayThi], [ThoiGianConLai_BaiThi], [Khac_BaiThi], [HT_BaiThi]) VALUES (3, 6, 11, N'R', CAST(N'2016-12-12 21:15:35.700' AS DateTime), 31, N'J6O39DFL85', 1)
INSERT [dbo].[BaiThi] ([ID_BAITHI], [ID_DE], [ID_DANGKY], [Ma_BaiThi], [NgayThi], [ThoiGianConLai_BaiThi], [Khac_BaiThi], [HT_BaiThi]) VALUES (4, 12, 11, N'7', CAST(N'2015-05-15 16:13:52.920' AS DateTime), 149, N'PU7', 0)
INSERT [dbo].[BaiThi] ([ID_BAITHI], [ID_DE], [ID_DANGKY], [Ma_BaiThi], [NgayThi], [ThoiGianConLai_BaiThi], [Khac_BaiThi], [HT_BaiThi]) VALUES (5, 13, 12, N'D76X', CAST(N'2015-09-24 18:39:12.490' AS DateTime), 32, N'7823H9ANM99OGB57T081J041U61', 0)
INSERT [dbo].[BaiThi] ([ID_BAITHI], [ID_DE], [ID_DANGKY], [Ma_BaiThi], [NgayThi], [ThoiGianConLai_BaiThi], [Khac_BaiThi], [HT_BaiThi]) VALUES (6, 19, 9, N'E9DL2Q507C02627871M5U1', CAST(N'2017-05-11 00:33:26.350' AS DateTime), 73, N'102E0EV1F47A95B5BNIL10U9M517OUT7P4O59X7M', 1)
INSERT [dbo].[BaiThi] ([ID_BAITHI], [ID_DE], [ID_DANGKY], [Ma_BaiThi], [NgayThi], [ThoiGianConLai_BaiThi], [Khac_BaiThi], [HT_BaiThi]) VALUES (7, 1, 8, N'V6N9SG2NVDS533QY504HS12T6S09DCX7JHN4N3U1P14UE720Y0KCZD65Y4N545K4X0R7Y67CRQ', CAST(N'2018-06-24 16:29:16.770' AS DateTime), 99, N'2H321E6XU287N8G8H7379871K9B7192931C56ZADG818DQ16QY1OU1GE6YL0K5B08C75Z7903Q1P3RMQK', 1)
INSERT [dbo].[BaiThi] ([ID_BAITHI], [ID_DE], [ID_DANGKY], [Ma_BaiThi], [NgayThi], [ThoiGianConLai_BaiThi], [Khac_BaiThi], [HT_BaiThi]) VALUES (8, 10, 10, N'375M54', CAST(N'2018-09-04 07:59:43.110' AS DateTime), 63, N'1N721N62J', 0)
INSERT [dbo].[BaiThi] ([ID_BAITHI], [ID_DE], [ID_DANGKY], [Ma_BaiThi], [NgayThi], [ThoiGianConLai_BaiThi], [Khac_BaiThi], [HT_BaiThi]) VALUES (9, 6, 3, N'0E85J6W', CAST(N'2017-08-02 23:24:54.470' AS DateTime), 133, N'R011H', 1)
SET IDENTITY_INSERT [dbo].[BaiThi] OFF
SET IDENTITY_INSERT [dbo].[CauHoi] ON 

INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (1, 14, 13, N'11638', 1, 1, 0, 63720415007.96, N'14', CAST(N'2015-05-10 08:56:28.220' AS DateTime), N'13', CAST(N'2017-09-09 12:04:54.050' AS DateTime), N'7782C8I43ZWS95AOEX9BT4SCUB3L183RVH4S728N9')
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (2, 20, 3, N'86148', 1, 0, 0, 25816206083.41, N'20', CAST(N'2017-11-28 00:24:34.540' AS DateTime), N'3', CAST(N'2015-04-17 08:46:13.650' AS DateTime), N'C8Q0U4MC7NKW0YQV0U43GV82IUM')
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (3, 1, 18, N'52432', 6, 0, 0, -476.53, N'1', CAST(N'2017-01-05 03:47:03.940' AS DateTime), N'18', CAST(N'2016-10-29 13:40:53.630' AS DateTime), N'88XI4E5CAG66579F0DLO0')
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (4, 18, 2, N'37879', 3, 1, 1, 64284420908.61, N'18', CAST(N'2015-10-19 09:56:16.080' AS DateTime), N'2', CAST(N'2016-12-19 06:13:49.490' AS DateTime), NULL)
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (5, 14, 20, N'87267', 8, 0, 1, 85232869560.37, N'14', CAST(N'2018-02-09 19:02:07.360' AS DateTime), N'20', CAST(N'2015-04-14 00:46:46.530' AS DateTime), NULL)
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (6, 14, 16, N'24206', 8, 1, 1, 26660444458.83, N'14', CAST(N'2017-04-21 15:26:40.620' AS DateTime), N'16', CAST(N'2015-09-16 12:24:00.770' AS DateTime), NULL)
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (7, 3, 10, N'22554', 6, 1, 0, 17125569442.97, N'3', CAST(N'2015-04-15 08:46:23.320' AS DateTime), N'10', CAST(N'2015-11-30 03:55:05.180' AS DateTime), NULL)
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (8, 9, 8, N'93854', 1, 0, 1, 75475150807.22, N'9', CAST(N'2016-12-17 06:08:49.020' AS DateTime), N'8', CAST(N'2016-10-17 00:49:59.880' AS DateTime), NULL)
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (9, 12, 9, N'99298', 2, 1, 1, 30890666736.5, N'12', CAST(N'2015-10-14 22:02:50.090' AS DateTime), N'9', CAST(N'2016-01-31 11:45:58.280' AS DateTime), NULL)
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (10, 20, 7, N'74883', 7, 1, 0, -31481835538.41, N'20', CAST(N'2015-12-28 01:01:50.650' AS DateTime), N'7', CAST(N'2018-08-17 18:37:28.170' AS DateTime), NULL)
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (11, 8, 9, N'39508', 8, 0, 1, 6.95, N'8', CAST(N'2016-03-21 03:34:53.870' AS DateTime), N'9', CAST(N'2016-07-03 00:17:44.100' AS DateTime), NULL)
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (12, 4, 3, N'14355', 0, 0, 0, -52841148533.84, N'4', CAST(N'2016-08-16 12:16:41.960' AS DateTime), N'3', CAST(N'2018-05-29 05:02:09.620' AS DateTime), N'82DY04B19TXH96W4A')
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (13, 1, 7, N'12252', 4, 0, 1, 41162043428.51, N'1', CAST(N'2018-07-19 04:27:50.060' AS DateTime), N'7', CAST(N'2017-04-04 10:52:18.490' AS DateTime), NULL)
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (14, 17, 1, N'78280', 7, 1, 0, -71624296905.23, N'17', CAST(N'2015-10-11 23:54:36.820' AS DateTime), N'1', CAST(N'2018-05-23 22:09:42.100' AS DateTime), NULL)
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (15, 19, 20, N'05228', 3, 1, 0, -18786669647.42, N'19', CAST(N'2015-03-18 10:01:39.020' AS DateTime), N'20', CAST(N'2017-07-12 15:41:40.610' AS DateTime), NULL)
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (16, 13, 9, N'46921', 9, 0, 0, 10596595362.36, N'13', CAST(N'2017-09-07 00:23:53.940' AS DateTime), N'9', CAST(N'2015-10-21 07:39:51.220' AS DateTime), NULL)
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (17, 6, 2, N'19089', 0, 1, 0, -8319863012.2, N'6', CAST(N'2017-05-11 20:51:00.900' AS DateTime), N'2', CAST(N'2016-01-15 16:28:03.580' AS DateTime), NULL)
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (18, 8, 14, N'10306', 3, 0, 1, -3631.34, N'8', CAST(N'2015-03-22 18:09:17.220' AS DateTime), N'14', CAST(N'2017-12-27 19:18:52.350' AS DateTime), NULL)
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (19, 3, 19, N'90143', 3, 0, 0, -43755216836.04, N'3', CAST(N'2015-01-05 12:02:31.700' AS DateTime), N'19', CAST(N'2015-09-18 10:07:27.170' AS DateTime), NULL)
INSERT [dbo].[CauHoi] ([ID_CH], [ID_LoaiCH], [ID_DeMuc], [NoiDung_CauHoi], [CapDo], [TrangThaiTron_CauHoi], [HT_CauHoi], [Diem_CauHoi], [NguoiTao_CauHoi], [NgayTao_CauHoi], [NguoiCN_CauHoi], [NgayCN_CauHoi], [Khac_CauHoi]) VALUES (20, 13, 4, N'66686', 8, 1, 0, 27808287514.38, N'13', CAST(N'2016-06-21 21:09:40.050' AS DateTime), N'4', CAST(N'2015-09-01 00:50:12.770' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[CauHoi] OFF
SET IDENTITY_INSERT [dbo].[ChiTiet_BaiThi] ON 

INSERT [dbo].[ChiTiet_BaiThi] ([ID_CTBAITHI], [ID_BAITHI], [ID_CauHoi], [ThiSinh_LuaChon], [HT_ChiTiet_BaiThi], [Diem_BaiThi], [ThuTu_CH], [Khac_CTBT]) VALUES (1, 4, 16, N'LQYL881P3ZSNT396Q59C29798MDL2V9L92J7RGW528B6D0713', 0, 0.3, 60, N'K18TQ71R127Y96A0CED')
INSERT [dbo].[ChiTiet_BaiThi] ([ID_CTBAITHI], [ID_BAITHI], [ID_CauHoi], [ThiSinh_LuaChon], [HT_ChiTiet_BaiThi], [Diem_BaiThi], [ThuTu_CH], [Khac_CTBT]) VALUES (2, 2, 4, N'4H', 0, 0.2, 25, NULL)
INSERT [dbo].[ChiTiet_BaiThi] ([ID_CTBAITHI], [ID_BAITHI], [ID_CauHoi], [ThiSinh_LuaChon], [HT_ChiTiet_BaiThi], [Diem_BaiThi], [ThuTu_CH], [Khac_CTBT]) VALUES (3, 1, 6, N'C3S3F416651XCCD5GLX30948D9AX6T', 0, 0, 69, N'6HJAJ53')
INSERT [dbo].[ChiTiet_BaiThi] ([ID_CTBAITHI], [ID_BAITHI], [ID_CauHoi], [ThiSinh_LuaChon], [HT_ChiTiet_BaiThi], [Diem_BaiThi], [ThuTu_CH], [Khac_CTBT]) VALUES (4, 3, 3, N'Q2D16150MEGZTJ5Z2RLH1U1CY9MLQ6A7', 0, 0, 59, N'R4K560IO17I9QA77PD56R3IKV7PC6AW')
INSERT [dbo].[ChiTiet_BaiThi] ([ID_CTBAITHI], [ID_BAITHI], [ID_CauHoi], [ThiSinh_LuaChon], [HT_ChiTiet_BaiThi], [Diem_BaiThi], [ThuTu_CH], [Khac_CTBT]) VALUES (5, 8, 8, N'F1J816R2O1Z2X1EXGIN1I62B129PWJ93K3543V28CSG2L62A', 0, 0.2, 126, N'4J')
INSERT [dbo].[ChiTiet_BaiThi] ([ID_CTBAITHI], [ID_BAITHI], [ID_CauHoi], [ThiSinh_LuaChon], [HT_ChiTiet_BaiThi], [Diem_BaiThi], [ThuTu_CH], [Khac_CTBT]) VALUES (6, 4, 5, N'75GMD5207D8I46091550TPQT0OP5Q4K6M8659Z5X9B', 0, 0, 112, N'TZ72061823453S5MU64S1LO2MO7P28012866TRI74EG96772J')
INSERT [dbo].[ChiTiet_BaiThi] ([ID_CTBAITHI], [ID_BAITHI], [ID_CauHoi], [ThiSinh_LuaChon], [HT_ChiTiet_BaiThi], [Diem_BaiThi], [ThuTu_CH], [Khac_CTBT]) VALUES (7, 4, 3, N'LA30754R05PLY3YPT6XDW722', 0, 0.1, 9, N'6087V19')
INSERT [dbo].[ChiTiet_BaiThi] ([ID_CTBAITHI], [ID_BAITHI], [ID_CauHoi], [ThiSinh_LuaChon], [HT_ChiTiet_BaiThi], [Diem_BaiThi], [ThuTu_CH], [Khac_CTBT]) VALUES (8, 8, 5, N'AS1MN4DEW0OO4C12C27A8YL89Y2U1619QRO83Q8V5S5Y0', 1, 0.1, 127, N'8NVK840093RGXX93QS970Z2')
INSERT [dbo].[ChiTiet_BaiThi] ([ID_CTBAITHI], [ID_BAITHI], [ID_CauHoi], [ThiSinh_LuaChon], [HT_ChiTiet_BaiThi], [Diem_BaiThi], [ThuTu_CH], [Khac_CTBT]) VALUES (9, 1, 16, N'Q02C1815MIM1PB6', 0, 0, 139, N'03H6WTPIE734RZ9E94J4G26SAW')
INSERT [dbo].[ChiTiet_BaiThi] ([ID_CTBAITHI], [ID_BAITHI], [ID_CauHoi], [ThiSinh_LuaChon], [HT_ChiTiet_BaiThi], [Diem_BaiThi], [ThuTu_CH], [Khac_CTBT]) VALUES (10, 1, 2, NULL, 1, 0, 44, N'51D256LF2G6')
SET IDENTITY_INSERT [dbo].[ChiTiet_BaiThi] OFF
SET IDENTITY_INSERT [dbo].[ChiTiet_DeThi] ON 

INSERT [dbo].[ChiTiet_DeThi] ([ID_CTDT], [ID_DE], [ID_CH], [ThoiGianConLai], [ThuTu_DeThi], [Khac_ChiTiet_DeThi]) VALUES (1, 3, 3, 140, 126, N'1ZP9U3')
INSERT [dbo].[ChiTiet_DeThi] ([ID_CTDT], [ID_DE], [ID_CH], [ThoiGianConLai], [ThuTu_DeThi], [Khac_ChiTiet_DeThi]) VALUES (2, 19, 7, 45, 9, N'B3F1R8JR9K8X09X0623723033L629L3W63C26G8ZY369VZ66VZSF0012P')
INSERT [dbo].[ChiTiet_DeThi] ([ID_CTDT], [ID_DE], [ID_CH], [ThoiGianConLai], [ThuTu_DeThi], [Khac_ChiTiet_DeThi]) VALUES (3, 12, 1, 34, 139, N'5MI037QU262BR63R3H')
INSERT [dbo].[ChiTiet_DeThi] ([ID_CTDT], [ID_DE], [ID_CH], [ThoiGianConLai], [ThuTu_DeThi], [Khac_ChiTiet_DeThi]) VALUES (4, 18, 9, 102, 25, NULL)
INSERT [dbo].[ChiTiet_DeThi] ([ID_CTDT], [ID_DE], [ID_CH], [ThoiGianConLai], [ThuTu_DeThi], [Khac_ChiTiet_DeThi]) VALUES (5, 2, 8, 55, 59, N'OK2XVQX1ULF3457080SR5RBK38B9425ORV707D43')
INSERT [dbo].[ChiTiet_DeThi] ([ID_CTDT], [ID_DE], [ID_CH], [ThoiGianConLai], [ThuTu_DeThi], [Khac_ChiTiet_DeThi]) VALUES (6, 3, 13, 54, 112, N'JMUR83F7D528ZJ3F21J99F5GBAI5VRZM')
INSERT [dbo].[ChiTiet_DeThi] ([ID_CTDT], [ID_DE], [ID_CH], [ThoiGianConLai], [ThuTu_DeThi], [Khac_ChiTiet_DeThi]) VALUES (7, 14, 14, 149, 127, N'88U4S9')
INSERT [dbo].[ChiTiet_DeThi] ([ID_CTDT], [ID_DE], [ID_CH], [ThoiGianConLai], [ThuTu_DeThi], [Khac_ChiTiet_DeThi]) VALUES (8, 4, 15, 26, 44, N'E4ZA38IYGQM9YDQ3V90T50U204MFOFL13ZBK9F9MNB9')
INSERT [dbo].[ChiTiet_DeThi] ([ID_CTDT], [ID_DE], [ID_CH], [ThoiGianConLai], [ThuTu_DeThi], [Khac_ChiTiet_DeThi]) VALUES (9, 9, 2, 74, 69, N'2WBM002OFY0I75769RPRJJT5LHB84Q8SYBZ4DUT78NJ2E')
INSERT [dbo].[ChiTiet_DeThi] ([ID_CTDT], [ID_DE], [ID_CH], [ThoiGianConLai], [ThuTu_DeThi], [Khac_ChiTiet_DeThi]) VALUES (10, 1, 11, 21, 60, N'Y6Y92780WI72CG85PCU136667Z85LG1577945RO6880N2T4102Q186LR5709LM55H2WP96AK37BZ4JA9R7ZH789FU8SK8856MVT87P485ETQSN9UT2A3J4U6P34L26N14J4W9DD73935PZK328D571BDS46B0V885FX1LA')
SET IDENTITY_INSERT [dbo].[ChiTiet_DeThi] OFF
SET IDENTITY_INSERT [dbo].[DangKy] ON 

INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy]) VALUES (1, 10, 8, CAST(N'2016-10-19 01:49:21.660' AS DateTime), 0, N'10', CAST(N'2015-06-17 04:57:48.000' AS DateTime))
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy]) VALUES (2, 10, 1, CAST(N'2017-01-04 11:49:36.260' AS DateTime), 0, N'10', CAST(N'2016-01-28 09:11:47.880' AS DateTime))
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy]) VALUES (3, 11, 6, CAST(N'2016-07-28 09:03:53.980' AS DateTime), 0, N'11', CAST(N'2016-12-23 11:10:18.020' AS DateTime))
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy]) VALUES (4, 8, 1, CAST(N'2017-12-21 14:20:32.630' AS DateTime), 0, N'8', CAST(N'2016-08-13 00:51:26.050' AS DateTime))
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy]) VALUES (5, 15, 7, CAST(N'2015-03-22 10:37:10.260' AS DateTime), 0, N'15', CAST(N'2015-07-23 11:30:57.390' AS DateTime))
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy]) VALUES (6, 15, 6, CAST(N'2016-11-12 02:44:48.510' AS DateTime), 1, N'15', CAST(N'2017-03-04 11:04:38.160' AS DateTime))
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy]) VALUES (7, 17, 10, CAST(N'2015-09-18 18:07:33.680' AS DateTime), 1, N'17', CAST(N'2017-08-31 05:03:59.450' AS DateTime))
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy]) VALUES (8, 15, 10, CAST(N'2016-04-24 09:24:52.690' AS DateTime), 1, N'15', CAST(N'2015-06-13 19:19:45.280' AS DateTime))
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy]) VALUES (9, 19, 2, CAST(N'2016-06-21 14:01:48.780' AS DateTime), 1, N'19', CAST(N'2016-03-30 13:47:17.000' AS DateTime))
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy]) VALUES (10, 14, 2, CAST(N'2018-06-02 02:47:07.950' AS DateTime), 0, N'14', CAST(N'2017-07-29 02:10:43.330' AS DateTime))
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy]) VALUES (11, 1, 10, CAST(N'2017-02-24 15:34:11.610' AS DateTime), 0, N'1', CAST(N'2017-01-01 01:37:39.040' AS DateTime))
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy]) VALUES (12, 16, 6, CAST(N'2015-07-10 18:01:14.610' AS DateTime), 1, N'16', CAST(N'2016-02-25 13:21:07.680' AS DateTime))
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy]) VALUES (13, 13, 6, CAST(N'2017-02-27 12:20:07.030' AS DateTime), 0, N'13', CAST(N'2016-07-09 08:23:36.190' AS DateTime))
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy]) VALUES (14, 11, 5, CAST(N'2017-04-25 10:26:54.510' AS DateTime), 0, N'11', CAST(N'2016-12-26 21:32:59.290' AS DateTime))
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy]) VALUES (15, 1, 7, CAST(N'2015-12-19 01:31:27.490' AS DateTime), 0, N'1', CAST(N'2015-07-29 01:35:11.300' AS DateTime))
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy]) VALUES (16, 1, 3, CAST(N'2015-05-03 08:52:22.310' AS DateTime), 1, N'1', CAST(N'2017-07-14 18:32:52.240' AS DateTime))
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy]) VALUES (17, 1, 3, CAST(N'2018-05-10 07:50:08.860' AS DateTime), 1, N'1', CAST(N'2016-12-14 04:15:25.590' AS DateTime))
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy]) VALUES (18, 2, 8, CAST(N'2018-05-11 04:19:21.870' AS DateTime), 1, N'2', CAST(N'2016-02-13 16:37:27.330' AS DateTime))
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy]) VALUES (19, 10, 8, CAST(N'2018-02-23 21:42:55.410' AS DateTime), 0, N'10', CAST(N'2018-07-29 16:03:50.650' AS DateTime))
INSERT [dbo].[DangKy] ([ID_DANGKY], [ID_TK], [ID_MonHoc], [Ngay_DangKy], [CamThi], [NguoiCN_DangKy], [NgayCN_DangKy]) VALUES (20, 12, 4, CAST(N'2017-10-12 23:20:35.430' AS DateTime), 1, N'12', CAST(N'2017-10-22 14:08:21.890' AS DateTime))
SET IDENTITY_INSERT [dbo].[DangKy] OFF
SET IDENTITY_INSERT [dbo].[DanhSach_DeThi] ON 

INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [Khac_DeThi], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi]) VALUES (1, 5, N'8UIAM3AR', N'7UF5D851DK746KNPDJN7', 0, 0, 1, 16, CAST(N'2018-04-13 06:28:04.100' AS DateTime), CAST(N'2018-04-07 21:28:45.030' AS DateTime), CAST(N'2017-06-24 19:30:26.490' AS DateTime), NULL, N'4', CAST(N'2016-09-10 17:32:07.170' AS DateTime), N'8', CAST(N'2015-05-09 20:40:33.050' AS DateTime))
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [Khac_DeThi], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi]) VALUES (2, 2, N'ODW2GT55', N'4QR3F1LIVI81BQ8GF2EY2S6YFRML83Y83QH', 1, 0, 0, 20, CAST(N'2018-01-05 11:02:14.120' AS DateTime), CAST(N'2017-07-14 04:13:33.590' AS DateTime), CAST(N'2017-09-04 12:49:29.420' AS DateTime), N'GD5MALZ3H1943652', N'9', CAST(N'2015-05-31 13:04:49.400' AS DateTime), N'12', CAST(N'2017-05-04 14:36:45.370' AS DateTime))
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [Khac_DeThi], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi]) VALUES (3, 3, N'XRH082RD', N'R6VW905K87QQ5APR1896N763LG7GW25QAYT', 1, 0, 0, 34, CAST(N'2017-11-28 00:11:55.920' AS DateTime), CAST(N'2015-03-16 06:50:24.380' AS DateTime), CAST(N'2017-12-21 06:43:23.960' AS DateTime), NULL, N'14', CAST(N'2017-05-18 08:22:22.450' AS DateTime), N'7', CAST(N'2015-10-02 21:38:31.360' AS DateTime))
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [Khac_DeThi], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi]) VALUES (4, 6, N'A02Z6JAQ', N'877', 1, 1, 0, 2, CAST(N'2016-09-27 19:12:21.810' AS DateTime), CAST(N'2016-10-04 11:30:22.640' AS DateTime), CAST(N'2015-06-14 15:56:09.360' AS DateTime), N'D516QOH', N'8', CAST(N'2017-12-24 18:27:27.660' AS DateTime), N'11', CAST(N'2017-05-08 14:18:06.260' AS DateTime))
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [Khac_DeThi], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi]) VALUES (5, 2, N'222YZCTX', N'KU305P75M2U732', 0, 1, 0, 36, CAST(N'2017-09-25 05:47:17.990' AS DateTime), CAST(N'2017-09-19 08:26:17.370' AS DateTime), NULL, NULL, N'3', CAST(N'2018-04-07 19:51:04.450' AS DateTime), N'13', CAST(N'2017-12-29 03:20:05.500' AS DateTime))
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [Khac_DeThi], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi]) VALUES (6, 8, N'F9717I1I', N'XJ8QD002EK770', 1, 0, 0, 1, CAST(N'2016-08-06 12:15:29.270' AS DateTime), CAST(N'2017-10-07 22:51:50.480' AS DateTime), NULL, NULL, N'20', CAST(N'2018-06-14 13:14:58.020' AS DateTime), N'17', CAST(N'2017-02-21 23:31:55.070' AS DateTime))
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [Khac_DeThi], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi]) VALUES (7, 5, N'0W3U9224', N'S4W3917941KL00865Q444G6O4RQESL1VCJ2', 1, 0, 1, 139, CAST(N'2018-07-11 16:10:37.160' AS DateTime), CAST(N'2016-10-03 09:01:57.950' AS DateTime), CAST(N'2015-05-08 22:57:34.030' AS DateTime), NULL, N'4', CAST(N'2017-03-15 14:42:28.080' AS DateTime), N'3', CAST(N'2017-11-02 13:02:41.650' AS DateTime))
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [Khac_DeThi], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi]) VALUES (8, 5, N'1Y2ZK1W9', N'CR', 1, 0, 1, 40, CAST(N'2017-03-07 04:00:57.980' AS DateTime), CAST(N'2016-06-03 17:25:34.790' AS DateTime), CAST(N'2016-05-03 08:47:07.410' AS DateTime), N'2G5I0TXWP7KBF9C6ZDJ5', N'6', CAST(N'2016-05-02 01:13:22.080' AS DateTime), N'17', CAST(N'2017-12-09 20:42:30.510' AS DateTime))
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [Khac_DeThi], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi]) VALUES (9, 1, N'8N0A89E9', N'TKKF132167B4TVZG4T18XG7E3950TZPV6U', 1, 0, 0, 20, CAST(N'2015-08-09 06:15:53.680' AS DateTime), CAST(N'2015-09-14 13:39:14.590' AS DateTime), CAST(N'2018-05-03 15:57:48.790' AS DateTime), NULL, N'12', CAST(N'2015-02-25 04:35:03.800' AS DateTime), N'1', CAST(N'2017-09-27 23:19:00.000' AS DateTime))
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [Khac_DeThi], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi]) VALUES (10, 1, N'8X80ZBC2', N'09B4O8535DMN4R75OFIEN145W1G478', 0, 1, 1, 132, CAST(N'2018-03-22 20:25:45.380' AS DateTime), CAST(N'2017-08-25 12:55:50.360' AS DateTime), CAST(N'2017-10-20 22:33:38.370' AS DateTime), NULL, N'6', CAST(N'2018-03-09 13:25:43.400' AS DateTime), N'12', CAST(N'2015-05-20 19:24:54.690' AS DateTime))
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [Khac_DeThi], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi]) VALUES (11, 5, N'7M4L37AQ', N'Y1', 1, 0, 0, 110, CAST(N'2017-05-18 01:50:07.890' AS DateTime), CAST(N'2015-09-07 00:08:47.020' AS DateTime), CAST(N'2017-06-18 09:49:26.910' AS DateTime), N'U1E8W6A1SXH512J9I6X', N'7', CAST(N'2015-12-09 11:19:28.040' AS DateTime), N'1', CAST(N'2015-01-25 03:34:30.970' AS DateTime))
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [Khac_DeThi], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi]) VALUES (12, 5, N'WOEFEGW4', N'QE', 0, 0, 1, 123, CAST(N'2016-10-09 13:28:51.790' AS DateTime), CAST(N'2018-06-23 18:56:19.940' AS DateTime), CAST(N'2015-03-20 11:56:18.120' AS DateTime), NULL, N'6', CAST(N'2017-12-19 22:54:29.080' AS DateTime), N'8', CAST(N'2016-04-01 13:56:44.730' AS DateTime))
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [Khac_DeThi], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi]) VALUES (13, 5, N'SUA6TP96', N'11L19X1C97X45O59B', 0, 0, 1, 119, CAST(N'2017-10-03 16:18:22.860' AS DateTime), CAST(N'2015-12-29 06:05:50.120' AS DateTime), CAST(N'2016-01-31 14:29:25.740' AS DateTime), NULL, N'18', CAST(N'2018-05-12 06:08:36.570' AS DateTime), N'15', CAST(N'2015-01-02 14:56:53.470' AS DateTime))
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [Khac_DeThi], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi]) VALUES (14, 2, N'8ZZ4F3M1', N'44TDF2', 0, 1, 0, 51, CAST(N'2018-08-02 10:12:28.650' AS DateTime), CAST(N'2017-10-20 03:25:30.590' AS DateTime), CAST(N'2016-12-16 09:41:33.830' AS DateTime), NULL, N'9', CAST(N'2018-06-20 17:52:39.560' AS DateTime), N'9', CAST(N'2016-08-20 01:57:49.130' AS DateTime))
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [Khac_DeThi], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi]) VALUES (15, 2, N'4M9WD50R', N'33U0LH449N313108L0RQ0', 1, 1, 0, 34, CAST(N'2015-04-13 11:38:28.220' AS DateTime), CAST(N'2017-10-07 09:33:49.240' AS DateTime), CAST(N'2015-01-14 10:14:50.940' AS DateTime), NULL, N'5', CAST(N'2018-04-23 23:23:27.600' AS DateTime), N'19', CAST(N'2017-07-29 02:21:11.300' AS DateTime))
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [Khac_DeThi], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi]) VALUES (16, 3, N'J45IQ53A', N'S2QND96RMA4W', 0, 1, 0, 131, CAST(N'2016-01-10 23:02:28.720' AS DateTime), CAST(N'2015-06-20 11:01:25.810' AS DateTime), CAST(N'2016-01-20 15:09:17.040' AS DateTime), NULL, N'13', CAST(N'2016-05-06 16:39:16.870' AS DateTime), N'20', CAST(N'2018-08-05 21:48:36.050' AS DateTime))
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [Khac_DeThi], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi]) VALUES (17, 9, N'8QE1X1OR', N'Q78R3D90V0R98128127R5MQ49I459ZL', 0, 1, 0, 32, CAST(N'2016-03-31 18:05:14.730' AS DateTime), CAST(N'2017-09-14 19:16:41.130' AS DateTime), CAST(N'2016-04-06 06:39:39.640' AS DateTime), NULL, N'20', CAST(N'2017-03-10 07:24:37.040' AS DateTime), N'12', CAST(N'2016-09-05 18:22:52.930' AS DateTime))
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [Khac_DeThi], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi]) VALUES (18, 2, N'0W9613F8', N'Y25963W140I', 1, 1, 0, 83, CAST(N'2017-09-12 18:58:28.300' AS DateTime), CAST(N'2016-01-26 10:19:59.630' AS DateTime), CAST(N'2017-01-02 04:24:45.420' AS DateTime), NULL, N'4', CAST(N'2017-04-15 04:29:02.230' AS DateTime), N'2', CAST(N'2017-10-02 22:20:32.750' AS DateTime))
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [Khac_DeThi], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi]) VALUES (19, 5, N'MG7X3I42', N'ZMSPTY1', 1, 1, 1, 61, CAST(N'2018-02-10 05:45:56.950' AS DateTime), CAST(N'2015-09-11 04:41:37.040' AS DateTime), CAST(N'2015-12-09 02:54:27.600' AS DateTime), NULL, N'12', CAST(N'2016-09-16 10:21:08.200' AS DateTime), N'1', CAST(N'2017-08-20 22:37:58.180' AS DateTime))
INSERT [dbo].[DanhSach_DeThi] ([ID_DE], [ID_MonHoc], [Ma_DeThi], [Ten_DeThi], [TrangThai_DeThi], [TrangThai_Tron_DeThi], [HT_DeThi], [ThoiGianLamBai], [NgayBatDau_SuDung], [NgayKetThucDuKien], [NgayKetThucThatTe], [Khac_DeThi], [NguoiTao_DeThi], [NgayTao_DeThi], [NguoiCN_DeThi], [NgayCN_DeThi]) VALUES (20, 9, N'P8QS1G90', N'6X7LA9YEUP', 0, 1, 0, 45, CAST(N'2017-11-06 11:40:38.070' AS DateTime), CAST(N'2015-08-18 20:08:11.910' AS DateTime), CAST(N'2016-11-27 13:05:02.300' AS DateTime), NULL, N'13', CAST(N'2018-07-17 01:45:23.550' AS DateTime), N'7', CAST(N'2015-05-12 10:21:51.600' AS DateTime))
SET IDENTITY_INSERT [dbo].[DanhSach_DeThi] OFF
SET IDENTITY_INSERT [dbo].[DeMuc] ON 

INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Khac_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM]) VALUES (1, 5, N'N', N'H', 0, NULL, N'14', CAST(N'2018-03-05 22:10:49.980' AS DateTime), N'5', CAST(N'2016-11-01 01:19:16.040' AS DateTime))
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Khac_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM]) VALUES (2, 6, N'P', N'7I2K14', 0, NULL, N'13', CAST(N'2016-11-10 07:48:04.700' AS DateTime), N'16', CAST(N'2017-09-18 11:48:53.840' AS DateTime))
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Khac_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM]) VALUES (3, 5, N'3P3CBSGG91X8IX3HT0', N'26I1441C2S70RN', 0, NULL, N'1', CAST(N'2017-09-04 18:37:47.610' AS DateTime), N'14', CAST(N'2018-01-06 00:12:48.310' AS DateTime))
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Khac_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM]) VALUES (4, 10, N'KT493R5H2F75197F6', N'MPUAK48H11EH', 1, NULL, N'7', CAST(N'2018-05-11 07:29:32.020' AS DateTime), N'18', CAST(N'2017-11-22 19:55:36.660' AS DateTime))
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Khac_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM]) VALUES (5, 10, N'OXZOX1M8932B', N'EQ2UL9X936XD7P8H73T57ES66XPX3RD27VCH57HYOF9V66AX4HF49Q5DX5HB4YW9B3O3628QPE2DT87W7ME7PH18SDZ0N234QT2F', 0, NULL, N'3', CAST(N'2018-07-03 22:53:36.070' AS DateTime), N'1', CAST(N'2015-07-08 15:38:52.940' AS DateTime))
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Khac_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM]) VALUES (6, 9, N'Q526M6V', N'PLQ5QL34CZS673IKFZ8N1JK104D32E7V550', 1, NULL, N'8', CAST(N'2015-05-11 01:58:28.460' AS DateTime), N'10', CAST(N'2016-05-01 14:44:01.150' AS DateTime))
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Khac_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM]) VALUES (7, 4, N'T45G', N'9VP02SR251I5A1W23CTN03597411CX4R8', 0, NULL, N'4', CAST(N'2016-07-29 00:32:50.780' AS DateTime), N'3', CAST(N'2016-12-28 19:29:34.230' AS DateTime))
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Khac_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM]) VALUES (8, 4, N'L8U5J34TXU', N'12W34FU9WT4J17W1W4V5V20LGO185HGJ4L8J317JKBWM17YHIQ86077T2DJ41IL8V73CUT8E321YIS71T2D4SWF37EQ962WGP535', 0, NULL, N'18', CAST(N'2018-04-12 09:52:50.280' AS DateTime), N'9', CAST(N'2017-04-20 05:31:02.320' AS DateTime))
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Khac_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM]) VALUES (9, 2, N'L705C4HKG', N'C42922UZ2I2J4517VTX0A5O54L', 1, NULL, N'5', CAST(N'2016-04-22 17:33:43.400' AS DateTime), N'18', CAST(N'2018-08-27 04:41:38.630' AS DateTime))
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Khac_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM]) VALUES (10, 7, N'7', N'7C8IX3', 0, NULL, N'2', CAST(N'2015-06-11 03:30:02.780' AS DateTime), N'17', CAST(N'2017-01-28 19:58:53.310' AS DateTime))
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Khac_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM]) VALUES (11, 10, N'KRRM', N'S92PU69VZ8A5H5X85Q307P35D594F0QKWG3SPAIWE0U0M590E34C9N7U', 0, NULL, N'14', CAST(N'2017-08-23 08:58:24.090' AS DateTime), N'3', CAST(N'2016-03-20 13:01:24.890' AS DateTime))
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Khac_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM]) VALUES (12, 1, N'6A', N'O28104I67NM849YG649WO5355A2N4GOU4V9463T7688932999DI9QUR80A100JC55OQ372ZN', 0, NULL, N'8', CAST(N'2015-05-16 11:08:34.540' AS DateTime), N'7', CAST(N'2016-10-05 07:33:00.120' AS DateTime))
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Khac_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM]) VALUES (13, 10, N'2W', N'82Y1X2M49M09KKBK7D1SQ9C8QL', 1, N'6P4', N'19', CAST(N'2017-05-31 21:37:05.110' AS DateTime), N'16', CAST(N'2018-04-13 14:18:17.120' AS DateTime))
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Khac_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM]) VALUES (14, 1, N'S', N'0AHDFBA323P78KX8G4SE7XI99', 1, NULL, N'18', CAST(N'2015-01-29 11:01:36.010' AS DateTime), N'15', CAST(N'2017-03-10 15:55:52.080' AS DateTime))
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Khac_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM]) VALUES (15, 6, N'759', N'1YAGAOR9X9Z171CL2013YXLEL2LNJVV378B515T35YLS', 0, NULL, N'9', CAST(N'2016-01-02 12:44:55.160' AS DateTime), N'6', CAST(N'2015-04-25 17:45:19.500' AS DateTime))
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Khac_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM]) VALUES (16, 6, N'Y2', N'DE9BQ1S113TP04531312996M9J414WBOKW36491X1F84F3SGO71CC13R3U1WB04Z32VV0H1O9ON9', 0, N'674GS4O14Q849C9495BXI4V2Z1672S6OE7IG4XIEMCD6BPH61I4', N'12', CAST(N'2015-03-31 02:56:33.330' AS DateTime), N'16', CAST(N'2017-08-15 07:59:06.460' AS DateTime))
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Khac_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM]) VALUES (17, 8, N'B01YV1', N'9SMC8YN8TIE7Q', 1, NULL, N'8', CAST(N'2017-09-09 10:56:46.600' AS DateTime), N'16', CAST(N'2016-08-16 10:58:54.710' AS DateTime))
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Khac_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM]) VALUES (18, 2, N'T', N'88X', 0, NULL, N'10', CAST(N'2015-02-16 11:38:51.480' AS DateTime), N'12', CAST(N'2018-03-21 07:00:12.070' AS DateTime))
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Khac_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM]) VALUES (19, 5, N'EQ1AT1NP2W7IA41JM675C', N'5521735BQ94OR6PK5D694831B8W3165SZNQQ55PJ3LIDM8ATF453A91YG7LPC2KP844V967PNKM00JNP', 1, NULL, N'14', CAST(N'2016-12-08 10:29:43.710' AS DateTime), N'3', CAST(N'2018-01-02 04:05:08.820' AS DateTime))
INSERT [dbo].[DeMuc] ([ID_DeMuc], [ID_MonHoc], [Ma_DeMuc], [Ten_DeMuc], [HT_DeMuc], [Khac_DeMuc], [NguoiTao_DM], [NgayTao_DM], [NguoiCN_DM], [NgayCN_DM]) VALUES (20, 4, N'3ST8B1T164GU5A2Q1G9011CZG1', N'4P6MU24JD1E44231VI2033A80478NI3GOS01PBRWA2', 0, NULL, N'14', CAST(N'2018-08-18 19:23:55.020' AS DateTime), N'1', CAST(N'2016-12-24 05:25:20.820' AS DateTime))
SET IDENTITY_INSERT [dbo].[DeMuc] OFF
SET IDENTITY_INSERT [dbo].[GiangDay] ON 

INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [Khac_GiangDay], [HT_GiangDay]) VALUES (1, 17, 2, CAST(N'2017-07-07 19:00:22.910' AS DateTime), CAST(N'2016-09-23 17:02:02.040' AS DateTime), CAST(N'2015-05-22 20:10:29.300' AS DateTime), N'17', CAST(N'2018-04-12 18:12:09.400' AS DateTime), NULL, 1)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [Khac_GiangDay], [HT_GiangDay]) VALUES (2, 19, 4, CAST(N'2015-10-11 01:05:19.900' AS DateTime), CAST(N'2015-04-24 20:16:11.850' AS DateTime), CAST(N'2015-07-04 23:23:58.000' AS DateTime), N'19', CAST(N'2015-01-10 16:35:17.950' AS DateTime), NULL, 1)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [Khac_GiangDay], [HT_GiangDay]) VALUES (3, 16, 9, CAST(N'2018-06-16 22:20:39.800' AS DateTime), CAST(N'2017-05-01 13:29:46.560' AS DateTime), CAST(N'2015-08-10 14:53:31.040' AS DateTime), N'16', CAST(N'2015-04-03 09:39:45.340' AS DateTime), NULL, 1)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [Khac_GiangDay], [HT_GiangDay]) VALUES (4, 9, 8, CAST(N'2016-05-26 19:12:39.890' AS DateTime), CAST(N'2018-01-22 11:12:01.260' AS DateTime), CAST(N'2017-05-21 07:48:16.030' AS DateTime), N'9', CAST(N'2016-05-23 00:19:54.180' AS DateTime), NULL, 1)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [Khac_GiangDay], [HT_GiangDay]) VALUES (5, 16, 6, CAST(N'2015-01-25 15:28:56.390' AS DateTime), CAST(N'2017-09-20 06:47:03.950' AS DateTime), CAST(N'2017-05-15 20:37:49.560' AS DateTime), N'16', CAST(N'2017-09-03 21:20:31.060' AS DateTime), N'1JAES702ASC8Q63SLJ7384K2604', 1)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [Khac_GiangDay], [HT_GiangDay]) VALUES (6, 12, 10, CAST(N'2016-01-23 07:27:29.440' AS DateTime), CAST(N'2017-01-03 13:54:45.050' AS DateTime), NULL, N'12', CAST(N'2016-05-23 00:47:44.050' AS DateTime), NULL, 0)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [Khac_GiangDay], [HT_GiangDay]) VALUES (7, 6, 3, CAST(N'2018-08-26 20:48:12.930' AS DateTime), CAST(N'2015-06-19 04:46:45.800' AS DateTime), CAST(N'2017-06-08 10:30:29.080' AS DateTime), N'6', CAST(N'2016-04-28 17:39:53.680' AS DateTime), N'54', 0)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [Khac_GiangDay], [HT_GiangDay]) VALUES (8, 20, 5, CAST(N'2015-06-14 22:01:26.290' AS DateTime), CAST(N'2018-02-19 07:31:19.790' AS DateTime), NULL, N'20', CAST(N'2018-02-08 01:37:27.810' AS DateTime), NULL, 1)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [Khac_GiangDay], [HT_GiangDay]) VALUES (9, 15, 2, CAST(N'2017-03-23 03:30:06.390' AS DateTime), CAST(N'2018-04-24 20:52:35.470' AS DateTime), CAST(N'2018-08-09 23:36:08.210' AS DateTime), N'15', CAST(N'2017-10-13 19:50:46.600' AS DateTime), NULL, 0)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [Khac_GiangDay], [HT_GiangDay]) VALUES (10, 15, 7, CAST(N'2016-11-04 23:24:33.500' AS DateTime), CAST(N'2017-08-25 19:35:23.020' AS DateTime), CAST(N'2016-08-23 11:49:55.190' AS DateTime), N'15', CAST(N'2016-10-12 23:20:57.750' AS DateTime), NULL, 1)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [Khac_GiangDay], [HT_GiangDay]) VALUES (11, 8, 2, CAST(N'2015-12-23 18:09:19.410' AS DateTime), CAST(N'2015-08-19 11:10:11.680' AS DateTime), CAST(N'2018-03-29 06:02:45.030' AS DateTime), N'8', CAST(N'2017-10-26 03:22:31.220' AS DateTime), NULL, 1)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [Khac_GiangDay], [HT_GiangDay]) VALUES (12, 5, 6, CAST(N'2015-01-01 16:59:02.080' AS DateTime), CAST(N'2017-07-13 16:38:37.010' AS DateTime), CAST(N'2018-08-13 23:49:17.700' AS DateTime), N'5', CAST(N'2016-11-11 20:15:21.660' AS DateTime), NULL, 0)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [Khac_GiangDay], [HT_GiangDay]) VALUES (13, 1, 1, CAST(N'2017-08-02 09:21:37.810' AS DateTime), CAST(N'2017-09-22 09:22:52.440' AS DateTime), CAST(N'2017-04-14 20:54:33.050' AS DateTime), N'1', CAST(N'2018-04-19 22:36:22.340' AS DateTime), NULL, 0)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [Khac_GiangDay], [HT_GiangDay]) VALUES (14, 3, 9, CAST(N'2016-12-02 01:06:30.990' AS DateTime), CAST(N'2017-07-12 05:24:12.040' AS DateTime), CAST(N'2016-06-25 19:01:46.290' AS DateTime), N'3', CAST(N'2017-12-04 05:32:33.320' AS DateTime), NULL, 0)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [Khac_GiangDay], [HT_GiangDay]) VALUES (15, 4, 7, CAST(N'2017-12-18 20:57:28.410' AS DateTime), CAST(N'2015-10-17 12:42:27.530' AS DateTime), CAST(N'2017-06-23 12:57:12.290' AS DateTime), N'4', CAST(N'2015-11-02 13:08:48.490' AS DateTime), NULL, 1)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [Khac_GiangDay], [HT_GiangDay]) VALUES (16, 4, 6, CAST(N'2016-05-02 07:04:07.380' AS DateTime), CAST(N'2018-02-03 05:25:21.350' AS DateTime), CAST(N'2015-12-11 08:01:16.050' AS DateTime), N'4', CAST(N'2015-06-23 14:39:42.700' AS DateTime), NULL, 0)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [Khac_GiangDay], [HT_GiangDay]) VALUES (17, 16, 10, CAST(N'2015-02-20 05:14:39.950' AS DateTime), CAST(N'2017-12-24 11:42:16.940' AS DateTime), CAST(N'2016-05-08 14:33:30.420' AS DateTime), N'16', CAST(N'2015-10-30 03:45:10.020' AS DateTime), NULL, 1)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [Khac_GiangDay], [HT_GiangDay]) VALUES (18, 2, 4, CAST(N'2015-03-24 17:17:35.170' AS DateTime), CAST(N'2015-10-12 07:32:15.720' AS DateTime), CAST(N'2018-03-29 01:10:44.280' AS DateTime), N'2', CAST(N'2015-08-21 11:20:39.020' AS DateTime), NULL, 0)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [Khac_GiangDay], [HT_GiangDay]) VALUES (19, 19, 4, CAST(N'2016-01-15 11:44:49.700' AS DateTime), NULL, CAST(N'2017-09-25 22:52:40.050' AS DateTime), N'19', CAST(N'2016-11-16 05:30:27.760' AS DateTime), NULL, 1)
INSERT [dbo].[GiangDay] ([ID_GIANGDAY], [ID_GV], [ID_MonHoc], [NgayBatDau_GiangDay], [NgayKetThuc_GiangDay], [NgayKetThuc_GiangDay_ThucTe], [NguoiCN_GiangDay], [NgayCN_GiangDay], [Khac_GiangDay], [HT_GiangDay]) VALUES (20, 19, 2, CAST(N'2018-02-18 08:45:33.490' AS DateTime), NULL, CAST(N'2016-08-26 09:14:55.000' AS DateTime), N'19', CAST(N'2017-07-02 00:06:01.880' AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[GiangDay] OFF
SET IDENTITY_INSERT [dbo].[GiaoVien] ON 

INSERT [dbo].[GiaoVien] ([ID_GV], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (1, N'3V9R8N41', N'Emelda', N'Reno', N'9F2D9L66', N'CharmaineZStock@example.com', N'09177132164', N'Lipowskystraße 9, 25283, Thumby', CAST(N'1961-10-23' AS Date), N'1', 1, N'7', CAST(N'2017-06-04 19:42:26.760' AS DateTime), N'3', CAST(N'2016-01-31 22:50:53.320' AS DateTime), NULL)
INSERT [dbo].[GiaoVien] ([ID_GV], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (2, N'8194A147', N'Keneth', N'Neel', N'JX7RVZUH', N'Ridgeway87@example.com', N'09089129510', N'Belgradstraße 11c, 94363, Tilleda', CAST(N'1951-06-13' AS Date), N'0', 1, N'10', CAST(N'2016-02-02 12:16:39.220' AS DateTime), N'9', CAST(N'2018-05-14 18:22:32.900' AS DateTime), NULL)
INSERT [dbo].[GiaoVien] ([ID_GV], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (3, N'2A970R3N', N'Conception', N'Hermann', N'81W53JM8', N'Tenney195@example.com', N'09059525028', N'Wolfgangstraße 2e, 03368, Garding, Kirchspiel', CAST(N'1987-01-02' AS Date), N'1', 0, N'7', CAST(N'2016-08-02 15:36:18.120' AS DateTime), N'1', CAST(N'2016-09-17 00:34:51.780' AS DateTime), NULL)
INSERT [dbo].[GiaoVien] ([ID_GV], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (4, N'R2978541', N'Jude', N'Zeigler', N'T5F387UM', N'Goddard15@example.com', N'09007774305', N'Aschheimer Straße 2e, 24195, Obersulm', CAST(N'1965-02-10' AS Date), N'0', 1, N'7', CAST(N'2016-05-21 12:19:40.250' AS DateTime), N'7', CAST(N'2018-06-20 09:10:37.710' AS DateTime), NULL)
INSERT [dbo].[GiaoVien] ([ID_GV], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (5, N'627K04B6', N'Lindsay', N'Cupp', N'6M8LDJXS', N'Addie.Robles76@example.com', N'09170939660', N'Hiltenspergerstraße 1, 02976, Sierscheid', CAST(N'1992-10-12' AS Date), N'1', 0, N'2', CAST(N'2017-10-14 11:02:33.000' AS DateTime), N'16', CAST(N'2015-06-16 08:20:51.070' AS DateTime), NULL)
INSERT [dbo].[GiaoVien] ([ID_GV], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (6, N'U76L6AW6', N'Abe', N'Tanner', N'DN4OF4I8', N'Baugh18@example.com', N'09163217522', N'Werneckstraße 1b, 84447, Niedertrebra', CAST(N'1951-04-11' AS Date), N'0', 1, N'11', CAST(N'2015-12-25 13:36:05.230' AS DateTime), N'13', CAST(N'2016-07-20 05:24:26.090' AS DateTime), N'O215M85WZ6CATNPD5AFT3I')
INSERT [dbo].[GiaoVien] ([ID_GV], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (7, N'K0W43W5P', N'Conrad', N'Frasier', N'8QVU5CKR', N'NedaD_Mcqueen915@example.com', N'09067416078', N'Vilshofener Straße 2, 65826, Mohrenmühle', CAST(N'1973-04-27' AS Date), N'0', 0, N'12', CAST(N'2017-12-04 17:56:58.670' AS DateTime), N'19', CAST(N'2017-11-10 15:54:36.950' AS DateTime), NULL)
INSERT [dbo].[GiaoVien] ([ID_GV], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (8, N'0DKUY60A', N'Albertina', N'Bridges', N'0E16801R', N'AbernathyC6@nowhere.com', N'09854600414', N'Clemensstraße 25e, 89631, Tunau', CAST(N'1985-04-11' AS Date), N'0', 1, N'2', CAST(N'2015-11-21 15:25:00.150' AS DateTime), N'14', CAST(N'2016-01-11 04:37:34.700' AS DateTime), NULL)
INSERT [dbo].[GiaoVien] ([ID_GV], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (9, N'3PD6969K', N'Benton', N'Curley', N'W0VHU2RU', N'kbuf6081@nowhere.com', N'09006297132', N'Wurzerstraße 1d, 62277, Hirschstein', CAST(N'1952-09-19' AS Date), N'1', 1, N'2', CAST(N'2018-05-07 14:04:47.930' AS DateTime), N'11', CAST(N'2018-09-03 19:53:30.970' AS DateTime), NULL)
INSERT [dbo].[GiaoVien] ([ID_GV], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (10, N'NT80WS37', N'Charlesetta', N'Renteria', N'EO02XOKO', N'Slyvia.Mcgraw@example.com', N'09195404590', N'Stubenvollstraße 8f, 85291, Abtsbessingen', CAST(N'1992-09-30' AS Date), N'0', 0, N'2', CAST(N'2018-07-24 07:25:18.460' AS DateTime), N'16', CAST(N'2015-11-03 10:22:22.110' AS DateTime), NULL)
INSERT [dbo].[GiaoVien] ([ID_GV], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (11, N'QRB7A023', N'Bernard', N'Zeller', N'57G7F0F6', N'JackieFitch@example.com', N'09040348513', N'Reuchlinstraße 29a, 82161, Ahrain', CAST(N'1961-02-28' AS Date), N'0', 1, N'15', CAST(N'2015-01-13 22:45:53.610' AS DateTime), N'12', CAST(N'2016-08-08 07:18:52.610' AS DateTime), NULL)
INSERT [dbo].[GiaoVien] ([ID_GV], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (12, N'315V587S', N'Robin', N'Frazer', N'35VZ931F', N'Arnoldo_Aguiar2@example.com', N'09097699117', N'Stollbergstraße 5, 33753, Abbendorf', CAST(N'1962-10-29' AS Date), N'0', 0, N'5', CAST(N'2016-08-17 18:36:30.530' AS DateTime), N'11', CAST(N'2018-06-04 12:49:17.220' AS DateTime), NULL)
INSERT [dbo].[GiaoVien] ([ID_GV], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (13, N'DW8S36QI', N'Clare', N'Lassiter', N'04K453GA', N'CynthiaWSeverson@nowhere.com', N'09002325138', N'Ackerstraße 7c, 66960, Ahrenviöl', CAST(N'1969-01-18' AS Date), N'1', 0, N'5', CAST(N'2018-01-16 12:17:25.420' AS DateTime), N'6', CAST(N'2017-11-28 23:56:20.760' AS DateTime), NULL)
INSERT [dbo].[GiaoVien] ([ID_GV], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (14, N'25V0T73M', N'Tommie', N'Hernandez', N'U99407RB', N'Truman_Buckner327@example.com', N'09046000392', N'Adelgundenstraße 28, 22317, Hermannsburg', CAST(N'1971-07-03' AS Date), N'1', 0, N'3', CAST(N'2017-02-14 22:32:05.240' AS DateTime), N'19', CAST(N'2018-02-27 15:08:21.400' AS DateTime), NULL)
INSERT [dbo].[GiaoVien] ([ID_GV], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (15, N'LVUN6R1Y', N'Warner', N'Curran', N'7MQF7BZE', N'NildaLand55@example.com', N'09070423454', N'Ebenauer Straße 2b, 34043, Buskow', CAST(N'1969-08-26' AS Date), N'0', 1, N'17', CAST(N'2017-07-14 18:42:51.250' AS DateTime), N'14', CAST(N'2015-12-24 17:50:12.140' AS DateTime), NULL)
INSERT [dbo].[GiaoVien] ([ID_GV], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (16, N'6G67JJY4', N'Elias', N'Allard', N'NSI7SAAJ', N'plogr13@example.com', N'09880897357', N'Wendl-Dietrich-Straße 1b, 33325, Betteldorf', CAST(N'1994-06-04' AS Date), N'0', 1, N'3', CAST(N'2015-04-03 07:27:52.470' AS DateTime), N'19', CAST(N'2017-02-12 04:26:56.960' AS DateTime), NULL)
INSERT [dbo].[GiaoVien] ([ID_GV], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (17, N'81G9J2BC', N'Manuela', N'Tapia', N'QF265O73', N'Oneill@example.com', N'09833032053', N'Aberlestraße 22-29, 89870, Kißlegg', CAST(N'1987-12-22' AS Date), N'0', 0, N'3', CAST(N'2016-10-19 12:42:52.700' AS DateTime), N'19', CAST(N'2016-04-13 07:32:11.970' AS DateTime), NULL)
INSERT [dbo].[GiaoVien] ([ID_GV], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (18, N'2F2DS14K', N'Milan', N'Briggs', N'JST0F5H1', N'Acker53@nowhere.com', N'09877915305', N'Unertlstraße 24, 78598, Aidenbach', CAST(N'1962-09-26' AS Date), N'0', 1, N'16', CAST(N'2016-09-02 12:16:29.230' AS DateTime), N'10', CAST(N'2018-04-11 07:38:43.160' AS DateTime), N'M2U8SEY8C2')
INSERT [dbo].[GiaoVien] ([ID_GV], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (19, N'2A4526H5', N'Rhett', N'Zepeda', N'14SHCA90', N'MichaeleAlbrecht@example.com', N'09014088919', N'Beetzstraße 1, 54861, Vienenburg', CAST(N'1959-11-22' AS Date), N'1', 1, N'13', CAST(N'2018-08-17 06:09:04.360' AS DateTime), N'17', CAST(N'2017-11-11 05:07:03.190' AS DateTime), N'RQ2E73G65XV3YGRT734TMT83G8XYUNPY5399DYX0J1H45R29WM94969695H114')
INSERT [dbo].[GiaoVien] ([ID_GV], [MADN_GV], [Ho_GV], [Ten_GV], [MatKhau_GV], [Email_GV], [DienThoai_GV], [DiaChi_GV], [NgaySinh_GV], [GioiTinh_GV], [HT_GV], [NguoiTao_GV], [NgayTao_GV], [NguoiCN_GV], [NgayCN_GV], [Khac_GV]) VALUES (20, N'BFF8ZH37', N'Joseph', N'Allen', N'00BRU3Z8', N'Broderick125@example.com', N'09001274863', N'Hofstatt 1, 13924, Schrampe', CAST(N'1952-04-13' AS Date), N'0', 1, N'16', CAST(N'2015-08-01 23:53:42.330' AS DateTime), N'7', CAST(N'2018-02-11 14:57:22.820' AS DateTime), N'0J1VFXPMBJ')
SET IDENTITY_INSERT [dbo].[GiaoVien] OFF
SET IDENTITY_INSERT [dbo].[LichSu_CH] ON 

INSERT [dbo].[LichSu_CH] ([ID_LS_CH], [ID_CH], [MoTa_HanhDong], [NoiDungCN_LS_CH], [NoiDung_Cu_LS_CH], [NoiDung_Moi_LS_CH], [DiemCH_Cu], [DiemCH_Moi], [CapDoCH_Cu], [CapDoCH_Moi], [NguoiCN_LS_CH], [NgayCN_LS_CH]) VALUES (1, 18, N'6U', N'06018', N'41707', N'58850', 0.48, 0.27, 4, 5, N'18', CAST(N'2015-11-16 06:16:24.620' AS DateTime))
INSERT [dbo].[LichSu_CH] ([ID_LS_CH], [ID_CH], [MoTa_HanhDong], [NoiDungCN_LS_CH], [NoiDung_Cu_LS_CH], [NoiDung_Moi_LS_CH], [DiemCH_Cu], [DiemCH_Moi], [CapDoCH_Cu], [CapDoCH_Moi], [NguoiCN_LS_CH], [NgayCN_LS_CH]) VALUES (2, 18, N'5', N'60511', N'18757', N'62471', 0.15, 0.43, 1, 8, N'18', CAST(N'2017-10-25 13:20:28.910' AS DateTime))
INSERT [dbo].[LichSu_CH] ([ID_LS_CH], [ID_CH], [MoTa_HanhDong], [NoiDungCN_LS_CH], [NoiDung_Cu_LS_CH], [NoiDung_Moi_LS_CH], [DiemCH_Cu], [DiemCH_Moi], [CapDoCH_Cu], [CapDoCH_Moi], [NguoiCN_LS_CH], [NgayCN_LS_CH]) VALUES (3, 5, N'J', N'32059', N'25924', N'07115', 0.36, 0.23, 7, 8, N'5', CAST(N'2017-04-05 02:32:06.280' AS DateTime))
INSERT [dbo].[LichSu_CH] ([ID_LS_CH], [ID_CH], [MoTa_HanhDong], [NoiDungCN_LS_CH], [NoiDung_Cu_LS_CH], [NoiDung_Moi_LS_CH], [DiemCH_Cu], [DiemCH_Moi], [CapDoCH_Cu], [CapDoCH_Moi], [NguoiCN_LS_CH], [NgayCN_LS_CH]) VALUES (4, 20, N'56', N'06828', N'67587', N'19613', 0.16, 0.5, 0, 5, N'20', CAST(N'2018-07-01 05:12:00.500' AS DateTime))
INSERT [dbo].[LichSu_CH] ([ID_LS_CH], [ID_CH], [MoTa_HanhDong], [NoiDungCN_LS_CH], [NoiDung_Cu_LS_CH], [NoiDung_Moi_LS_CH], [DiemCH_Cu], [DiemCH_Moi], [CapDoCH_Cu], [CapDoCH_Moi], [NguoiCN_LS_CH], [NgayCN_LS_CH]) VALUES (5, 4, N'828J1N6BY3', N'84296', N'92057', N'39067', 0.35, 0.48, 7, 0, N'4', CAST(N'2015-05-19 21:20:28.330' AS DateTime))
INSERT [dbo].[LichSu_CH] ([ID_LS_CH], [ID_CH], [MoTa_HanhDong], [NoiDungCN_LS_CH], [NoiDung_Cu_LS_CH], [NoiDung_Moi_LS_CH], [DiemCH_Cu], [DiemCH_Moi], [CapDoCH_Cu], [CapDoCH_Moi], [NguoiCN_LS_CH], [NgayCN_LS_CH]) VALUES (6, 10, N'L', N'25557', N'19745', N'48783', 0.39, 0.42, 1, 6, N'10', CAST(N'2017-06-11 01:05:44.890' AS DateTime))
INSERT [dbo].[LichSu_CH] ([ID_LS_CH], [ID_CH], [MoTa_HanhDong], [NoiDungCN_LS_CH], [NoiDung_Cu_LS_CH], [NoiDung_Moi_LS_CH], [DiemCH_Cu], [DiemCH_Moi], [CapDoCH_Cu], [CapDoCH_Moi], [NguoiCN_LS_CH], [NgayCN_LS_CH]) VALUES (7, 4, N'AZE0E', N'82181', N'20109', N'02876', 0.47, 0.31, 8, 2, N'4', CAST(N'2016-12-12 00:20:46.040' AS DateTime))
INSERT [dbo].[LichSu_CH] ([ID_LS_CH], [ID_CH], [MoTa_HanhDong], [NoiDungCN_LS_CH], [NoiDung_Cu_LS_CH], [NoiDung_Moi_LS_CH], [DiemCH_Cu], [DiemCH_Moi], [CapDoCH_Cu], [CapDoCH_Moi], [NguoiCN_LS_CH], [NgayCN_LS_CH]) VALUES (8, 7, N'99P404', N'74068', N'97537', N'05367', 0.39, 0.45, 6, 4, N'7', CAST(N'2018-05-11 22:05:45.060' AS DateTime))
INSERT [dbo].[LichSu_CH] ([ID_LS_CH], [ID_CH], [MoTa_HanhDong], [NoiDungCN_LS_CH], [NoiDung_Cu_LS_CH], [NoiDung_Moi_LS_CH], [DiemCH_Cu], [DiemCH_Moi], [CapDoCH_Cu], [CapDoCH_Moi], [NguoiCN_LS_CH], [NgayCN_LS_CH]) VALUES (9, 6, N'B3O0YJ', N'95311', N'95441', N'31999', 0.26, 0.5, 8, 7, N'6', CAST(N'2015-07-19 18:59:22.620' AS DateTime))
INSERT [dbo].[LichSu_CH] ([ID_LS_CH], [ID_CH], [MoTa_HanhDong], [NoiDungCN_LS_CH], [NoiDung_Cu_LS_CH], [NoiDung_Moi_LS_CH], [DiemCH_Cu], [DiemCH_Moi], [CapDoCH_Cu], [CapDoCH_Moi], [NguoiCN_LS_CH], [NgayCN_LS_CH]) VALUES (10, 16, N'JC', N'81385', N'65326', N'92170', 0.19, 0.36, 7, 1, N'16', CAST(N'2016-06-13 18:49:58.610' AS DateTime))
SET IDENTITY_INSERT [dbo].[LichSu_CH] OFF
SET IDENTITY_INSERT [dbo].[LichSu_LC] ON 

INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC]) VALUES (1, 4, N'WB', N'74096', N'63751', N'06522', N'12', CAST(N'2016-01-06 14:03:34.620' AS DateTime))
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC]) VALUES (2, 15, N'9X', N'71127', N'85868', N'07335', N'7', CAST(N'2015-06-13 20:26:59.060' AS DateTime))
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC]) VALUES (3, 5, N'I', N'41501', N'23736', N'16292', N'15', CAST(N'2015-08-10 19:50:00.350' AS DateTime))
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC]) VALUES (4, 17, N'093', N'35960', N'62789', N'15478', N'4', CAST(N'2016-06-12 00:06:41.610' AS DateTime))
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC]) VALUES (5, 11, N'0DKV50T', N'39443', N'72533', N'99641', N'17', CAST(N'2015-05-26 08:17:13.850' AS DateTime))
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC]) VALUES (6, 4, N'J0B98Z89B', N'09950', N'16492', N'74875', N'9', CAST(N'2018-07-10 03:06:45.230' AS DateTime))
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC]) VALUES (7, 2, N'6EF06DEM7I', N'35125', N'71375', N'96567', N'1', CAST(N'2017-01-06 13:30:09.480' AS DateTime))
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC]) VALUES (8, 20, N'97P3NO', N'00097', N'07274', N'50679', N'11', CAST(N'2016-01-01 11:28:02.330' AS DateTime))
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC]) VALUES (9, 13, N'P26', N'91597', N'83206', N'93155', N'14', CAST(N'2016-06-14 08:36:31.610' AS DateTime))
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC]) VALUES (10, 7, N'21', N'80175', N'69576', N'10879', N'2', CAST(N'2016-12-25 20:44:58.450' AS DateTime))
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC]) VALUES (11, 16, N'O', N'54912', N'93773', N'20710', N'5', CAST(N'2018-03-17 14:59:46.070' AS DateTime))
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC]) VALUES (12, 8, N'SX274', N'86716', N'17703', N'53196', N'15', CAST(N'2018-05-06 06:55:29.020' AS DateTime))
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC]) VALUES (13, 16, N'ZTM', N'88769', N'74310', N'03891', N'13', CAST(N'2015-03-21 20:05:30.010' AS DateTime))
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC]) VALUES (14, 9, N'X7', N'79358', N'18198', N'16461', N'5', CAST(N'2016-05-07 13:05:54.310' AS DateTime))
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC]) VALUES (15, 3, N'3NF29LX511', N'67127', N'24635', N'99199', N'13', CAST(N'2016-11-18 18:46:16.330' AS DateTime))
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC]) VALUES (16, 7, N'NT8W9', N'57900', N'20997', N'65443', N'3', CAST(N'2015-02-07 07:17:54.520' AS DateTime))
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC]) VALUES (17, 18, N'39H6', N'44681', N'85317', N'88142', N'10', CAST(N'2015-07-28 00:06:03.880' AS DateTime))
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC]) VALUES (18, 6, N'QJZ', N'11502', N'71616', N'28663', N'8', CAST(N'2015-03-15 13:01:35.400' AS DateTime))
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC]) VALUES (19, 20, N'9R6TV58', N'56367', N'39054', N'25103', N'4', CAST(N'2018-05-27 22:09:39.150' AS DateTime))
INSERT [dbo].[LichSu_LC] ([ID_LS_LC], [ID_LUACHON], [MoTa_LS_LC], [NoiDungCN_LS_LC], [NoiDungMoi_LS_LC], [NoiDungCu_LS_LC], [NguoiCN_LS_LC], [Ngay_LS_LC]) VALUES (20, 18, N'Y0C1IG', N'19049', N'90453', N'33110', N'13', CAST(N'2015-11-28 23:21:56.230' AS DateTime))
SET IDENTITY_INSERT [dbo].[LichSu_LC] OFF
SET IDENTITY_INSERT [dbo].[Loai_CH] ON 

INSERT [dbo].[Loai_CH] ([ID_LoaiCH], [MaLoai_CH], [TenLoai_CH], [HT_Loai], [Khac_LCH]) VALUES (1, N'U35XR5WR454ATZSSI23I2VJI84769HW2PC8CZ3323XIB6T', N'9HG', 1, NULL)
INSERT [dbo].[Loai_CH] ([ID_LoaiCH], [MaLoai_CH], [TenLoai_CH], [HT_Loai], [Khac_LCH]) VALUES (2, N'40IZ3DS30OYE7757OWUTQEAPSOOQEO8AMU0XRS7576M1S3H6EAAJ4K93K2N8W2J6U8W248RC', N'8D61P9I1VDAL24U916C136XZ8143447L1NG372X33015470A1', 1, NULL)
INSERT [dbo].[Loai_CH] ([ID_LoaiCH], [MaLoai_CH], [TenLoai_CH], [HT_Loai], [Khac_LCH]) VALUES (3, N'173K5Q70LGYAR99ZQ90V786U17QV11D', N'3HT2XOAFZ1YYV4X9OYL8822G3V9M0E4W217D16AM00832LK6JU207', 0, NULL)
INSERT [dbo].[Loai_CH] ([ID_LoaiCH], [MaLoai_CH], [TenLoai_CH], [HT_Loai], [Khac_LCH]) VALUES (4, N'AR1O1PK3I36Z9Q76M49Y25Z401E1DDN8', NULL, 0, N'8')
INSERT [dbo].[Loai_CH] ([ID_LoaiCH], [MaLoai_CH], [TenLoai_CH], [HT_Loai], [Khac_LCH]) VALUES (5, N'168V4B348RIV655NF30Y9RM5', N'UT3', 0, NULL)
INSERT [dbo].[Loai_CH] ([ID_LoaiCH], [MaLoai_CH], [TenLoai_CH], [HT_Loai], [Khac_LCH]) VALUES (6, N'Q0816BYEZ7T12W9AOI767Z9074R3ZA', N'K763Q2U2Q77MX49W363L85XRDS', 1, NULL)
INSERT [dbo].[Loai_CH] ([ID_LoaiCH], [MaLoai_CH], [TenLoai_CH], [HT_Loai], [Khac_LCH]) VALUES (7, N'32', N'672T', 1, NULL)
INSERT [dbo].[Loai_CH] ([ID_LoaiCH], [MaLoai_CH], [TenLoai_CH], [HT_Loai], [Khac_LCH]) VALUES (8, N'DL55W41JXNQ89SW070', N'O9N1HG9632F3JV13', 1, NULL)
INSERT [dbo].[Loai_CH] ([ID_LoaiCH], [MaLoai_CH], [TenLoai_CH], [HT_Loai], [Khac_LCH]) VALUES (9, N'OZ5', N'4MVBJ9S1NGTTX3RQP52J07GSCD7XD6D03E5Q1D8E8', 1, N'F31236524808T183285P009I40D623')
INSERT [dbo].[Loai_CH] ([ID_LoaiCH], [MaLoai_CH], [TenLoai_CH], [HT_Loai], [Khac_LCH]) VALUES (10, N'F457', N'KCA525H8Z85A2B948F6JGY88NIB29Z5N', 1, NULL)
INSERT [dbo].[Loai_CH] ([ID_LoaiCH], [MaLoai_CH], [TenLoai_CH], [HT_Loai], [Khac_LCH]) VALUES (11, N'2570N36J', N'6I979REB060A9KTNL76ZZGH60C46RBXU96D1HE1', 0, NULL)
INSERT [dbo].[Loai_CH] ([ID_LoaiCH], [MaLoai_CH], [TenLoai_CH], [HT_Loai], [Khac_LCH]) VALUES (12, N'V3U769V7ZWBJT', N'72QO2OZ', 1, NULL)
INSERT [dbo].[Loai_CH] ([ID_LoaiCH], [MaLoai_CH], [TenLoai_CH], [HT_Loai], [Khac_LCH]) VALUES (13, N'Z3ZS347P4', N'4M89WV06T0I99', 1, NULL)
INSERT [dbo].[Loai_CH] ([ID_LoaiCH], [MaLoai_CH], [TenLoai_CH], [HT_Loai], [Khac_LCH]) VALUES (14, N'7S843AK7BV6U1D313294LUKR9G44W57BSJD6Y9H2671I752R4V32A271MI2E0QZE1X0Y17784V9', N'2893A12DL780B5HGV2RJ7957KY59LK54XRPR1YP6Z6CLI', 0, NULL)
INSERT [dbo].[Loai_CH] ([ID_LoaiCH], [MaLoai_CH], [TenLoai_CH], [HT_Loai], [Khac_LCH]) VALUES (15, N'O3ZRVG67UEE7', N'741UEW92M78IPV9573ZQ9XF2EH8KAMX90602CP337Y6', 1, NULL)
INSERT [dbo].[Loai_CH] ([ID_LoaiCH], [MaLoai_CH], [TenLoai_CH], [HT_Loai], [Khac_LCH]) VALUES (16, N'14', N'66U25', 0, NULL)
INSERT [dbo].[Loai_CH] ([ID_LoaiCH], [MaLoai_CH], [TenLoai_CH], [HT_Loai], [Khac_LCH]) VALUES (17, N'XO', N'R0D5FF5GLEI79DA26S41P697P2H2OB203M9CP1LD4F25D4M1RM32LT7A9AK1U0X', 0, NULL)
INSERT [dbo].[Loai_CH] ([ID_LoaiCH], [MaLoai_CH], [TenLoai_CH], [HT_Loai], [Khac_LCH]) VALUES (18, N'98W06Z1S88', N'2A11', 0, NULL)
INSERT [dbo].[Loai_CH] ([ID_LoaiCH], [MaLoai_CH], [TenLoai_CH], [HT_Loai], [Khac_LCH]) VALUES (19, N'V52SEZSRC24', N'F868K89868IU584019U528E6MHXIYXV4WX8H86AJ2', 0, NULL)
INSERT [dbo].[Loai_CH] ([ID_LoaiCH], [MaLoai_CH], [TenLoai_CH], [HT_Loai], [Khac_LCH]) VALUES (20, N'5PFPEGK881Q23936253P1N9LMN37YUMTW10F624JRI4', NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[Loai_CH] OFF
SET IDENTITY_INSERT [dbo].[LuaChon] ON 

INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (1, 5, N'51388', 0, 1, N'5', CAST(N'2015-02-15 03:48:00.010' AS DateTime), N'9', CAST(N'2017-06-17 06:56:26.460' AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (2, 6, N'06812', 1, 0, N'6', CAST(N'2017-07-24 06:55:32.020' AS DateTime), N'13', CAST(N'2017-02-23 20:38:14.300' AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (3, 6, N'55984', 0, 0, N'6', CAST(N'2017-01-09 07:04:02.690' AS DateTime), N'19', CAST(N'2016-07-27 13:27:19.010' AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (4, 4, N'84937', 1, 0, N'4', CAST(N'2015-01-22 03:05:40.030' AS DateTime), N'11', CAST(N'2016-01-08 20:53:59.660' AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (5, 9, N'33450', 0, 1, N'9', CAST(N'2018-05-29 06:00:47.550' AS DateTime), N'12', CAST(N'2018-08-28 20:55:55.860' AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (6, 2, N'98217', 0, 0, N'2', CAST(N'2017-04-04 13:47:48.450' AS DateTime), N'12', CAST(N'2016-02-07 19:04:27.520' AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (7, 16, N'28314', 0, 0, N'16', CAST(N'2015-12-20 08:29:39.020' AS DateTime), N'19', CAST(N'2017-09-26 17:20:36.000' AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (8, 7, N'81655', 0, 1, N'7', CAST(N'2018-01-20 19:27:36.450' AS DateTime), N'14', CAST(N'2018-07-16 09:10:08.970' AS DateTime), N'40323E99I6')
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (9, 11, N'42407', 0, 0, N'11', CAST(N'2016-06-29 00:39:48.650' AS DateTime), N'4', CAST(N'2017-11-20 02:23:36.900' AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (10, 6, N'38215', 1, 0, N'6', CAST(N'2016-12-14 14:10:55.660' AS DateTime), N'12', CAST(N'2017-08-04 20:46:20.120' AS DateTime), N'M43CG876V6T0QI5FJON6XG72N29I4Q623A264JQJIN')
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (11, 16, N'90110', 1, 0, N'16', CAST(N'2018-02-13 19:40:18.090' AS DateTime), N'13', CAST(N'2017-02-03 16:39:09.590' AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (12, 13, N'31470', 1, 1, N'13', CAST(N'2017-11-05 13:45:21.450' AS DateTime), N'16', CAST(N'2016-08-12 09:31:24.090' AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (13, 15, N'79271', 1, 0, N'15', CAST(N'2017-07-02 02:45:04.050' AS DateTime), N'12', CAST(N'2016-07-12 22:33:13.990' AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (14, 3, N'50784', 1, 0, N'3', CAST(N'2015-10-27 21:49:33.110' AS DateTime), N'4', CAST(N'2018-02-07 16:22:42.650' AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (15, 20, N'86263', 1, 0, N'20', CAST(N'2018-08-30 00:06:19.150' AS DateTime), N'14', CAST(N'2018-06-26 13:11:32.960' AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (16, 7, N'14040', 0, 1, N'7', CAST(N'2016-07-21 10:23:34.760' AS DateTime), N'3', CAST(N'2016-01-01 20:32:04.480' AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (17, 18, N'87472', 1, 0, N'18', CAST(N'2016-05-16 08:40:44.120' AS DateTime), N'13', CAST(N'2015-02-08 11:01:47.230' AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (18, 10, N'35408', 0, 1, N'10', CAST(N'2016-10-04 16:34:25.130' AS DateTime), N'16', CAST(N'2018-05-06 05:26:29.270' AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (19, 15, N'86185', 0, 0, N'15', CAST(N'2018-08-09 22:57:24.200' AS DateTime), N'11', CAST(N'2018-03-03 10:48:10.700' AS DateTime), NULL)
INSERT [dbo].[LuaChon] ([ID_LUACHON], [ID_CH], [NoiDung_LuaChon], [DapAn], [HT_LuaChon], [NguoiTao_LuaChon], [NgayTao_LuaChon], [NguoiCN_LuaChon], [NgayCN_LuaChon], [Khac_LuaChon]) VALUES (20, 10, N'69323', 1, 0, N'10', CAST(N'2016-03-10 21:30:41.830' AS DateTime), N'17', CAST(N'2015-04-03 07:25:14.750' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[LuaChon] OFF
SET IDENTITY_INSERT [dbo].[ManHinh] ON 

INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHInh], [HT_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (1, N'3W89V0A067WW215425C546XTAX4UQV194V', NULL, 1, N'E9F93PEK2748S09I4JW45A5V65OCV2Z3MX134G5I9X043BB3361B92601G5UV17Z8YX5M0N865T4L6KLPM2K849G7X6TBF8V44EK2Z2D', N'https://www.hisareor.no/shotio/iontiowit/leingnotar.htm', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHInh], [HT_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (2, N'SI86OWU6A7GD67C7106AV67DG890372OX56331S2241X996VH29A88MK5T4P63O87QXS455XU6N0J0O9BK4G6SQQ73Y7MGK', N'MC25XV5B9H81OCTHMI', 1, N'OO1JKC1', N'https://www.thehenallhi.ca/hadbutand/therele/sehen/waan.aspx?id=166', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHInh], [HT_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (3, N'951A78DCR2DE1K8W7N0L8TH0T8Q07J1K607B64EAU7Q91SH56A', NULL, NULL, N'E3R8I8DW8Q4CJXUNNV63ZSHJF9', N'http://teditnd.tr/th/butvethi/sesho/ntheasng.php', N'610T9ZA4TF05GF7PGXSYSDJ2R63')
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHInh], [HT_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (4, N'717255YHS', N'A50J1YJ37L6L9RG30', 1, N'1520W37E9A41PN93JF56QO2W62VC7T97B150EXZ2H30G998Y03U6B07Y0K2J109URKZE4W0JVUULXOU4MO44857EH5Q5K', N'http://nottingou.au/wit/erend/oular/stentteng.htm#19786', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHInh], [HT_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (5, N'PH8N24025LA804X4IDQ21XE6YT', N'08U9423RD9C6T36D6X8', 1, N'84D2I9Z6402N2MCW6W5KXQ', N'http://arhinerall.fi/butaring/but/alleve/ometheerate.html', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHInh], [HT_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (6, N'ST7CAGJZNHND1ZD20TH902767', N'BV', 1, N'V4NY45I', N'http://asinnethi.mx/restan/youwiteden.htm#694', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHInh], [HT_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (7, N'J49471DIN6729M0P7OZPHVZ888NHT', N'48V1K0J921T81C8JC2609259L9NG8V59TO0', 1, N'1XA1PZH18D8OVV339S0PHE52T5OP', N'http://terthionter.uk/heruld/reternd/hentioal/hadndte.php?t=70&p=3040', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHInh], [HT_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (8, N'8O59XD', N'A0P7IUDNNYUK95DDE3QY588V9PB509358XD6184526W15N96G12F8P3LPE483ROB9C', 0, N'58221P64L20MSUB', N'https://www.andhad.net/enulden/verreen/es/atasallan.htm#0', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHInh], [HT_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (9, N'GJ2TW', N'2V', 1, N'1V4JQMMO86C4B9N883G908SN3', N'http://meatoulor.eg/arinte/ntalthe/ingeraar/ionthiouren.php', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHInh], [HT_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (10, N'5E6INVJNK2H89UI67P3J', N'1JT5S1794', 1, N'7P5CR2J68YE6D', N'https://www.ndhatrere.ca/herntan/heronor/nder/entleereha.php?t=30&p=16', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHInh], [HT_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (11, N'VKP9YIZSOWPT37505587B51X', N'828YYV3V8G5Q7ZM', 1, N'187YGA76JOS9759TUOYIOCG7O2M30QEPU4U6K5MVKOH5166SH69A', N'http://www.erawasthan.dk/ithereas/ulderaver/ntbuthe/forhe.php?t=45', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHInh], [HT_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (12, N'883TRHB7091892IVSBE', N'9GXO5R3M5DHU42X8H1G223', 1, N'50HABHP', N'http://www.entonereis.ch/tethiyou/sent.php', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHInh], [HT_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (13, N'QFN3Z0WNAGK', N'M946099C936F1Y74O9A5VX', 0, N'CB7X7KDVR93H', N'http://leonhaden.ua/thme/re/our/teitthor.php', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHInh], [HT_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (14, N'69Z1224129G8U3E3581KQ8FE', N'407', 1, N'AC203I6Q6', N'http://eaveitit.ae/had/thaforeseve.htm#0', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHInh], [HT_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (15, N'ST99Q10IK3CFXOHPZ8I7A3U2JV49BR7F21Z2Q71885V5VN502FW99206Q0R8V1121PC7D90Z5O43A20F3', N'B066V2', 0, N'NP43984FC1X6T6J74XXNDM9S34L4491E8UG9W412VOT4CSS72U3LDC9T62NJ63915RW', N'https://www.terleenwa.it/oulve/setoanthi.asp', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHInh], [HT_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (16, N'4Z4SK', N'8S', 1, N'0O6UUSHIX41P74C3M3A52DMLR214', N'http://atthaas.za/enareand/atne/uldsttiter.asp', N'HMCA7Q15J55K46XWB2N4O33579E7BLTU8LT61Q4')
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHInh], [HT_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (17, N'784I82M4318Z36LOY0E1M1E0Z9DAOWH9EBY8MV2T73476794S6', N'I312QK1VV5', 0, N'I5MB829C97DUJR57473', N'https://itallveis.kr/the/enth/uldthe/enin.php?t=41&p=9502', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHInh], [HT_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (18, N'690M9YO4', N'S8E8FMI93153K9X', 1, N'K1GPVP23MS35KVWT8K67JXZR2U657770B3516VT1BO4T0G3', N'https://anwabuthe.cy/forwahi/th/to/ithth.php', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHInh], [HT_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (19, N'7A460ZD4OK2A0H3754QRRE494E40X4', N'23FE9VP8CS526516G904', 1, N'39F9M348TNJ6STT9EMK7YH80236L5B4S9P1J', N'https://www.seormeth.lu/ereeve/me/ntaste/vereveed.php', NULL)
INSERT [dbo].[ManHinh] ([ID_ManHinh], [MaManHinh], [TenManHInh], [HT_ManHinh], [MoTaManHinh], [URL], [Khac_MaHinh]) VALUES (20, N'M2J5AL63K9J3XU6LO5N1645HV98FRTXJ012G32285VDD', N'J', NULL, N'V63M5U2FEC74PS0886350LWHHDQDKC6TOLFSLO13W941M73B13B920JVJF9O2OU', N'https://www.andoul.tw/shoornd/esthiou/hatwasan/oultha.aspx?id=226', NULL)
SET IDENTITY_INSERT [dbo].[ManHinh] OFF
SET IDENTITY_INSERT [dbo].[MonHoc] ON 

INSERT [dbo].[MonHoc] ([ID_MonHoc], [Ma_MonHoc], [TenMonHoc], [HT_MonHoc], [NguoiTao_MonHoc], [NgayTao_MonHoc], [NguoiCN_MonHoc], [NgayCN_MonHoc], [Khac_MonHoc]) VALUES (1, N'I95Y', N'Z2D9LZ20E12K0VOYM95I5UWF4V9A', 1, N'13', CAST(N'2016-01-06 01:47:39.840' AS DateTime), N'4', CAST(N'2015-02-28 03:17:56.430' AS DateTime), NULL)
INSERT [dbo].[MonHoc] ([ID_MonHoc], [Ma_MonHoc], [TenMonHoc], [HT_MonHoc], [NguoiTao_MonHoc], [NgayTao_MonHoc], [NguoiCN_MonHoc], [NgayCN_MonHoc], [Khac_MonHoc]) VALUES (2, N'IPI', N'07I95DS03A09YXYW43FYLD33DST07H51SKEBO7V', 1, N'14', CAST(N'2016-10-11 23:57:00.920' AS DateTime), N'17', CAST(N'2018-01-29 03:50:28.760' AS DateTime), NULL)
INSERT [dbo].[MonHoc] ([ID_MonHoc], [Ma_MonHoc], [TenMonHoc], [HT_MonHoc], [NguoiTao_MonHoc], [NgayTao_MonHoc], [NguoiCN_MonHoc], [NgayCN_MonHoc], [Khac_MonHoc]) VALUES (3, N'8A0H2G102FZK', N'567X828BP5Z0T1SHUKW39LN2XDN10VS408P5BDBJ', 0, N'18', CAST(N'2017-07-10 04:40:45.920' AS DateTime), N'16', CAST(N'2017-06-12 10:32:36.450' AS DateTime), NULL)
INSERT [dbo].[MonHoc] ([ID_MonHoc], [Ma_MonHoc], [TenMonHoc], [HT_MonHoc], [NguoiTao_MonHoc], [NgayTao_MonHoc], [NguoiCN_MonHoc], [NgayCN_MonHoc], [Khac_MonHoc]) VALUES (4, N'3Z', N'3HN401R3KRD66H8CI15H7A', 0, N'12', CAST(N'2017-07-27 06:05:13.250' AS DateTime), N'3', CAST(N'2016-02-15 01:07:21.370' AS DateTime), NULL)
INSERT [dbo].[MonHoc] ([ID_MonHoc], [Ma_MonHoc], [TenMonHoc], [HT_MonHoc], [NguoiTao_MonHoc], [NgayTao_MonHoc], [NguoiCN_MonHoc], [NgayCN_MonHoc], [Khac_MonHoc]) VALUES (5, N'3R', N'53AT73133NY10VIMU', 1, N'19', CAST(N'2017-10-11 09:36:43.620' AS DateTime), N'17', CAST(N'2016-04-02 21:25:04.000' AS DateTime), NULL)
INSERT [dbo].[MonHoc] ([ID_MonHoc], [Ma_MonHoc], [TenMonHoc], [HT_MonHoc], [NguoiTao_MonHoc], [NgayTao_MonHoc], [NguoiCN_MonHoc], [NgayCN_MonHoc], [Khac_MonHoc]) VALUES (6, N'VZ9', N'379Y1OMF7313O0242I2MPBUP', 0, N'14', CAST(N'2018-03-28 14:40:28.820' AS DateTime), N'12', CAST(N'2018-01-24 07:29:45.340' AS DateTime), NULL)
INSERT [dbo].[MonHoc] ([ID_MonHoc], [Ma_MonHoc], [TenMonHoc], [HT_MonHoc], [NguoiTao_MonHoc], [NgayTao_MonHoc], [NguoiCN_MonHoc], [NgayCN_MonHoc], [Khac_MonHoc]) VALUES (7, N'0II', N'HXI7JOPT9VEVR4KDGNO17782H6V47X80R', 0, N'20', CAST(N'2015-06-10 21:24:00.780' AS DateTime), N'11', CAST(N'2016-02-09 09:03:19.410' AS DateTime), NULL)
INSERT [dbo].[MonHoc] ([ID_MonHoc], [Ma_MonHoc], [TenMonHoc], [HT_MonHoc], [NguoiTao_MonHoc], [NgayTao_MonHoc], [NguoiCN_MonHoc], [NgayCN_MonHoc], [Khac_MonHoc]) VALUES (8, N'S43SPZ9Q930889F98', N'GFX97A5V450A900B1H6Y6MF7525987HS9A48XV8EZ9U0R9S5SJXVCV', 1, N'7', CAST(N'2018-04-13 23:31:42.610' AS DateTime), N'6', CAST(N'2017-08-09 08:08:27.270' AS DateTime), NULL)
INSERT [dbo].[MonHoc] ([ID_MonHoc], [Ma_MonHoc], [TenMonHoc], [HT_MonHoc], [NguoiTao_MonHoc], [NgayTao_MonHoc], [NguoiCN_MonHoc], [NgayCN_MonHoc], [Khac_MonHoc]) VALUES (9, N'LN54WX4KO5M', N'1XSDO8XG3YT07TFYZ91ZP677P5WE6VS3NP45Q9X2AR689MY12PY378QM9', 0, N'16', CAST(N'2017-10-23 11:26:21.180' AS DateTime), N'13', CAST(N'2017-04-14 20:46:49.230' AS DateTime), N'XA81WI0Q970XS08PNPFNV0PX4NL72')
INSERT [dbo].[MonHoc] ([ID_MonHoc], [Ma_MonHoc], [TenMonHoc], [HT_MonHoc], [NguoiTao_MonHoc], [NgayTao_MonHoc], [NguoiCN_MonHoc], [NgayCN_MonHoc], [Khac_MonHoc]) VALUES (10, N'8G', N'9KW', 0, N'20', CAST(N'2017-04-21 11:54:41.770' AS DateTime), N'6', CAST(N'2017-04-02 17:42:34.310' AS DateTime), N'77C5B19CIB730S633XVNV6046')
SET IDENTITY_INSERT [dbo].[MonHoc] OFF
SET IDENTITY_INSERT [dbo].[PhanQuyen] ON 

INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_GV], [CoQuyen], [HT_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (1, 12, 11, 1, 0, CAST(N'2018-04-05 05:38:09.380' AS DateTime), CAST(N'2017-05-28 07:08:26.310' AS DateTime), CAST(N'2017-05-22 22:09:08.290' AS DateTime), N'12', CAST(N'2016-08-08 20:10:48.000' AS DateTime), N'11', CAST(N'2015-04-06 23:19:15.800' AS DateTime), N'8WVP0L0YXMRI77ECG5VR')
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_GV], [CoQuyen], [HT_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (2, 4, 11, 0, 1, CAST(N'2017-05-28 07:25:00.380' AS DateTime), CAST(N'2016-12-28 21:07:43.830' AS DateTime), NULL, N'4', CAST(N'2016-09-05 07:08:22.340' AS DateTime), N'11', CAST(N'2016-03-30 12:37:41.390' AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_GV], [CoQuyen], [HT_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (3, 19, 4, 1, 1, CAST(N'2015-10-12 20:41:15.070' AS DateTime), CAST(N'2015-11-03 04:25:11.680' AS DateTime), CAST(N'2016-07-06 14:19:02.440' AS DateTime), N'19', CAST(N'2015-12-28 06:30:11.060' AS DateTime), N'4', CAST(N'2017-04-20 03:47:36.440' AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_GV], [CoQuyen], [HT_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (4, 9, 20, 0, 1, CAST(N'2015-06-08 15:50:41.380' AS DateTime), CAST(N'2017-10-06 07:43:23.120' AS DateTime), CAST(N'2015-11-29 09:23:53.400' AS DateTime), N'9', CAST(N'2015-01-07 19:06:17.410' AS DateTime), N'20', CAST(N'2018-01-13 03:14:52.860' AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_GV], [CoQuyen], [HT_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (5, 18, 1, 1, 0, CAST(N'2017-10-18 04:59:10.110' AS DateTime), CAST(N'2017-03-31 15:19:51.030' AS DateTime), CAST(N'2015-07-31 09:59:41.720' AS DateTime), N'18', CAST(N'2017-06-04 00:42:23.750' AS DateTime), N'1', CAST(N'2018-04-27 21:30:59.400' AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_GV], [CoQuyen], [HT_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (6, 4, 1, 1, 1, CAST(N'2016-03-10 12:18:13.810' AS DateTime), CAST(N'2016-09-24 23:56:29.530' AS DateTime), CAST(N'2017-02-04 00:52:07.990' AS DateTime), N'4', CAST(N'2015-06-29 13:33:32.420' AS DateTime), N'1', CAST(N'2017-11-06 12:10:16.920' AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_GV], [CoQuyen], [HT_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (7, 5, 12, 0, 1, CAST(N'2015-02-17 16:37:41.500' AS DateTime), CAST(N'2018-04-29 11:27:17.270' AS DateTime), CAST(N'2017-04-21 03:17:10.670' AS DateTime), N'5', CAST(N'2016-04-07 01:52:00.560' AS DateTime), N'12', CAST(N'2017-07-21 03:17:10.490' AS DateTime), N'VYC')
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_GV], [CoQuyen], [HT_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (8, 5, 12, 0, 1, CAST(N'2016-11-05 22:55:37.060' AS DateTime), CAST(N'2017-06-11 08:45:10.150' AS DateTime), CAST(N'2018-05-28 03:59:01.520' AS DateTime), N'5', CAST(N'2015-10-17 20:58:51.140' AS DateTime), N'12', CAST(N'2018-08-20 04:45:25.320' AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_GV], [CoQuyen], [HT_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (9, 19, 4, 1, 1, CAST(N'2015-11-14 19:17:16.090' AS DateTime), CAST(N'2017-07-23 16:36:26.110' AS DateTime), CAST(N'2015-10-19 15:37:21.510' AS DateTime), N'19', CAST(N'2015-02-03 13:11:54.770' AS DateTime), N'4', CAST(N'2017-10-02 17:44:22.010' AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_GV], [CoQuyen], [HT_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (10, 15, 6, 0, 1, CAST(N'2016-09-01 05:26:36.150' AS DateTime), CAST(N'2015-12-04 10:37:29.780' AS DateTime), CAST(N'2016-04-05 16:17:10.960' AS DateTime), N'15', CAST(N'2016-04-30 16:54:53.020' AS DateTime), N'6', CAST(N'2017-06-06 13:16:00.060' AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_GV], [CoQuyen], [HT_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (11, 7, 17, 1, 0, CAST(N'2015-08-01 12:14:29.260' AS DateTime), CAST(N'2018-09-02 12:24:21.000' AS DateTime), CAST(N'2017-07-28 17:13:03.130' AS DateTime), N'7', CAST(N'2016-09-03 12:32:30.340' AS DateTime), N'17', CAST(N'2016-04-15 19:17:45.980' AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_GV], [CoQuyen], [HT_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (12, 11, 18, 0, 0, CAST(N'2018-07-06 14:14:02.400' AS DateTime), CAST(N'2016-06-27 09:54:12.430' AS DateTime), CAST(N'2015-11-10 18:33:23.440' AS DateTime), N'11', CAST(N'2015-06-07 04:59:26.220' AS DateTime), N'18', CAST(N'2018-05-08 10:06:39.990' AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_GV], [CoQuyen], [HT_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (13, 11, 4, 0, 1, CAST(N'2016-09-14 06:21:59.080' AS DateTime), CAST(N'2017-01-05 00:31:05.330' AS DateTime), CAST(N'2018-04-03 09:36:51.580' AS DateTime), N'11', CAST(N'2015-11-27 15:08:27.030' AS DateTime), N'4', CAST(N'2017-07-23 02:53:02.720' AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_GV], [CoQuyen], [HT_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (14, 11, 12, 0, 1, CAST(N'2018-03-20 21:34:31.540' AS DateTime), CAST(N'2017-07-11 21:49:01.920' AS DateTime), CAST(N'2018-05-04 14:00:51.540' AS DateTime), N'11', CAST(N'2015-12-26 20:35:21.640' AS DateTime), N'12', CAST(N'2016-08-25 03:10:27.230' AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_GV], [CoQuyen], [HT_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (15, 7, 8, 0, 1, CAST(N'2015-07-13 19:45:54.040' AS DateTime), CAST(N'2018-06-08 03:51:46.250' AS DateTime), CAST(N'2015-11-24 13:05:14.650' AS DateTime), N'7', CAST(N'2017-08-09 18:20:05.130' AS DateTime), N'8', CAST(N'2015-07-01 21:29:31.540' AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_GV], [CoQuyen], [HT_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (16, 18, 14, 1, 0, CAST(N'2015-02-27 01:10:16.020' AS DateTime), CAST(N'2016-02-22 12:21:16.710' AS DateTime), CAST(N'2017-01-13 21:45:44.260' AS DateTime), N'18', CAST(N'2017-06-17 17:13:08.100' AS DateTime), N'14', CAST(N'2015-12-28 00:39:03.270' AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_GV], [CoQuyen], [HT_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (17, 4, 12, 1, 0, CAST(N'2018-05-15 06:55:16.670' AS DateTime), CAST(N'2017-08-23 06:49:48.860' AS DateTime), CAST(N'2015-09-09 11:35:31.530' AS DateTime), N'4', CAST(N'2017-01-02 16:53:23.540' AS DateTime), N'12', CAST(N'2017-10-18 07:58:40.540' AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_GV], [CoQuyen], [HT_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (18, 18, 12, 0, 0, CAST(N'2015-01-20 21:20:47.920' AS DateTime), CAST(N'2018-03-04 22:30:38.270' AS DateTime), CAST(N'2016-05-11 08:40:11.450' AS DateTime), N'18', CAST(N'2017-03-25 01:10:20.130' AS DateTime), NULL, CAST(N'2015-10-11 03:11:07.090' AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_GV], [CoQuyen], [HT_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (19, 20, 9, 1, 1, CAST(N'2015-05-23 18:02:46.460' AS DateTime), CAST(N'2016-09-01 05:48:42.720' AS DateTime), CAST(N'2017-03-07 03:55:28.590' AS DateTime), N'20', CAST(N'2018-02-25 22:18:30.640' AS DateTime), N'9', CAST(N'2015-11-14 19:19:21.410' AS DateTime), NULL)
INSERT [dbo].[PhanQuyen] ([ID_PhanQuyen], [ID_ManHinh], [ID_GV], [CoQuyen], [HT_PQ], [NgayBD_PQ], [NgayKT_PQ], [NgayKT_TT], [NguoiTao_PQ], [NgayTao_PQ], [NguoiCN_PQ], [NgayCN_PQ], [Khac_PQ]) VALUES (20, 18, 8, 0, 1, CAST(N'2016-04-22 22:35:09.080' AS DateTime), CAST(N'2018-01-06 00:29:30.250' AS DateTime), NULL, N'18', CAST(N'2018-06-26 11:22:06.080' AS DateTime), NULL, CAST(N'2016-09-17 09:47:20.040' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[PhanQuyen] OFF
SET IDENTITY_INSERT [dbo].[ThiSinh] ON 

INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (1, N'S72W61CD', N'Akiko', N'Mccool', N'K2NS3E07', N'1', N'Skipper@example.com', N'09178958142', N'1987 Hidden Edgewood Road, Bismarck, North Dakota, 66711', CAST(N'2000-10-08' AS Date), 0, N'17', CAST(N'2015-12-17 01:59:39.700' AS DateTime), N'16', CAST(N'2018-04-18 05:08:05.750' AS DateTime), NULL)
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (2, N'3H9V65QI', N'Luana', N'Demarco', N'KEB09Z1I', N'1', N'Crowley761@example.com', N'09868443713', N'3113 New Social St, Suite 81, Atlanta, Georgia, 28246', CAST(N'1992-01-02' AS Date), 0, N'11', CAST(N'2015-06-06 07:36:16.700' AS DateTime), N'7', CAST(N'2015-07-28 16:12:13.170' AS DateTime), NULL)
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (3, N'1C48590P', N'Adella', N'Skelton', N'EY7J9179', N'0', N'Efrain_Danner@example.com', N'09093362609', N'1654 East Ironwood Ln, Keith Bldg, Indianapolis, Indiana, 65260', CAST(N'1997-11-27' AS Date), 1, N'7', CAST(N'2016-03-09 19:25:22.140' AS DateTime), N'12', CAST(N'2015-09-13 20:07:25.350' AS DateTime), NULL)
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (4, N'VE243GS7', N'Blossom', N'Acuna', N'3KFOG5Z5', N'0', N'Benedict_Deaton453@example.com', N'09873187265', N'1506 Flintwood Loop, Plaza Building, Richmond, Virginia, 35854', CAST(N'1971-10-08' AS Date), 1, N'8', CAST(N'2016-11-27 00:19:25.020' AS DateTime), N'15', CAST(N'2015-08-04 13:45:15.020' AS DateTime), NULL)
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (5, N'UFUV4V0H', N'Adalberto', N'Gannon', N'L3IH85A4', N'1', N'VickyBelanger@example.com', N'09863988069', N'487 Rockwood Parkway, Trenton, NJ, 06455', CAST(N'2000-05-22' AS Date), 0, N'16', CAST(N'2016-09-30 13:02:22.350' AS DateTime), N'2', CAST(N'2017-12-08 04:19:10.620' AS DateTime), NULL)
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (6, N'6QJY4OIE', N'Adam', N'Kiefer', N'890FTB1E', N'0', N'Vinson@example.com', N'09187064712', N'2267 Red Glenwood Court, Nipper Bldg, Boise, Idaho, 99121', CAST(N'1988-09-16' AS Date), 1, N'4', CAST(N'2015-02-22 18:18:55.100' AS DateTime), N'10', CAST(N'2015-06-17 01:15:57.260' AS DateTime), NULL)
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (7, N'NSWNWFCN', N'Jason', N'Bowser', N'CFREI3RU', N'0', N'Meeker97@example.com', N'09815270527', N'1656 Glenwood Hwy, Des Moines, Iowa, 99666', CAST(N'1979-08-10' AS Date), 1, N'5', CAST(N'2017-05-04 22:39:07.350' AS DateTime), N'4', CAST(N'2015-10-05 11:18:22.230' AS DateTime), NULL)
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (8, N'0979T687', N'Dirk', N'Paquette', N'B696JLWO', N'0', N'Abernathy@example.com', N'09008631644', N'40 E Church Lane, Keith Building, Helena, Montana, 64222', CAST(N'1970-07-29' AS Date), 1, N'16', CAST(N'2018-03-06 05:52:46.450' AS DateTime), N'15', CAST(N'2017-02-16 03:22:03.740' AS DateTime), NULL)
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (9, N'35S2Q5TS', N'Nola', N'Walden', N'0497614A', N'1', N'Crowley432@example.com', N'09891113101', N'77 Fox Hill Avenue, Jefferson City, MO, 85361', CAST(N'2006-01-27' AS Date), 1, N'9', CAST(N'2015-07-24 10:29:04.880' AS DateTime), N'2', CAST(N'2015-05-26 19:47:39.380' AS DateTime), NULL)
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (10, N'359AB3U7', N'Tabetha', N'Mccord', N'1BL002FR', N'1', N'jvmzhv9687@nowhere.com', N'09004961390', N'317 SW Meadowview Highway, Harrisburg, Pennsylvania, 74730', CAST(N'1987-07-30' AS Date), 1, N'5', CAST(N'2016-06-21 15:11:34.760' AS DateTime), N'12', CAST(N'2016-08-11 22:20:59.010' AS DateTime), NULL)
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (11, N'9G20FE5L', N'Modesto', N'Paradis', N'JDZA3F93', N'1', N'LexieI.Antoine6@example.com', N'09012308854', N'833 Hazelwood Blvd, Calyon Bldg, Phoenix, Arizona, 08895', CAST(N'1970-03-19' AS Date), 1, N'10', CAST(N'2016-11-26 13:23:27.870' AS DateTime), N'3', CAST(N'2015-12-06 09:06:16.080' AS DateTime), NULL)
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (12, N'SED719ZY', N'Casey', N'Adair', N'7Z9E206V', N'0', N'JacindaI.Fredrickson321@example.com', N'09129417727', N'86 Burwood Ct, 3rd FL, Concord, NH, 41508', CAST(N'1981-04-15' AS Date), 1, N'3', CAST(N'2015-11-28 19:16:02.840' AS DateTime), N'6', CAST(N'2016-03-23 16:06:46.340' AS DateTime), NULL)
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (13, N'668T9Z83', N'Levi', N'Mccorkle', N'U30LD2R1', N'0', N'AdelinaRaines8@nowhere.com', N'09890192073', N'184 Rock Hill Blvd, Enquirer Bldg, Honolulu, HI, 26162', CAST(N'1999-12-28' AS Date), 1, N'10', CAST(N'2016-11-02 23:48:54.870' AS DateTime), N'15', CAST(N'2016-02-28 07:43:43.740' AS DateTime), NULL)
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (14, N'GK50FK3X', N'Ted', N'Paredes', N'6X2NAPCA', N'1', N'Murrell374@example.com', N'09104901462', N'2408 N Quailwood Road, 99th Floor, Trenton, New Jersey, 75279', CAST(N'1999-03-31' AS Date), 1, N'12', CAST(N'2015-09-27 02:18:47.900' AS DateTime), N'12', NULL, NULL)
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (15, N'A3BU05NU', N'Wenona', N'Box', N'5X5LSF5X', N'0', N'Rodney_Chamberlain354@example.com', N'09167152888', N'3666 South Ironwood Rd, Hartford, CT, 03300', CAST(N'1996-11-17' AS Date), 1, N'12', CAST(N'2015-01-19 06:09:00.820' AS DateTime), N'6', CAST(N'2016-02-13 00:56:58.510' AS DateTime), NULL)
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (16, N'700B946T', N'Aletha', N'Adam', N'R324TRHF', N'0', N'Boren@example.com', N'09850963989', N'1247 New Rushwood Ct, Boise, Idaho, 14574', CAST(N'2007-09-13' AS Date), 0, N'13', CAST(N'2016-05-18 22:49:43.010' AS DateTime), N'17', CAST(N'2015-05-24 01:19:49.290' AS DateTime), NULL)
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (17, N'32BEQ981', N'Bethel', N'Mcarthur', N'8I46H5QH', N'0', N'Louetta.Marin@example.com', N'09176446905', N'547 White Social Hwy, Honolulu, HI, 36985', CAST(N'1971-10-17' AS Date), 1, N'3', CAST(N'2016-08-24 00:35:12.890' AS DateTime), N'19', CAST(N'2018-07-23 09:46:52.530' AS DateTime), N'5')
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (18, N'R651YI0O', N'Jeremiah', N'Boyce', N'3V69G7Q1', N'0', N'Bueno@example.com', N'09025221587', N'488 Meadowview Ct, Victor Executive Building, Honolulu, HI, 21426', CAST(N'1970-01-03' AS Date), 1, N'6', CAST(N'2016-05-12 00:53:38.960' AS DateTime), N'20', CAST(N'2017-09-27 21:53:07.710' AS DateTime), N'0860Y1B3IOD9K5YCDZNSR9Y0KH07CV21458T')
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (19, N'LJR5I0SA', N'Adaline', N'Skidmore', N'91Q35P03', N'1', N'lmcdwzzw8652@nowhere.com', N'09040859408', N'3885 Farmview Road, Equitable Bldg, Bismarck, ND, 55466', CAST(N'1970-01-29' AS Date), 1, N'19', CAST(N'2017-11-29 01:17:32.710' AS DateTime), N'3', CAST(N'2017-03-14 13:59:44.070' AS DateTime), N'K6KJ18P')
INSERT [dbo].[ThiSinh] ([ID_TK], [MADN_TS], [Ho_ThiSinh], [Ten_ThiSinh], [MatKhau_ThiSinh], [GioiTinh_ThiSinh], [Email_ThiSinh], [DienThoai_ThiSinh], [DiaChi_ThiSinh], [NgaySinh_ThiSinh], [HT_ThiSinh], [NguoiTao_ThiSinh], [NgayTao_ThiSinh], [NguoiCN_ThiSinh], [NgayCN_ThiSinh], [Khac_ThiSinh]) VALUES (20, N'ZU750VB5', N'Willian', N'Kilgore', N'0QR484W8', N'0', N'hracdbyi_ovbxwtxsoq@example.com', N'09122395541', N'86 White Woodcock Court, Little Rock, AR, 43992', CAST(N'1973-07-13' AS Date), 1, N'14', CAST(N'2016-02-13 17:47:34.500' AS DateTime), N'17', NULL, N'SZL1MLX362309R7CZQJH8M634K40U35Y707O1AS4N8')
SET IDENTITY_INSERT [dbo].[ThiSinh] OFF
/****** Object:  Index [PK_BAITHI]    Script Date: 9/4/2018 10:09:30 AM ******/
ALTER TABLE [dbo].[BaiThi] ADD  CONSTRAINT [PK_BAITHI] PRIMARY KEY NONCLUSTERED 
(
	[ID_BAITHI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [AK_IDENTIFIER_2_BAITHI]    Script Date: 9/4/2018 10:09:30 AM ******/
ALTER TABLE [dbo].[BaiThi] ADD  CONSTRAINT [AK_IDENTIFIER_2_BAITHI] UNIQUE NONCLUSTERED 
(
	[Ma_BaiThi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [RELATIONSHIP_13_FK]    Script Date: 9/4/2018 10:09:30 AM ******/
CREATE NONCLUSTERED INDEX [RELATIONSHIP_13_FK] ON [dbo].[BaiThi]
(
	[ID_DANGKY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [THUOC_FK]    Script Date: 9/4/2018 10:09:30 AM ******/
CREATE NONCLUSTERED INDEX [THUOC_FK] ON [dbo].[BaiThi]
(
	[ID_DE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_CAUHOI]    Script Date: 9/4/2018 10:09:30 AM ******/
ALTER TABLE [dbo].[CauHoi] ADD  CONSTRAINT [PK_CAUHOI] PRIMARY KEY NONCLUSTERED 
(
	[ID_CH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CO_FK]    Script Date: 9/4/2018 10:09:30 AM ******/
CREATE NONCLUSTERED INDEX [CO_FK] ON [dbo].[CauHoi]
(
	[ID_DeMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [THUOCLOAI_FK]    Script Date: 9/4/2018 10:09:30 AM ******/
CREATE NONCLUSTERED INDEX [THUOCLOAI_FK] ON [dbo].[CauHoi]
(
	[ID_LoaiCH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_CHITIET_BAITHI]    Script Date: 9/4/2018 10:09:30 AM ******/
ALTER TABLE [dbo].[ChiTiet_BaiThi] ADD  CONSTRAINT [PK_CHITIET_BAITHI] PRIMARY KEY NONCLUSTERED 
(
	[ID_CTBAITHI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__ChiTiet___B4DD3223CDFEBFBA]    Script Date: 9/4/2018 10:09:30 AM ******/
ALTER TABLE [dbo].[ChiTiet_BaiThi] ADD UNIQUE NONCLUSTERED 
(
	[ThuTu_CH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CO1_FK]    Script Date: 9/4/2018 10:09:30 AM ******/
CREATE NONCLUSTERED INDEX [CO1_FK] ON [dbo].[ChiTiet_BaiThi]
(
	[ID_BAITHI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_CHITIET_DETHI]    Script Date: 9/4/2018 10:09:30 AM ******/
ALTER TABLE [dbo].[ChiTiet_DeThi] ADD  CONSTRAINT [PK_CHITIET_DETHI] PRIMARY KEY NONCLUSTERED 
(
	[ID_CTDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__ChiTiet___C25060AE7D3584C8]    Script Date: 9/4/2018 10:09:30 AM ******/
ALTER TABLE [dbo].[ChiTiet_DeThi] ADD UNIQUE NONCLUSTERED 
(
	[ThuTu_DeThi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [SOHUUDETHI_FK]    Script Date: 9/4/2018 10:09:30 AM ******/
CREATE NONCLUSTERED INDEX [SOHUUDETHI_FK] ON [dbo].[ChiTiet_DeThi]
(
	[ID_DE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [TRONG_FK]    Script Date: 9/4/2018 10:09:30 AM ******/
CREATE NONCLUSTERED INDEX [TRONG_FK] ON [dbo].[ChiTiet_DeThi]
(
	[ID_CH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_DANGKY]    Script Date: 9/4/2018 10:09:30 AM ******/
ALTER TABLE [dbo].[DangKy] ADD  CONSTRAINT [PK_DANGKY] PRIMARY KEY NONCLUSTERED 
(
	[ID_DANGKY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [DANGKY_FK]    Script Date: 9/4/2018 10:09:30 AM ******/
CREATE NONCLUSTERED INDEX [DANGKY_FK] ON [dbo].[DangKy]
(
	[ID_TK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [MH_MT_FK]    Script Date: 9/4/2018 10:09:30 AM ******/
CREATE NONCLUSTERED INDEX [MH_MT_FK] ON [dbo].[DangKy]
(
	[ID_MonHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_DANHSACH_DETHI]    Script Date: 9/4/2018 10:09:30 AM ******/
ALTER TABLE [dbo].[DanhSach_DeThi] ADD  CONSTRAINT [PK_DANHSACH_DETHI] PRIMARY KEY NONCLUSTERED 
(
	[ID_DE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__DanhSach__0EBE1DBDDC1BA8CC]    Script Date: 9/4/2018 10:09:30 AM ******/
ALTER TABLE [dbo].[DanhSach_DeThi] ADD UNIQUE NONCLUSTERED 
(
	[Ma_DeThi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CODSDETHI_FK]    Script Date: 9/4/2018 10:09:30 AM ******/
CREATE NONCLUSTERED INDEX [CODSDETHI_FK] ON [dbo].[DanhSach_DeThi]
(
	[ID_MonHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_DEMUC]    Script Date: 9/4/2018 10:09:30 AM ******/
ALTER TABLE [dbo].[DeMuc] ADD  CONSTRAINT [PK_DEMUC] PRIMARY KEY NONCLUSTERED 
(
	[ID_DeMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__DeMuc__0C1E4F27E4BDFE60]    Script Date: 9/4/2018 10:09:30 AM ******/
ALTER TABLE [dbo].[DeMuc] ADD UNIQUE NONCLUSTERED 
(
	[Ma_DeMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CODEMUC_FK]    Script Date: 9/4/2018 10:09:30 AM ******/
CREATE NONCLUSTERED INDEX [CODEMUC_FK] ON [dbo].[DeMuc]
(
	[ID_MonHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_GIANGDAY]    Script Date: 9/4/2018 10:09:30 AM ******/
ALTER TABLE [dbo].[GiangDay] ADD  CONSTRAINT [PK_GIANGDAY] PRIMARY KEY NONCLUSTERED 
(
	[ID_GIANGDAY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [DAY_FK]    Script Date: 9/4/2018 10:09:30 AM ******/
CREATE NONCLUSTERED INDEX [DAY_FK] ON [dbo].[GiangDay]
(
	[ID_GV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [DUOCNHANBOI_FK]    Script Date: 9/4/2018 10:09:30 AM ******/
CREATE NONCLUSTERED INDEX [DUOCNHANBOI_FK] ON [dbo].[GiangDay]
(
	[ID_MonHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_GIAOVIEN]    Script Date: 9/4/2018 10:09:30 AM ******/
ALTER TABLE [dbo].[GiaoVien] ADD  CONSTRAINT [PK_GIAOVIEN] PRIMARY KEY NONCLUSTERED 
(
	[ID_GV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [AK_IDENTIFIER_2_GIAOVIEN]    Script Date: 9/4/2018 10:09:30 AM ******/
ALTER TABLE [dbo].[GiaoVien] ADD  CONSTRAINT [AK_IDENTIFIER_2_GIAOVIEN] UNIQUE NONCLUSTERED 
(
	[MADN_GV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__GiaoVien__01CEA1779C993962]    Script Date: 9/4/2018 10:09:30 AM ******/
ALTER TABLE [dbo].[GiaoVien] ADD  CONSTRAINT [UQ__GiaoVien__01CEA1779C993962] UNIQUE NONCLUSTERED 
(
	[MADN_GV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_LICHSU_CH]    Script Date: 9/4/2018 10:09:30 AM ******/
ALTER TABLE [dbo].[LichSu_CH] ADD  CONSTRAINT [PK_LICHSU_CH] PRIMARY KEY NONCLUSTERED 
(
	[ID_LS_CH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CAPNHAT_CH_FK]    Script Date: 9/4/2018 10:09:30 AM ******/
CREATE NONCLUSTERED INDEX [CAPNHAT_CH_FK] ON [dbo].[LichSu_CH]
(
	[ID_CH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_LICHSU_LC]    Script Date: 9/4/2018 10:09:30 AM ******/
ALTER TABLE [dbo].[LichSu_LC] ADD  CONSTRAINT [PK_LICHSU_LC] PRIMARY KEY NONCLUSTERED 
(
	[ID_LS_LC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CAPNHAT_LC_FK]    Script Date: 9/4/2018 10:09:30 AM ******/
CREATE NONCLUSTERED INDEX [CAPNHAT_LC_FK] ON [dbo].[LichSu_LC]
(
	[ID_LUACHON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_LOAI_CH]    Script Date: 9/4/2018 10:09:30 AM ******/
ALTER TABLE [dbo].[Loai_CH] ADD  CONSTRAINT [PK_LOAI_CH] PRIMARY KEY NONCLUSTERED 
(
	[ID_LoaiCH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [AK_IDENTIFIER_2_LOAI_CH]    Script Date: 9/4/2018 10:09:30 AM ******/
ALTER TABLE [dbo].[Loai_CH] ADD  CONSTRAINT [AK_IDENTIFIER_2_LOAI_CH] UNIQUE NONCLUSTERED 
(
	[MaLoai_CH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_LUACHON]    Script Date: 9/4/2018 10:09:30 AM ******/
ALTER TABLE [dbo].[LuaChon] ADD  CONSTRAINT [PK_LUACHON] PRIMARY KEY NONCLUSTERED 
(
	[ID_LUACHON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [SOHUU_FK]    Script Date: 9/4/2018 10:09:30 AM ******/
CREATE NONCLUSTERED INDEX [SOHUU_FK] ON [dbo].[LuaChon]
(
	[ID_CH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_MANHINH]    Script Date: 9/4/2018 10:09:30 AM ******/
ALTER TABLE [dbo].[ManHinh] ADD  CONSTRAINT [PK_MANHINH] PRIMARY KEY NONCLUSTERED 
(
	[ID_ManHinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [AK_IDENTIFIER_2_MANHINH]    Script Date: 9/4/2018 10:09:30 AM ******/
ALTER TABLE [dbo].[ManHinh] ADD  CONSTRAINT [AK_IDENTIFIER_2_MANHINH] UNIQUE NONCLUSTERED 
(
	[URL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_MONHOC]    Script Date: 9/4/2018 10:09:30 AM ******/
ALTER TABLE [dbo].[MonHoc] ADD  CONSTRAINT [PK_MONHOC] PRIMARY KEY NONCLUSTERED 
(
	[ID_MonHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__MonHoc__3924C9EB491260B9]    Script Date: 9/4/2018 10:09:30 AM ******/
ALTER TABLE [dbo].[MonHoc] ADD UNIQUE NONCLUSTERED 
(
	[Ma_MonHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_PHANQUYEN]    Script Date: 9/4/2018 10:09:30 AM ******/
ALTER TABLE [dbo].[PhanQuyen] ADD  CONSTRAINT [PK_PHANQUYEN] PRIMARY KEY NONCLUSTERED 
(
	[ID_PhanQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PQ_GV_FK]    Script Date: 9/4/2018 10:09:30 AM ******/
CREATE NONCLUSTERED INDEX [PQ_GV_FK] ON [dbo].[PhanQuyen]
(
	[ID_GV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [RELATIONSHIP_16_FK]    Script Date: 9/4/2018 10:09:30 AM ******/
CREATE NONCLUSTERED INDEX [RELATIONSHIP_16_FK] ON [dbo].[PhanQuyen]
(
	[ID_ManHinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_THISINH]    Script Date: 9/4/2018 10:09:30 AM ******/
ALTER TABLE [dbo].[ThiSinh] ADD  CONSTRAINT [PK_THISINH] PRIMARY KEY NONCLUSTERED 
(
	[ID_TK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [AK_IDENTIFIER_2_THISINH]    Script Date: 9/4/2018 10:09:30 AM ******/
ALTER TABLE [dbo].[ThiSinh] ADD  CONSTRAINT [AK_IDENTIFIER_2_THISINH] UNIQUE NONCLUSTERED 
(
	[MADN_TS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BaiThi] ADD  DEFAULT ((1)) FOR [HT_BaiThi]
GO
ALTER TABLE [dbo].[CauHoi] ADD  DEFAULT ((1)) FOR [TrangThaiTron_CauHoi]
GO
ALTER TABLE [dbo].[CauHoi] ADD  DEFAULT ((1)) FOR [HT_CauHoi]
GO
ALTER TABLE [dbo].[CauHoi] ADD  DEFAULT ((0)) FOR [Diem_CauHoi]
GO
ALTER TABLE [dbo].[CauHoi] ADD  DEFAULT (getdate()) FOR [NgayTao_CauHoi]
GO
ALTER TABLE [dbo].[ChiTiet_BaiThi] ADD  DEFAULT ((1)) FOR [HT_ChiTiet_BaiThi]
GO
ALTER TABLE [dbo].[DangKy] ADD  DEFAULT (getdate()) FOR [Ngay_DangKy]
GO
ALTER TABLE [dbo].[DangKy] ADD  DEFAULT ((0)) FOR [CamThi]
GO
ALTER TABLE [dbo].[DanhSach_DeThi] ADD  DEFAULT ((1)) FOR [TrangThai_DeThi]
GO
ALTER TABLE [dbo].[DanhSach_DeThi] ADD  DEFAULT ((1)) FOR [TrangThai_Tron_DeThi]
GO
ALTER TABLE [dbo].[DanhSach_DeThi] ADD  DEFAULT ((1)) FOR [HT_DeThi]
GO
ALTER TABLE [dbo].[DanhSach_DeThi] ADD  DEFAULT (getdate()) FOR [NgayBatDau_SuDung]
GO
ALTER TABLE [dbo].[DanhSach_DeThi] ADD  DEFAULT (getdate()) FOR [NgayTao_DeThi]
GO
ALTER TABLE [dbo].[DeMuc] ADD  DEFAULT ((1)) FOR [HT_DeMuc]
GO
ALTER TABLE [dbo].[DeMuc] ADD  DEFAULT (getdate()) FOR [NgayTao_DM]
GO
ALTER TABLE [dbo].[GiangDay] ADD  CONSTRAINT [DF__GiangDay__NgayBa__34C8D9D1]  DEFAULT (getdate()) FOR [NgayBatDau_GiangDay]
GO
ALTER TABLE [dbo].[GiangDay] ADD  CONSTRAINT [DF__GiangDay__HT_Gia__35BCFE0A]  DEFAULT ((1)) FOR [HT_GiangDay]
GO
ALTER TABLE [dbo].[GiaoVien] ADD  CONSTRAINT [DF__GiaoVien__HT_GV__3B75D760]  DEFAULT ((1)) FOR [HT_GV]
GO
ALTER TABLE [dbo].[GiaoVien] ADD  CONSTRAINT [DF__GiaoVien__NgayTa__3C69FB99]  DEFAULT (getdate()) FOR [NgayTao_GV]
GO
ALTER TABLE [dbo].[Loai_CH] ADD  DEFAULT ((1)) FOR [HT_Loai]
GO
ALTER TABLE [dbo].[LuaChon] ADD  DEFAULT ((0)) FOR [DapAn]
GO
ALTER TABLE [dbo].[LuaChon] ADD  DEFAULT ((1)) FOR [HT_LuaChon]
GO
ALTER TABLE [dbo].[LuaChon] ADD  DEFAULT (getdate()) FOR [NgayTao_LuaChon]
GO
ALTER TABLE [dbo].[ManHinh] ADD  DEFAULT ((1)) FOR [HT_ManHinh]
GO
ALTER TABLE [dbo].[MonHoc] ADD  DEFAULT ((1)) FOR [HT_MonHoc]
GO
ALTER TABLE [dbo].[MonHoc] ADD  DEFAULT (getdate()) FOR [NgayTao_MonHoc]
GO
ALTER TABLE [dbo].[PhanQuyen] ADD  DEFAULT ((1)) FOR [CoQuyen]
GO
ALTER TABLE [dbo].[PhanQuyen] ADD  DEFAULT ((1)) FOR [HT_PQ]
GO
ALTER TABLE [dbo].[PhanQuyen] ADD  DEFAULT (getdate()) FOR [NgayBD_PQ]
GO
ALTER TABLE [dbo].[PhanQuyen] ADD  DEFAULT (getdate()) FOR [NgayTao_PQ]
GO
ALTER TABLE [dbo].[ThiSinh] ADD  DEFAULT ((1)) FOR [HT_ThiSinh]
GO
ALTER TABLE [dbo].[ThiSinh] ADD  DEFAULT (getdate()) FOR [NgayTao_ThiSinh]
GO
ALTER TABLE [dbo].[BaiThi]  WITH NOCHECK ADD  CONSTRAINT [FK_BAITHI_RELATIONS_DANGKY] FOREIGN KEY([ID_DANGKY])
REFERENCES [dbo].[DangKy] ([ID_DANGKY])
GO
ALTER TABLE [dbo].[BaiThi] CHECK CONSTRAINT [FK_BAITHI_RELATIONS_DANGKY]
GO
ALTER TABLE [dbo].[BaiThi]  WITH NOCHECK ADD  CONSTRAINT [FK_BAITHI_THUOC_DANHSACH] FOREIGN KEY([ID_DE])
REFERENCES [dbo].[DanhSach_DeThi] ([ID_DE])
GO
ALTER TABLE [dbo].[BaiThi] CHECK CONSTRAINT [FK_BAITHI_THUOC_DANHSACH]
GO
ALTER TABLE [dbo].[CauHoi]  WITH NOCHECK ADD  CONSTRAINT [FK_CAUHOI_CO_DEMUC] FOREIGN KEY([ID_DeMuc])
REFERENCES [dbo].[DeMuc] ([ID_DeMuc])
GO
ALTER TABLE [dbo].[CauHoi] CHECK CONSTRAINT [FK_CAUHOI_CO_DEMUC]
GO
ALTER TABLE [dbo].[CauHoi]  WITH NOCHECK ADD  CONSTRAINT [FK_CAUHOI_THUOCLOAI_LOAI_CH] FOREIGN KEY([ID_LoaiCH])
REFERENCES [dbo].[Loai_CH] ([ID_LoaiCH])
GO
ALTER TABLE [dbo].[CauHoi] CHECK CONSTRAINT [FK_CAUHOI_THUOCLOAI_LOAI_CH]
GO
ALTER TABLE [dbo].[ChiTiet_BaiThi]  WITH NOCHECK ADD  CONSTRAINT [FK_CHITIET__CO1_BAITHI] FOREIGN KEY([ID_BAITHI])
REFERENCES [dbo].[BaiThi] ([ID_BAITHI])
GO
ALTER TABLE [dbo].[ChiTiet_BaiThi] CHECK CONSTRAINT [FK_CHITIET__CO1_BAITHI]
GO
ALTER TABLE [dbo].[ChiTiet_DeThi]  WITH NOCHECK ADD  CONSTRAINT [FK_CHITIET__SOHUUDETH_DANHSACH] FOREIGN KEY([ID_DE])
REFERENCES [dbo].[DanhSach_DeThi] ([ID_DE])
GO
ALTER TABLE [dbo].[ChiTiet_DeThi] CHECK CONSTRAINT [FK_CHITIET__SOHUUDETH_DANHSACH]
GO
ALTER TABLE [dbo].[ChiTiet_DeThi]  WITH NOCHECK ADD  CONSTRAINT [FK_CHITIET__TRONG_CAUHOI] FOREIGN KEY([ID_CH])
REFERENCES [dbo].[CauHoi] ([ID_CH])
GO
ALTER TABLE [dbo].[ChiTiet_DeThi] CHECK CONSTRAINT [FK_CHITIET__TRONG_CAUHOI]
GO
ALTER TABLE [dbo].[DangKy]  WITH NOCHECK ADD  CONSTRAINT [FK_DANGKY_DANGKY_THISINH] FOREIGN KEY([ID_TK])
REFERENCES [dbo].[ThiSinh] ([ID_TK])
GO
ALTER TABLE [dbo].[DangKy] CHECK CONSTRAINT [FK_DANGKY_DANGKY_THISINH]
GO
ALTER TABLE [dbo].[DangKy]  WITH NOCHECK ADD  CONSTRAINT [FK_DANGKY_MH_MT_MONHOC] FOREIGN KEY([ID_MonHoc])
REFERENCES [dbo].[MonHoc] ([ID_MonHoc])
GO
ALTER TABLE [dbo].[DangKy] CHECK CONSTRAINT [FK_DANGKY_MH_MT_MONHOC]
GO
ALTER TABLE [dbo].[DanhSach_DeThi]  WITH NOCHECK ADD  CONSTRAINT [FK_DANHSACH_CODSDETHI_MONHOC] FOREIGN KEY([ID_MonHoc])
REFERENCES [dbo].[MonHoc] ([ID_MonHoc])
GO
ALTER TABLE [dbo].[DanhSach_DeThi] CHECK CONSTRAINT [FK_DANHSACH_CODSDETHI_MONHOC]
GO
ALTER TABLE [dbo].[DeMuc]  WITH NOCHECK ADD  CONSTRAINT [FK_DEMUC_CODEMUC_MONHOC] FOREIGN KEY([ID_MonHoc])
REFERENCES [dbo].[MonHoc] ([ID_MonHoc])
GO
ALTER TABLE [dbo].[DeMuc] CHECK CONSTRAINT [FK_DEMUC_CODEMUC_MONHOC]
GO
ALTER TABLE [dbo].[GiangDay]  WITH NOCHECK ADD  CONSTRAINT [FK_GIANGDAY_DAY_GIAOVIEN] FOREIGN KEY([ID_GV])
REFERENCES [dbo].[GiaoVien] ([ID_GV])
GO
ALTER TABLE [dbo].[GiangDay] CHECK CONSTRAINT [FK_GIANGDAY_DAY_GIAOVIEN]
GO
ALTER TABLE [dbo].[GiangDay]  WITH NOCHECK ADD  CONSTRAINT [FK_GIANGDAY_DUOCNHANB_MONHOC] FOREIGN KEY([ID_MonHoc])
REFERENCES [dbo].[MonHoc] ([ID_MonHoc])
GO
ALTER TABLE [dbo].[GiangDay] CHECK CONSTRAINT [FK_GIANGDAY_DUOCNHANB_MONHOC]
GO
ALTER TABLE [dbo].[LichSu_CH]  WITH NOCHECK ADD  CONSTRAINT [FK_LICHSU_C_CAPNHAT_C_CAUHOI] FOREIGN KEY([ID_CH])
REFERENCES [dbo].[CauHoi] ([ID_CH])
GO
ALTER TABLE [dbo].[LichSu_CH] CHECK CONSTRAINT [FK_LICHSU_C_CAPNHAT_C_CAUHOI]
GO
ALTER TABLE [dbo].[LichSu_LC]  WITH NOCHECK ADD  CONSTRAINT [FK_LICHSU_L_CAPNHAT_L_LUACHON] FOREIGN KEY([ID_LUACHON])
REFERENCES [dbo].[LuaChon] ([ID_LUACHON])
GO
ALTER TABLE [dbo].[LichSu_LC] CHECK CONSTRAINT [FK_LICHSU_L_CAPNHAT_L_LUACHON]
GO
ALTER TABLE [dbo].[LuaChon]  WITH NOCHECK ADD  CONSTRAINT [FK_LUACHON_SOHUU_CAUHOI] FOREIGN KEY([ID_CH])
REFERENCES [dbo].[CauHoi] ([ID_CH])
GO
ALTER TABLE [dbo].[LuaChon] CHECK CONSTRAINT [FK_LUACHON_SOHUU_CAUHOI]
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH NOCHECK ADD  CONSTRAINT [FK_PHANQUYE_PQ_GV_GIAOVIEN] FOREIGN KEY([ID_GV])
REFERENCES [dbo].[GiaoVien] ([ID_GV])
GO
ALTER TABLE [dbo].[PhanQuyen] CHECK CONSTRAINT [FK_PHANQUYE_PQ_GV_GIAOVIEN]
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH NOCHECK ADD  CONSTRAINT [FK_PHANQUYE_RELATIONS_MANHINH] FOREIGN KEY([ID_ManHinh])
REFERENCES [dbo].[ManHinh] ([ID_ManHinh])
GO
ALTER TABLE [dbo].[PhanQuyen] CHECK CONSTRAINT [FK_PHANQUYE_RELATIONS_MANHINH]
GO
ALTER TABLE [dbo].[CauHoi]  WITH NOCHECK ADD CHECK  (([CapDo]>=(0) AND [CapDo]<=(9)))
GO
ALTER TABLE [dbo].[ChiTiet_BaiThi]  WITH NOCHECK ADD CHECK  (([Diem_BaiThi]>=(0.0) AND [Diem_BaiThi]<=(0.5)))
GO
ALTER TABLE [dbo].[ChiTiet_BaiThi]  WITH NOCHECK ADD CHECK  (([Diem_BaiThi]>=(0.0) AND [Diem_BaiThi]<=(0.5)))
GO
ALTER TABLE [dbo].[ChiTiet_BaiThi]  WITH NOCHECK ADD CHECK  (([Diem_BaiThi]>=(0) AND [Diem_BaiThi]<=(10)))
GO
ALTER TABLE [dbo].[ChiTiet_DeThi]  WITH NOCHECK ADD CHECK  (([ThoiGianConLai]>=(0)))
GO
ALTER TABLE [dbo].[DanhSach_DeThi]  WITH NOCHECK ADD CHECK  (([ThoiGianLamBai]>=(0)))
GO
ALTER TABLE [dbo].[GiaoVien]  WITH NOCHECK ADD  CONSTRAINT [CK__GiaoVien__NgaySi__3A81B327] CHECK  ((datediff(year,[NgaySinh_GV],getdate())>=(23)))
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [CK__GiaoVien__NgaySi__3A81B327]
GO
ALTER TABLE [dbo].[LichSu_CH]  WITH NOCHECK ADD CHECK  (([CapDoCH_Cu]>=(0) AND [CapDoCH_Cu]<=(9)))
GO
ALTER TABLE [dbo].[LichSu_CH]  WITH NOCHECK ADD CHECK  (([CapDoCH_Moi]>=(0) AND [CapDoCH_Moi]<=(9)))
GO
ALTER TABLE [dbo].[LichSu_CH]  WITH NOCHECK ADD CHECK  (([DiemCH_Cu]>=(0.15) AND [DiemCH_Cu]<=(0.5)))
GO
ALTER TABLE [dbo].[LichSu_CH]  WITH NOCHECK ADD CHECK  (([DiemCH_Moi]>=(0.15) AND [DiemCH_Moi]<=(0.5)))
GO
ALTER TABLE [dbo].[ThiSinh]  WITH NOCHECK ADD CHECK  ((datediff(year,[NgaySinh_ThiSinh],getdate())>=(5)))
GO
USE [master]
GO
ALTER DATABASE [test] SET  READ_WRITE 
GO
