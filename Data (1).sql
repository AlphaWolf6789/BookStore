CREATE DATABASE [QL_Sach]
GO
USE [QL_Sach]
GO
--Tạo bảng TacGia
CREATE TABLE [dbo].[TacGia](
[MaTacGia] [nchar](10) NOT NULL PRIMARY KEY,
[TenTacGia] [nvarchar](50) NULL)
GO
--Tạo bảng Sach
CREATE TABLE [dbo].[Sach](
[MaSach] [nchar](10) NOT NULL PRIMARY KEY,
[TenSach] [nvarchar](50) NULL,
[NamXuatBan] [nvarchar](100) NULL,
[SoTrang] [int] NULL,
[MaTacGia] [nchar](10) NULL)
GO
--Tạo các khóa ngoài
ALTER TABLE [dbo].[Sach] WITH CHECK ADD CONSTRAINT [FK_Sach_TacGia]
FOREIGN KEY([MaTacGia])
REFERENCES [dbo].[TacGia] ([MaTacGia])
GO
--Chèn dữ liệu
Insert into TacGia(MaTacGia,TenTacGia) values('T01','Nhung')
Insert into TacGia(MaTacGia,TenTacGia) values('T02','Khoa')
--Chèn dữ liệu 
Insert into Sach(MaSach,TenSach,NamXuatBan,SoTrang,MaTacGia) values('01',N'Tiếng Anh',N'2001',26,'T01')
Insert into Sach(MaSach,TenSach,NamXuatBan,SoTrang,MaTacGia) values('02',N'Toán',N'2000',18,'T01')
Insert into Sach(MaSach,TenSach,NamXuatBan,SoTrang,MaTacGia) values('03',N'Vật Lý',N'2002',28,'T02')
Insert into Sach(MaSach,TenSach,NamXuatBan,SoTrang,MaTacGia) values('04',N'Hoá học',N'1998',16,'T02')