-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 05, 2024 lúc 11:31 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlcuahanggiaydb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblchitiethd`
--

CREATE TABLE `tblchitiethd` (
  `Magiay` varchar(20) NOT NULL,
  `MaHD` varchar(20) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `GiaBan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblchitiethd`
--

INSERT INTO `tblchitiethd` (`Magiay`, `MaHD`, `SoLuong`, `GiaBan`) VALUES
('SP1', 'HD001', 1, 1500),
('SP2', 'HD001', 2, 2000),
('SP2', 'HD002', 1, 2000),
('SP2', 'HD005', 1, 2000),
('SP2', 'HD006', 1, 2000),
('SP3', 'HD002', 1, 1750),
('SP3', 'HD003', 1, 1750),
('SP4', 'HD002', 2, 1850),
('SP4', 'HD006', 2, 1850),
('SP5', 'HD006', 2, 1500),
('SP6', 'HD004', 2, 1450),
('SP6', 'HD005', 1, 1450),
('SP7', 'HD001', 1, 1500),
('SP7', 'HD002', 1, 1500),
('SP7', 'HD005', 1, 1500);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblchitietkm`
--

CREATE TABLE `tblchitietkm` (
  `MaGiay` varchar(20) NOT NULL,
  `MaKM` varchar(20) NOT NULL,
  `TiLeKM` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblchitietkm`
--

INSERT INTO `tblchitietkm` (`MaGiay`, `MaKM`, `TiLeKM`) VALUES
('SP1', 'KM1', 0.3),
('SP1', 'KM2', 0.4),
('SP1', 'KM3', 0.5),
('SP2', 'KM1', 0.3),
('SP2', 'KM2', 0.4),
('SP2', 'KM3', 0.5),
('SP2', 'KM4', 0.2),
('SP3', 'KM1', 0.2),
('SP3', 'KM3', 0.5),
('SP3', 'KM4', 0.3),
('SP4', 'KM3', 0.5),
('SP4', 'KM4', 0.4),
('SP5', 'KM2', 0.4),
('SP5', 'KM3', 0.5),
('SP5', 'KM4', 0.5),
('SP6', 'KM2', 0.4),
('SP6', 'KM3', 0.5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblchitietpn`
--

CREATE TABLE `tblchitietpn` (
  `MaGiay` varchar(20) NOT NULL,
  `MaPN` varchar(20) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `GiaNhap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblchitietpn`
--

INSERT INTO `tblchitietpn` (`MaGiay`, `MaPN`, `SoLuong`, `GiaNhap`) VALUES
('SP1', 'PN001', 10, 1000),
('SP2', 'PN001', 20, 1500),
('SP3', 'PN002', 30, 1250),
('SP4', 'PN003', 20, 1350),
('SP5', 'PN004', 40, 1000),
('SP6', 'PN005', 25, 950),
('SP7', 'PN005', 20, 1000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblhoadon`
--

CREATE TABLE `tblhoadon` (
  `MaHD` varchar(20) NOT NULL,
  `MaNV` varchar(20) NOT NULL,
  `MaKH` varchar(20) NOT NULL,
  `MaKM` varchar(20) NOT NULL,
  `NgayBan` varchar(20) NOT NULL,
  `TongTien` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblhoadon`
--

INSERT INTO `tblhoadon` (`MaHD`, `MaNV`, `MaKH`, `MaKM`, `NgayBan`, `TongTien`) VALUES
('HD001', 'admin', 'KH1', 'KM1', '05 May 2024', 5350),
('HD002', 'admin', 'KH2', 'KM2', '05 May 2024', 8150),
('HD003', 'admin', 'KH3', 'KM3', '05 May 2024', 875),
('HD004', 'admin', 'KH4', 'KM4', '05 May 2024', 2900),
('HD005', 'admin', 'KH5', 'KM2', '05 May 2024', 3570),
('HD006', 'admin', 'KH6', 'KM1', '05 May 2024', 8100);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblkhachhang`
--

CREATE TABLE `tblkhachhang` (
  `MaKH` varchar(20) NOT NULL,
  `Ho` varchar(20) NOT NULL,
  `Ten` varchar(20) NOT NULL,
  `GioiTinh` varchar(20) NOT NULL,
  `DiaChi` varchar(40) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Loai` varchar(20) NOT NULL,
  `TongChiTieu` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblkhachhang`
--

INSERT INTO `tblkhachhang` (`MaKH`, `Ho`, `Ten`, `GioiTinh`, `DiaChi`, `Email`, `Loai`, `TongChiTieu`) VALUES
('KH1', 'Nguyễn Văn', 'A', 'Nam', 'q1, hcm', 'a@gmail.com', 'đặc biệt', 0),
('KH2', 'Trần Văn', 'B', 'Nữ', 'q2, hcm', 'b@gmail.com', 'vip', 0),
('KH3', 'Nguyễn Văn', 'C', 'Nam', 'q1, hcm', 'c@gmail.com', 'bình thường', 0),
('KH4', 'Trần Văn', 'D', 'Nữ', 'q2, hcm', 'd@gmail.com', 'bình thường', 0),
('KH5', 'Nguyễn Văn', 'E', 'Nam', 'q1, hcm', 'e@gmail.com', 'đặc biệt', 0),
('KH6', 'Trần Văn', 'F', 'Nữ', 'q1, hcm', 'f@gmail.com', 'vip', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblkhuyenmai`
--

CREATE TABLE `tblkhuyenmai` (
  `MaKM` varchar(20) NOT NULL,
  `TenChuongTrinh` varchar(40) NOT NULL,
  `LoaiChuongTrinh` varchar(20) NOT NULL,
  `DieuKien` varchar(20) NOT NULL,
  `NgayBatDau` varchar(20) NOT NULL,
  `NgayKetThuc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblkhuyenmai`
--

INSERT INTO `tblkhuyenmai` (`MaKM`, `TenChuongTrinh`, `LoaiChuongTrinh`, `DieuKien`, `NgayBatDau`, `NgayKetThuc`) VALUES
('KM1', 'Mùa hè xanh', 'Loại 1', 'bình thường', '05 May 2024', '31 May 2024'),
('KM2', 'Back to School', 'Loại 2', 'bình thường', '05 May 2024', '31 May 2024'),
('KM3', 'admin', 'Loại 3', 'đặc biệt', '05 May 2024', '31 May 2024'),
('KM4', 'admin', 'Loại 2', 'vip', '05 May 2024', '31 May 2024');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblloai`
--

CREATE TABLE `tblloai` (
  `Maloai` varchar(20) NOT NULL,
  `Tenloai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblloai`
--

INSERT INTO `tblloai` (`Maloai`, `Tenloai`) VALUES
('1', 'sneaker'),
('2', 'Running'),
('3', 'Fashion'),
('4', 'Basketball'),
('5', 'Soccer');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblmausac`
--

CREATE TABLE `tblmausac` (
  `Mamau` varchar(20) NOT NULL,
  `Tenmau` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblmausac`
--

INSERT INTO `tblmausac` (`Mamau`, `Tenmau`) VALUES
('BLK', 'Black'),
('BLU', 'Blue'),
('GR', 'Green'),
('ORG', 'Orange'),
('WT', 'White');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblnhacungcap`
--

CREATE TABLE `tblnhacungcap` (
  `MaNCC` varchar(20) NOT NULL,
  `TenNCC` varchar(20) NOT NULL,
  `DiaChi` varchar(40) NOT NULL,
  `Email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblnhacungcap`
--

INSERT INTO `tblnhacungcap` (`MaNCC`, `TenNCC`, `DiaChi`, `Email`) VALUES
('NCC1', 'Rồng Thiên', '123 Ra đường bị la,P ABC,TP HN', 'rongthien619@gmail.com'),
('NCC2', 'Trời Đỏ', '456 kế bên nhà 123', 'sunred916@gmail.com'),
('NCC3', 'Rực lửa', '135 là số lẻ không phải số lẽ', '246@gmail.com'),
('NCC4', 'Bước Nhảy', '246 không phải là số chẳn mà là số chẵn', 'jumpandjump@gmail.com'),
('NCC5', 'Tầm xa', '3 là số nguyên tố', '357@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblnhanvien`
--

CREATE TABLE `tblnhanvien` (
  `MaNV` varchar(20) NOT NULL,
  `Ho` varchar(30) NOT NULL,
  `Ten` varchar(10) NOT NULL,
  `GioiTinh` varchar(10) NOT NULL,
  `DiaChi` varchar(50) NOT NULL,
  `DienThoai` int(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Luong` int(20) NOT NULL,
  `ChucVu` varchar(20) NOT NULL,
  `Anh` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblnhanvien`
--

INSERT INTO `tblnhanvien` (`MaNV`, `Ho`, `Ten`, `GioiTinh`, `DiaChi`, `DienThoai`, `Email`, `Luong`, `ChucVu`, `Anh`) VALUES
('admin', 'Phạm Quốc', 'Toàn', 'Nam', 'cmt8', 1001011101, 'admin@admin.vn', 999999, 'Quản trị viên', 'boy 4'),
('id1', 'Nguyễn Khắc', 'Tiệp', 'Nam', 'hcm', 1234567890, 'pqt@gmail.co', 1000, 'Quản trị viên', 'boy 1'),
('id2', 'Tàu Văn', 'Phà', 'Nam', '123 Lạc Văn Biển,P.A, Q.A,TPHCM', 1239876540, 'taunhobien@gamil.com', 800, 'Kiểm tra hàng hóa', 'boy 2'),
('id3', 'Trần', 'Dần', 'Nam', '123 A,P LA,Q DHA,TpHCM', 2147483647, 'trandan@gmail.com', 300, 'Nhập Hàng', 'boy 3'),
('id4', 'Lê Văn', 'Hoàng', 'Nữ', '3 ABCD,P LA,Q DHA,TpHCM', 41234111, 'levanhoang@gmail.com', 8000, 'Khuyến Mãi', 'girl 3'),
('id5', 'Nguyễn Thị Lê', 'Kim', 'Nữ', '13 An Mà,P LA,Q DHA,TpHCM', 123456789, 'nguyenthilekim@gmail', 900, 'Hóa Đơn', 'girl 2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblphieunhap`
--

CREATE TABLE `tblphieunhap` (
  `MaPN` varchar(20) NOT NULL,
  `MaNCC` varchar(20) NOT NULL,
  `MaNV` varchar(20) NOT NULL,
  `NgayNhap` varchar(20) NOT NULL,
  `TongTien` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblphieunhap`
--

INSERT INTO `tblphieunhap` (`MaPN`, `MaNCC`, `MaNV`, `NgayNhap`, `TongTien`) VALUES
('PN001', 'NCC1', 'admin', '05 May 2024', 40000),
('PN002', 'NCC2', 'admin', '05 May 2024', 37500),
('PN003', 'NCC3', 'admin', '05 May 2024', 27000),
('PN004', 'NCC4', 'admin', '05 May 2024', 40000),
('PN005', 'NCC5', 'admin', '05 May 2024', 43750);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblsanpham`
--

CREATE TABLE `tblsanpham` (
  `Magiay` varchar(20) NOT NULL,
  `Tengiay` varchar(20) NOT NULL,
  `Soluong` int(10) NOT NULL,
  `Gia` int(10) NOT NULL,
  `Size` int(10) NOT NULL,
  `Doituongsd` varchar(20) NOT NULL,
  `Chatlieu` varchar(20) NOT NULL,
  `Maloai` varchar(20) NOT NULL,
  `Maxx` varchar(20) NOT NULL,
  `Mamau` varchar(20) NOT NULL,
  `Mathuonghieu` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblsanpham`
--

INSERT INTO `tblsanpham` (`Magiay`, `Tengiay`, `Soluong`, `Gia`, `Size`, `Doituongsd`, `Chatlieu`, `Maloai`, `Maxx`, `Mamau`, `Mathuonghieu`) VALUES
('SP1', 'Adidas SuperStar', 9, 1500, 40, 'Nam', 'Vải', '1', 'US', 'WT', 'AD'),
('SP2', 'Adidas SuperStar', 15, 2000, 43, 'Nam', 'Vải', '1', 'US', 'WT', 'AD'),
('SP3', 'Nike Jordan', 28, 1750, 41, 'Mọi đối tượng', 'da', '1', 'US', 'BLK', 'NK'),
('SP4', 'Puma Fenty Creeper', 16, 1850, 39, 'Mọi đối tượng', 'vải', '2', 'UK', 'ORG', 'PM'),
('SP5', 'Puma Skype', 38, 1500, 38, 'nữ', 'da', '3', 'UK', 'WT', 'PM'),
('SP6', 'New Balance 327', 22, 1450, 40, 'Mọi đối tượng', 'vải', '4', 'US', 'GR', 'NB'),
('SP7', 'Bitis Hunter', 17, 1500, 42, 'Mọi đối tượng', 'vải', '5', 'VN', 'ORG', 'BT');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltaikhoan`
--

CREATE TABLE `tbltaikhoan` (
  `tendangnhap` varchar(10) NOT NULL,
  `matkhau` varchar(20) NOT NULL,
  `capbac` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbltaikhoan`
--

INSERT INTO `tbltaikhoan` (`tendangnhap`, `matkhau`, `capbac`) VALUES
('admin', 'admin', 1),
('id1', '123', 2),
('id2', '123', 3),
('id3', '123', 4),
('id4', '123', 5),
('id5', '123', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblthuonghieu`
--

CREATE TABLE `tblthuonghieu` (
  `Mathuonghieu` varchar(20) NOT NULL,
  `Tenthuonghieu` varchar(30) NOT NULL,
  `Diachi` varchar(40) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblthuonghieu`
--

INSERT INTO `tblthuonghieu` (`Mathuonghieu`, `Tenthuonghieu`, `Diachi`, `Email`) VALUES
('AD', 'Adidas', 'USA', 'adidas@gmail.com'),
('BT', 'Bitis', 'VietNam', 'bitis@gmial.com'),
('CV', 'Converse', 'USA', 'cv@gmail.com'),
('NB', 'New Balance', 'USA', 'nb@gmail.com'),
('NK', 'Nike', 'USA', 'nike@gmail.com'),
('PM', 'Puma', 'USA', 'puma@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblxuatxu`
--

CREATE TABLE `tblxuatxu` (
  `Maxx` varchar(20) NOT NULL,
  `Tennuoc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tblxuatxu`
--

INSERT INTO `tblxuatxu` (`Maxx`, `Tennuoc`) VALUES
('CN', 'China'),
('ID', 'Indonesia'),
('UK', 'United Kingdom'),
('US', 'USA'),
('VN', 'VietNam');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tblchitiethd`
--
ALTER TABLE `tblchitiethd`
  ADD PRIMARY KEY (`Magiay`,`MaHD`),
  ADD KEY `FKMaHD` (`MaHD`),
  ADD KEY `FKMaGiayHD` (`Magiay`);

--
-- Chỉ mục cho bảng `tblchitietkm`
--
ALTER TABLE `tblchitietkm`
  ADD PRIMARY KEY (`MaGiay`,`MaKM`),
  ADD KEY `FKMaGiayKM` (`MaGiay`),
  ADD KEY `FKMaKMCTKM` (`MaKM`);

--
-- Chỉ mục cho bảng `tblchitietpn`
--
ALTER TABLE `tblchitietpn`
  ADD PRIMARY KEY (`MaPN`,`MaGiay`),
  ADD KEY `FKMaPN` (`MaPN`),
  ADD KEY `FKMaGiayPN` (`MaGiay`);

--
-- Chỉ mục cho bảng `tblhoadon`
--
ALTER TABLE `tblhoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `FKMaNVHD` (`MaNV`),
  ADD KEY `FKMaKMHD` (`MaKM`),
  ADD KEY `FKMaKHHD` (`MaKH`);

--
-- Chỉ mục cho bảng `tblkhachhang`
--
ALTER TABLE `tblkhachhang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Chỉ mục cho bảng `tblkhuyenmai`
--
ALTER TABLE `tblkhuyenmai`
  ADD PRIMARY KEY (`MaKM`);

--
-- Chỉ mục cho bảng `tblloai`
--
ALTER TABLE `tblloai`
  ADD PRIMARY KEY (`Maloai`);

--
-- Chỉ mục cho bảng `tblmausac`
--
ALTER TABLE `tblmausac`
  ADD PRIMARY KEY (`Mamau`);

--
-- Chỉ mục cho bảng `tblnhacungcap`
--
ALTER TABLE `tblnhacungcap`
  ADD PRIMARY KEY (`MaNCC`);

--
-- Chỉ mục cho bảng `tblnhanvien`
--
ALTER TABLE `tblnhanvien`
  ADD PRIMARY KEY (`MaNV`);

--
-- Chỉ mục cho bảng `tblphieunhap`
--
ALTER TABLE `tblphieunhap`
  ADD PRIMARY KEY (`MaPN`),
  ADD KEY `FKMaNCC` (`MaNCC`),
  ADD KEY `FKMaNV` (`MaNV`);

--
-- Chỉ mục cho bảng `tblsanpham`
--
ALTER TABLE `tblsanpham`
  ADD PRIMARY KEY (`Magiay`),
  ADD KEY `FKMaXuatXu` (`Maxx`),
  ADD KEY `FKMaThuonghieu` (`Mathuonghieu`),
  ADD KEY `FKMaMau` (`Mamau`),
  ADD KEY `FKMaLoai` (`Maloai`);

--
-- Chỉ mục cho bảng `tbltaikhoan`
--
ALTER TABLE `tbltaikhoan`
  ADD PRIMARY KEY (`tendangnhap`);

--
-- Chỉ mục cho bảng `tblthuonghieu`
--
ALTER TABLE `tblthuonghieu`
  ADD PRIMARY KEY (`Mathuonghieu`);

--
-- Chỉ mục cho bảng `tblxuatxu`
--
ALTER TABLE `tblxuatxu`
  ADD PRIMARY KEY (`Maxx`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tblchitiethd`
--
ALTER TABLE `tblchitiethd`
  ADD CONSTRAINT `FKMaHD` FOREIGN KEY (`MaHD`) REFERENCES `tblhoadon` (`MaHD`),
  ADD CONSTRAINT `FKMagGiayHD` FOREIGN KEY (`Magiay`) REFERENCES `tblsanpham` (`Magiay`);

--
-- Các ràng buộc cho bảng `tblchitietkm`
--
ALTER TABLE `tblchitietkm`
  ADD CONSTRAINT `FKMaGiayKM` FOREIGN KEY (`MaGiay`) REFERENCES `tblsanpham` (`Magiay`),
  ADD CONSTRAINT `FKMaKMCTKM` FOREIGN KEY (`MaKM`) REFERENCES `tblkhuyenmai` (`MaKM`);

--
-- Các ràng buộc cho bảng `tblchitietpn`
--
ALTER TABLE `tblchitietpn`
  ADD CONSTRAINT `FKMaGiayPN` FOREIGN KEY (`MaGiay`) REFERENCES `tblsanpham` (`Magiay`),
  ADD CONSTRAINT `FKMaPN` FOREIGN KEY (`MaPN`) REFERENCES `tblphieunhap` (`MaPN`);

--
-- Các ràng buộc cho bảng `tblhoadon`
--
ALTER TABLE `tblhoadon`
  ADD CONSTRAINT `FKMaKHHD` FOREIGN KEY (`MaKH`) REFERENCES `tblkhachhang` (`MaKH`),
  ADD CONSTRAINT `FKMaKMHD` FOREIGN KEY (`MaKM`) REFERENCES `tblkhuyenmai` (`MaKM`),
  ADD CONSTRAINT `FKMaNVHD` FOREIGN KEY (`MaNV`) REFERENCES `tblnhanvien` (`MaNV`);

--
-- Các ràng buộc cho bảng `tblphieunhap`
--
ALTER TABLE `tblphieunhap`
  ADD CONSTRAINT `FKMaNCC` FOREIGN KEY (`MaNCC`) REFERENCES `tblnhacungcap` (`MaNCC`),
  ADD CONSTRAINT `FKMaNV` FOREIGN KEY (`MaNV`) REFERENCES `tblnhanvien` (`MaNV`);

--
-- Các ràng buộc cho bảng `tblsanpham`
--
ALTER TABLE `tblsanpham`
  ADD CONSTRAINT `FKMaLoai` FOREIGN KEY (`Maloai`) REFERENCES `tblloai` (`Maloai`),
  ADD CONSTRAINT `FKMaMau` FOREIGN KEY (`Mamau`) REFERENCES `tblmausac` (`Mamau`),
  ADD CONSTRAINT `FKMaThuonghieu` FOREIGN KEY (`Mathuonghieu`) REFERENCES `tblthuonghieu` (`Mathuonghieu`),
  ADD CONSTRAINT `FKMaXuatXu` FOREIGN KEY (`Maxx`) REFERENCES `tblxuatxu` (`Maxx`);

--
-- Các ràng buộc cho bảng `tbltaikhoan`
--
ALTER TABLE `tbltaikhoan`
  ADD CONSTRAINT `FKMaNVTK` FOREIGN KEY (`tendangnhap`) REFERENCES `tblnhanvien` (`MaNV`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
