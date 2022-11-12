-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 13, 2022 lúc 02:46 AM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tinchi`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethocphan`
--

CREATE TABLE `chitiethocphan` (
  `ID` int(11) NOT NULL,
  `diemGK` float DEFAULT NULL,
  `diemCC` float DEFAULT NULL,
  `diemCK` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitiethocphan`
--

INSERT INTO `chitiethocphan` (`ID`, `diemGK`, `diemCC`, `diemCK`) VALUES
(1, 5, 6, 9),
(2, 8, 9, 5),
(3, 10, 8, 6),
(4, 7, 7, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuongtrinhdaotao`
--

CREATE TABLE `chuongtrinhdaotao` (
  `STT` int(11) NOT NULL,
  `MaHocPhan` int(11) DEFAULT NULL,
  `MaHK` int(11) NOT NULL,
  `MaNH` int(11) NOT NULL,
  `MaKhoa` int(11) DEFAULT NULL,
  `TenHocPhan` varchar(50) DEFAULT NULL,
  `SoTc` int(11) DEFAULT NULL,
  `SoTiet` varchar(50) DEFAULT NULL,
  `HocPhanHocTruoc` varchar(50) DEFAULT NULL,
  `HocPhanThayThe` varchar(50) DEFAULT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chuongtrinhdaotao`
--

INSERT INTO `chuongtrinhdaotao` (`STT`, `MaHocPhan`, `MaHK`, `MaNH`, `MaKhoa`, `TenHocPhan`, `SoTc`, `SoTiet`, `HocPhanHocTruoc`, `HocPhanThayThe`, `status`) VALUES
(1, 1, 1, 1, 1111, 'Mạng Máy Tính', 3, '40', ' ', '', 'Bắt buộc'),
(2, 2, 1, 1, 1111, 'Toán rời rạc', 3, '40', ' ', '', 'Bắt buộc'),
(3, 3, 2, 2, 1111, 'Kỹ Thuật Lập Trình', 3, '40', ' ', '', 'Bắt buộc'),
(4, 4, 2, 2, 1111, 'Xác suất thống kê', 3, '40', ' ', '', 'Bắt buộc'),
(6, 6, 1, 2, 1111, 'Thực hành máy tính', 3, '40', ' ', '', 'Tự chọn'),
(7, 7, 4, 3, 1111, 'Tiếng Anh', 3, '40', ' ', '', 'Tự chọn'),
(8, 8, 5, 1, 1111, 'Phương pháp tính', 3, '40', ' ', '', 'Bắt buộc'),
(9, 5, 2, 1, 1111, 'Giải tích', 3, '40', ' ', '', 'Bắt buộc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangkyhocphan`
--

CREATE TABLE `dangkyhocphan` (
  `ID` int(11) NOT NULL,
  `Loai` varchar(50) DEFAULT NULL,
  `MaLHP` int(11) DEFAULT NULL,
  `MaKhoa` int(11) DEFAULT NULL,
  `TenLHP` varchar(50) DEFAULT NULL,
  `STC` int(11) DEFAULT NULL,
  `GV` varchar(50) DEFAULT NULL,
  `LichHoc` varchar(200) DEFAULT NULL,
  `TuNgay` varchar(50) DEFAULT NULL,
  `DenNgay` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dangkyhocphan`
--

INSERT INTO `dangkyhocphan` (`ID`, `Loai`, `MaLHP`, `MaKhoa`, `TenLHP`, `STC`, `GV`, `LichHoc`, `TuNgay`, `DenNgay`) VALUES
(1, '', 1, 1111, 'Mạng Máy Tính', 3, 'Nguyễn Ngọc Dũng', 'Thứ 2, Tiết: 3-5, Tuần: T3->T11, Phòng: A1.407', '05/09/2022', '15/12/2022'),
(2, '', 2, 1111, 'Toán rời rạc', 3, 'Lê Xuân Việt', 'Thứ 3, Tiết: 1-2, Tuần: T3->T11, Phòng: A5.09', '05/09/2022', '1/12/2022'),
(3, '', 3, 1111, 'Toán rời rạc', 3, 'Lê Xuân Việt', 'Thứ 4, Tiết: 1-1, Tuần: T10, Phòng: A5.09', '05/09/2022', '	01/11/2022'),
(4, '', 4, 2222, 'Kỹ thuật lập trình', 3, 'Dương Hoàng Huyên', 'Thứ 6, Tiết: 3-5, Tuần: T3->T18, Phòng: A1.408', '05/09/2022', '01/11/2022');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diemrenluyen`
--

CREATE TABLE `diemrenluyen` (
  `ID` int(11) NOT NULL,
  `MaSV` int(11) DEFAULT NULL,
  `namHoc` int(11) DEFAULT NULL,
  `hocKy` int(11) DEFAULT NULL,
  `diemSo` int(11) DEFAULT NULL,
  `diemChu` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `diemrenluyen`
--

INSERT INTO `diemrenluyen` (`ID`, `MaSV`, `namHoc`, `hocKy`, `diemSo`, `diemChu`) VALUES
(1, 2, 2020, 1, 90, 'Xuất sắc'),
(2, 2, 2021, 1, 80, 'Giỏi'),
(3, 2, 2020, 3, 70, 'Khá'),
(4, 2, 2021, 2, 60, 'Trung bình');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diemtrungbinh`
--

CREATE TABLE `diemtrungbinh` (
  `id` int(11) NOT NULL,
  `idnamhoc` int(11) NOT NULL,
  `idsv` int(11) NOT NULL,
  `idhk` int(11) NOT NULL,
  `dtb` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `diemtrungbinh`
--

INSERT INTO `diemtrungbinh` (`id`, `idnamhoc`, `idsv`, `idhk`, `dtb`) VALUES
(1, 1, 1, 1, 8.9),
(2, 1, 1, 2, 6.5),
(3, 1, 1, 3, 7.9),
(4, 1, 2, 1, 4.3),
(5, 1, 2, 2, 8.3),
(6, 1, 3, 1, 9.02),
(7, 1, 4, 1, 8.8),
(8, 1, 1, 1, 8.9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocky`
--

CREATE TABLE `hocky` (
  `ID` int(11) NOT NULL,
  `hocky` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hocky`
--

INSERT INTO `hocky` (`ID`, `hocky`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocphan`
--

CREATE TABLE `hocphan` (
  `MaHP` int(11) NOT NULL,
  `TenHP` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hocphan`
--

INSERT INTO `hocphan` (`MaHP`, `TenHP`) VALUES
(1, 'Mạng Máy Tính'),
(2, 'Toán rời rạc'),
(3, 'Kỹ thuật lập trình'),
(4, 'Xác suất thống kê'),
(5, 'Giải tích'),
(6, 'Thực hành máy tính'),
(7, 'Tiếng Anh'),
(8, 'Phương pháp tính');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocphanthaythe`
--

CREATE TABLE `hocphanthaythe` (
  `STT` int(11) NOT NULL,
  `HPOrigin` int(11) DEFAULT NULL,
  `HPChange` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hocphanthaythe`
--

INSERT INTO `hocphanthaythe` (`STT`, `HPOrigin`, `HPChange`) VALUES
(1, 3, 0),
(2, 4, 0),
(3, 2, 0),
(4, 5, 0),
(5, 6, 0),
(6, 7, 0),
(7, 8, 0),
(8, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ketquahoctap`
--

CREATE TABLE `ketquahoctap` (
  `ID` int(11) NOT NULL,
  `MaSV` int(11) DEFAULT NULL,
  `MaHocPhan` int(11) DEFAULT NULL,
  `MaKhoa` int(11) DEFAULT NULL,
  `TinChi` int(11) DEFAULT NULL,
  `Diem10` float DEFAULT NULL,
  `Diem4` float DEFAULT NULL,
  `DiemChu` varchar(50) DEFAULT NULL,
  `diemRL` int(11) NOT NULL,
  `KetQua` varchar(50) DEFAULT NULL,
  `IDChiTiet` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `ketquahoctap`
--

INSERT INTO `ketquahoctap` (`ID`, `MaSV`, `MaHocPhan`, `MaKhoa`, `TinChi`, `Diem10`, `Diem4`, `DiemChu`, `diemRL`, `KetQua`, `IDChiTiet`) VALUES
(1, 2, 1, 1111, 3, 7, 3, 'C', 90, '', 1),
(2, 2, 2, 1111, 3, 3, 4, 'A+', 90, '', 2),
(3, 2, 3, 1111, 3, 7.3, 3, 'B+', 90, '', 3),
(4, 2, 4, 1111, 3, 7, 3, 'C', 90, '', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa`
--

CREATE TABLE `khoa` (
  `MaKhoa` int(11) NOT NULL,
  `TenKhoa` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khoa`
--

INSERT INTO `khoa` (`MaKhoa`, `TenKhoa`) VALUES
(1111, 'Công Nghệ Thông Tin'),
(2222, 'Sư Phạm Tiểu Học'),
(3333, 'Sư Phạm Mầm Non');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichsudangkyhocphan`
--

CREATE TABLE `lichsudangkyhocphan` (
  `ID` int(11) NOT NULL,
  `ThaoTac` varchar(50) DEFAULT NULL,
  `MaHP` int(11) DEFAULT NULL,
  `MaTK` int(11) DEFAULT NULL,
  `MaHK` int(11) NOT NULL,
  `MaNH` int(11) NOT NULL,
  `VaoNgay` datetime DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `lichsudangkyhocphan`
--

INSERT INTO `lichsudangkyhocphan` (`ID`, `ThaoTac`, `MaHP`, `MaTK`, `MaHK`, `MaNH`, `VaoNgay`, `status`) VALUES
(1, 'Đăng ký', 1, 1, 1, 1, '2022-08-22 10:14:26', 1),
(2, 'Đăng ký', 2, 1, 1, 1, '2022-08-22 10:14:26', 0),
(3, 'Đăng ký', 3, 1, 2, 2, '2022-08-22 10:14:26', 1),
(4, 'Đăng ký', 4, 1, 3, 1, '2022-08-22 10:14:26', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lophocphan`
--

CREATE TABLE `lophocphan` (
  `ID` int(11) NOT NULL,
  `MaLHP` int(11) DEFAULT NULL,
  `MaHP` int(11) DEFAULT NULL,
  `TenGV` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `lophocphan`
--

INSERT INTO `lophocphan` (`ID`, `MaLHP`, `MaHP`, `TenGV`) VALUES
(1, 1, 1, 'Nguyễn Ngọc Dũng'),
(2, 2, 2, 'Lê Xuân Việt'),
(3, 3, 3, 'Dương Hoàng Huyên'),
(4, 4, 4, 'Nguyễn Hữu Trọn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `namhoc`
--

CREATE TABLE `namhoc` (
  `ID` int(11) NOT NULL,
  `namBD` int(11) DEFAULT NULL,
  `namKT` int(11) DEFAULT NULL,
  `khoaHoc` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `namhoc`
--

INSERT INTO `namhoc` (`ID`, `namBD`, `namKT`, `khoaHoc`) VALUES
(1, 2020, 2021, 'k43'),
(2, 2021, 2022, 'k43'),
(3, 2022, 2023, 'k43'),
(4, 2023, 2024, 'k43'),
(5, 2024, 2025, 'k43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `MaSV` int(11) NOT NULL,
  `HoDem` varchar(50) DEFAULT NULL,
  `Ten` varchar(50) DEFAULT NULL,
  `NgaySinh` varchar(50) DEFAULT NULL,
  `GioiTinh` varchar(50) DEFAULT NULL,
  `MaLop` int(11) DEFAULT NULL,
  `MaKhoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sinhvien`
--

INSERT INTO `sinhvien` (`MaSV`, `HoDem`, `Ten`, `NgaySinh`, `GioiTinh`, `MaLop`, `MaKhoa`) VALUES
(1, 'Vũ', 'Tấn Thi', '10/06/2001', 'Nam', 101, 1111),
(2, 'Nguyễn', 'Xuân Hải', '11/06/2002', 'Nam', 102, 1111),
(3, 'Võ', 'Gia Huy', '12/06/2002', 'Nam', 103, 1111),
(4, 'Nguyễn', 'Quốc Đạt', '13/06/2002', 'Nam', 104, 1111),
(5, 'Đỗ Nguyễn', 'Tấn Lộc', '14/06/2002', 'Nam', 105, 1111);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `MaTK` int(11) NOT NULL,
  `MatKhau` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`MaTK`, `MatKhau`) VALUES
(1, '1234'),
(2, '1234'),
(3, '1234'),
(4, '1234');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thoikhoabieu`
--

CREATE TABLE `thoikhoabieu` (
  `STT` int(11) NOT NULL,
  `MaLHP` int(11) DEFAULT NULL,
  `TenHocPhan` varchar(50) DEFAULT NULL,
  `STC` int(11) DEFAULT NULL,
  `ThongTin` varchar(50) DEFAULT NULL,
  `GiangVien` varchar(50) DEFAULT NULL,
  `NgayBatDau` varchar(50) DEFAULT NULL,
  `NgayKetThuc` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thoikhoabieu`
--

INSERT INTO `thoikhoabieu` (`STT`, `MaLHP`, `TenHocPhan`, `STC`, `ThongTin`, `GiangVien`, `NgayBatDau`, `NgayKetThuc`) VALUES
(1, 1, 'Mạng Máy Tính', 3, 'Thứ 2, Tiết: 3-5, Tuần: T3->T11, Phòng: A1.407', 'Nguyễn Ngọc Dũng', '05/09/2022', '15/12/2022'),
(2, 2, 'Toán rời rạc', 3, 'Thứ 3, Tiết: 1-2, Tuần: T3->T11, Phòng: A5.09', 'Lê Xuân Việt', '05/09/2022', '1/12/2022'),
(3, 3, 'Xác suất thống kê', 3, 'Thứ 4, Tiết: 1-1, Tuần: T3->t8, Phòng: A5.09', 'Lê Xuân Việt', '05/09/2022', '	01/11/2022'),
(4, 4, 'Kỹ thuật lập trình', 3, 'Thứ 6, Tiết: 3-5, Tuần: T3->T18, Phòng: A1.408', 'Dương Hoàng Huyên', '05/09/2022', '01/11/2022');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tracuu`
--

CREATE TABLE `tracuu` (
  `ID` int(11) NOT NULL,
  `MaHP` int(11) DEFAULT NULL,
  `TenHP` varchar(50) DEFAULT NULL,
  `MaKhoa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tracuu`
--

INSERT INTO `tracuu` (`ID`, `MaHP`, `TenHP`, `MaKhoa`) VALUES
(1, 1, 'Mạng Máy Tính', 1111),
(2, 2, 'Toán rời rạc', 1111),
(3, 3, 'Kỹ thuật lập trình', 1111),
(4, 4, 'Xác suất thống kê', 1111);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tracuuhocphan`
--

CREATE TABLE `tracuuhocphan` (
  `ID` int(11) NOT NULL,
  `MaHP` int(11) DEFAULT NULL,
  `MaLHP` int(11) DEFAULT NULL,
  `TenKhoa` varchar(50) DEFAULT NULL,
  `TenHP` varchar(50) DEFAULT NULL,
  `STc` int(11) DEFAULT NULL,
  `Loai` varchar(50) DEFAULT NULL,
  `ThongTin` varchar(50) DEFAULT NULL,
  `GiangVien` varchar(50) DEFAULT NULL,
  `GioiHan` varchar(50) DEFAULT NULL,
  `TuNgay` varchar(50) DEFAULT NULL,
  `DenNgay` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tracuuhocphan`
--

INSERT INTO `tracuuhocphan` (`ID`, `MaHP`, `MaLHP`, `TenKhoa`, `TenHP`, `STc`, `Loai`, `ThongTin`, `GiangVien`, `GioiHan`, `TuNgay`, `DenNgay`) VALUES
(1, 1, 1, 'CNTT', 'Mạng Máy Tính', 3, ' ', '', 'Nguyễn Ngọc Dũng', NULL, '07/09/2021', '16/12/2021'),
(2, 2, 2, 'CNTT', 'Toán rời rạc', 3, ' ', '', 'Lê Xuân Việt', NULL, '10/09/2021', '26/11/2021'),
(3, 3, 3, 'CNTT', 'Kỹ thuật lập trình', 3, ' ', '', 'Dương Hoàng Huyên', NULL, '06/09/2021', '16/12/2021'),
(4, 4, 4, 'CNTT', 'Xác suất thống kê', 3, ' ', '', 'Nguyễn Hữu Trọn', NULL, '08/09/2021', '24/11/2021');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiethocphan`
--
ALTER TABLE `chitiethocphan`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `chuongtrinhdaotao`
--
ALTER TABLE `chuongtrinhdaotao`
  ADD PRIMARY KEY (`STT`),
  ADD KEY `MaHocPhan` (`MaHocPhan`),
  ADD KEY `MaKhoa` (`MaKhoa`),
  ADD KEY `MaHK` (`MaHK`),
  ADD KEY `MaNH` (`MaNH`);

--
-- Chỉ mục cho bảng `dangkyhocphan`
--
ALTER TABLE `dangkyhocphan`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MaLHP` (`MaLHP`),
  ADD KEY `MaKhoa` (`MaKhoa`);

--
-- Chỉ mục cho bảng `diemrenluyen`
--
ALTER TABLE `diemrenluyen`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `diemtrungbinh`
--
ALTER TABLE `diemtrungbinh`
  ADD KEY `fk_namhoc_dtb` (`idnamhoc`),
  ADD KEY `fk_dtb_hocki` (`idhk`),
  ADD KEY `fk_dtb_sv` (`idsv`);

--
-- Chỉ mục cho bảng `hocky`
--
ALTER TABLE `hocky`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `hocphan`
--
ALTER TABLE `hocphan`
  ADD PRIMARY KEY (`MaHP`);

--
-- Chỉ mục cho bảng `hocphanthaythe`
--
ALTER TABLE `hocphanthaythe`
  ADD PRIMARY KEY (`STT`),
  ADD KEY `HPOrigin` (`HPOrigin`);

--
-- Chỉ mục cho bảng `ketquahoctap`
--
ALTER TABLE `ketquahoctap`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MaSV` (`MaSV`),
  ADD KEY `MaHocPhan` (`MaHocPhan`),
  ADD KEY `MaKhoa` (`MaKhoa`),
  ADD KEY `IDChiTiet` (`IDChiTiet`);

--
-- Chỉ mục cho bảng `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`MaKhoa`);

--
-- Chỉ mục cho bảng `lichsudangkyhocphan`
--
ALTER TABLE `lichsudangkyhocphan`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MaHP` (`MaHP`),
  ADD KEY `MaTK` (`MaTK`),
  ADD KEY `MaHK` (`MaHK`),
  ADD KEY `MaNH` (`MaNH`);

--
-- Chỉ mục cho bảng `lophocphan`
--
ALTER TABLE `lophocphan`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `namhoc`
--
ALTER TABLE `namhoc`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`MaSV`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`MaTK`);

--
-- Chỉ mục cho bảng `thoikhoabieu`
--
ALTER TABLE `thoikhoabieu`
  ADD PRIMARY KEY (`STT`),
  ADD KEY `MaLHP` (`MaLHP`);

--
-- Chỉ mục cho bảng `tracuu`
--
ALTER TABLE `tracuu`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MaKhoa` (`MaKhoa`);

--
-- Chỉ mục cho bảng `tracuuhocphan`
--
ALTER TABLE `tracuuhocphan`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MaHP` (`MaHP`),
  ADD KEY `MaLHP` (`MaLHP`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitiethocphan`
--
ALTER TABLE `chitiethocphan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `chuongtrinhdaotao`
--
ALTER TABLE `chuongtrinhdaotao`
  MODIFY `STT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `dangkyhocphan`
--
ALTER TABLE `dangkyhocphan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `diemrenluyen`
--
ALTER TABLE `diemrenluyen`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `hocky`
--
ALTER TABLE `hocky`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `hocphan`
--
ALTER TABLE `hocphan`
  MODIFY `MaHP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `hocphanthaythe`
--
ALTER TABLE `hocphanthaythe`
  MODIFY `STT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `ketquahoctap`
--
ALTER TABLE `ketquahoctap`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `khoa`
--
ALTER TABLE `khoa`
  MODIFY `MaKhoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3334;

--
-- AUTO_INCREMENT cho bảng `lichsudangkyhocphan`
--
ALTER TABLE `lichsudangkyhocphan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `lophocphan`
--
ALTER TABLE `lophocphan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `namhoc`
--
ALTER TABLE `namhoc`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  MODIFY `MaSV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `MaTK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `thoikhoabieu`
--
ALTER TABLE `thoikhoabieu`
  MODIFY `STT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tracuu`
--
ALTER TABLE `tracuu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tracuuhocphan`
--
ALTER TABLE `tracuuhocphan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chuongtrinhdaotao`
--
ALTER TABLE `chuongtrinhdaotao`
  ADD CONSTRAINT `chuongtrinhdaotao_ibfk_1` FOREIGN KEY (`MaHocPhan`) REFERENCES `hocphan` (`MaHP`),
  ADD CONSTRAINT `chuongtrinhdaotao_ibfk_2` FOREIGN KEY (`MaKhoa`) REFERENCES `khoa` (`MaKhoa`),
  ADD CONSTRAINT `chuongtrinhdaotao_ibfk_3` FOREIGN KEY (`MaHK`) REFERENCES `hocky` (`ID`),
  ADD CONSTRAINT `chuongtrinhdaotao_ibfk_4` FOREIGN KEY (`MaNH`) REFERENCES `namhoc` (`ID`);

--
-- Các ràng buộc cho bảng `dangkyhocphan`
--
ALTER TABLE `dangkyhocphan`
  ADD CONSTRAINT `dangkyhocphan_ibfk_1` FOREIGN KEY (`MaLHP`) REFERENCES `lophocphan` (`ID`),
  ADD CONSTRAINT `dangkyhocphan_ibfk_2` FOREIGN KEY (`MaKhoa`) REFERENCES `khoa` (`MaKhoa`);

--
-- Các ràng buộc cho bảng `diemtrungbinh`
--
ALTER TABLE `diemtrungbinh`
  ADD CONSTRAINT `fk_dtb_hocki` FOREIGN KEY (`idhk`) REFERENCES `hocky` (`ID`),
  ADD CONSTRAINT `fk_dtb_sv` FOREIGN KEY (`idsv`) REFERENCES `sinhvien` (`MaSV`),
  ADD CONSTRAINT `fk_namhoc_dtb` FOREIGN KEY (`idnamhoc`) REFERENCES `namhoc` (`ID`);

--
-- Các ràng buộc cho bảng `hocphanthaythe`
--
ALTER TABLE `hocphanthaythe`
  ADD CONSTRAINT `hocphanthaythe_ibfk_1` FOREIGN KEY (`HPOrigin`) REFERENCES `hocphan` (`MaHP`);

--
-- Các ràng buộc cho bảng `ketquahoctap`
--
ALTER TABLE `ketquahoctap`
  ADD CONSTRAINT `ketquahoctap_ibfk_1` FOREIGN KEY (`MaSV`) REFERENCES `sinhvien` (`MaSV`),
  ADD CONSTRAINT `ketquahoctap_ibfk_2` FOREIGN KEY (`MaHocPhan`) REFERENCES `hocphan` (`MaHP`),
  ADD CONSTRAINT `ketquahoctap_ibfk_3` FOREIGN KEY (`MaKhoa`) REFERENCES `khoa` (`MaKhoa`),
  ADD CONSTRAINT `ketquahoctap_ibfk_4` FOREIGN KEY (`IDChiTiet`) REFERENCES `chitiethocphan` (`ID`);

--
-- Các ràng buộc cho bảng `lichsudangkyhocphan`
--
ALTER TABLE `lichsudangkyhocphan`
  ADD CONSTRAINT `lichsudangkyhocphan_ibfk_1` FOREIGN KEY (`MaHP`) REFERENCES `hocphan` (`MaHP`),
  ADD CONSTRAINT `lichsudangkyhocphan_ibfk_2` FOREIGN KEY (`MaTK`) REFERENCES `taikhoan` (`MaTK`),
  ADD CONSTRAINT `lichsudangkyhocphan_ibfk_3` FOREIGN KEY (`MaHK`) REFERENCES `hocky` (`ID`),
  ADD CONSTRAINT `lichsudangkyhocphan_ibfk_4` FOREIGN KEY (`MaNH`) REFERENCES `namhoc` (`ID`);

--
-- Các ràng buộc cho bảng `thoikhoabieu`
--
ALTER TABLE `thoikhoabieu`
  ADD CONSTRAINT `thoikhoabieu_ibfk_1` FOREIGN KEY (`MaLHP`) REFERENCES `lophocphan` (`ID`);

--
-- Các ràng buộc cho bảng `tracuu`
--
ALTER TABLE `tracuu`
  ADD CONSTRAINT `tracuu_ibfk_1` FOREIGN KEY (`MaKhoa`) REFERENCES `khoa` (`MaKhoa`);

--
-- Các ràng buộc cho bảng `tracuuhocphan`
--
ALTER TABLE `tracuuhocphan`
  ADD CONSTRAINT `tracuuhocphan_ibfk_1` FOREIGN KEY (`MaHP`) REFERENCES `hocphan` (`MaHP`),
  ADD CONSTRAINT `tracuuhocphan_ibfk_2` FOREIGN KEY (`MaLHP`) REFERENCES `lophocphan` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
