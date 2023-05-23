-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 17, 2022 lúc 11:16 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `baitapcuoiky`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietgiohang`
--

CREATE TABLE `chitietgiohang` (
  `id_chitietgiohang` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `id_giohang` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `chitietgiohang`
--

INSERT INTO `chitietgiohang` (`id_chitietgiohang`, `id_sp`, `soluong`, `gia`, `id_giohang`) VALUES
(1, 24, 1, 200000, 2),
(2, 23, 1, 120000, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietsanpham`
--

CREATE TABLE `chitietsanpham` (
  `id_sp` int(11) NOT NULL,
  `tensanpham` varchar(255) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `gia` int(11) NOT NULL,
  `hinhanh` varchar(255) COLLATE utf8_bin NOT NULL,
  `khuyenmai` int(11) DEFAULT NULL,
  `mota` text COLLATE utf8_bin NOT NULL,
  `id_loaisanpham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `chitietsanpham`
--

INSERT INTO `chitietsanpham` (`id_sp`, `tensanpham`, `gia`, `hinhanh`, `khuyenmai`, `mota`, `id_loaisanpham`) VALUES
(23, 'Áo Sơ Mi Trắng', 120000, 'aosomi1.jpg', 12, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát&#10\r\nThiết kế thời trang phù hợp xu hướng hiện nay&#10\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.&#10\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố&#10\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!&#10', 15),
(24, 'Áo Sơ Mi Xanh', 200000, 'aosomi2.jpg', 10, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 15),
(26, 'Áo Sơ Mi Đỏ', 200000, 'aosomi3.jpg', 50, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 15),
(27, 'Áo Khoác Trắng', 200000, 'aokhoac1.png', 0, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 18),
(28, 'Áo Khoác Xanh', 220000, 'aokhoac2.png', 10, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 18),
(29, 'Áo Sơ Mi Đen', 150000, 'aosomi4.jpg', 10, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 15),
(30, 'Áo Khoác Đỏ', 210000, 'aokhoac3.png', 10, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 18),
(31, 'Áo Khoác Đen', 250000, 'aokhoac4.png', 0, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 18),
(32, 'Áo Len Trắng', 200000, 'ao.len1.jpg', 0, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 20),
(33, 'Áo Len Xanh', 120000, 'ao.len2.jpg', 0, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 20),
(34, 'Áo Len Đỏ', 120000, 'ao.len3.jpg', 0, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 20),
(35, 'Áo Len Đen', 120000, 'ao.len4.jpg', 0, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 20),
(36, 'Áo Thun Trắng', 150000, 'aothun2.png', 5, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 17),
(37, 'Áo Thun Xanh', 120000, 'aothun3.png', 0, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 17),
(38, 'Áo Thun Đỏ', 120000, 'aothun4.png', 0, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 17),
(39, 'Áo Thun Đen', 150000, 'aothun1.png', 10, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 17),
(41, 'Áo Hoodie Trắng', 250000, 'hoodie1.jpg', 0, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 19),
(42, 'Áo Hoodie Xanh', 230000, 'hoodie2.jpg', 0, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 19),
(43, 'Áo Hoodie Đỏ Đen', 220000, 'hoodie3.jpg', 10, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 19),
(44, 'Áo Hoodie Đen', 270000, 'hoodie4.jpg', 5, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 19),
(45, 'Quần Jean Đen', 300000, 'quanjean1.png', 5, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 16),
(46, 'Quần Jean Bạc', 300000, 'quanjean2.png', 20, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 16),
(47, 'Quần Jean Xanh', 250000, 'quanjean3.png', 0, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 16),
(48, 'Quần Kaki Kem', 200000, 'kaki1.jpg', 5, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 22),
(49, 'Quần Kaki Xanh', 200000, 'kaki2.jpg', 20, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 22),
(50, 'Quần Kaki Đỏ', 200000, 'kaki3.jpg', 5, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 22),
(51, 'Quần Kaki Đen', 210000, 'kaki4.jpg', 0, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 22),
(52, 'Quần Jogger Trắng', 140000, 'quanjogger2.jpg', 10, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 21),
(53, 'Quần Jogger Xanh', 120000, 'quanjogger3.jpg', 10, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 21),
(54, 'Quần Jogger Đỏ', 150000, 'quanjogger4.jpg', 10, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 21),
(55, 'Quần Tây Trắng', 300000, 'quantay1.png', 12, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 23),
(56, 'Quần Tây Xanh', 220000, 'quantay2.png', 5, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 23),
(57, 'Quần Tây Đỏ', 200000, 'quantay3.png', 10, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 23),
(58, 'Quần Tây Đen', 250000, 'quantay4.png', 12, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 23),
(59, 'Giày Adidas Ultraboost Web DNA', 5000000, 'adidas1.png', 0, 'GiÀY ĐẸP', 24),
(60, 'Giày Biti’s Hunter X Z Collection', 1140000, 'bitis1.png', 20, 'Giày đẹp', 25),
(61, 'Giày Nike Air Presto x Hello Kitty', 4100000, 'nike1.png', 20, 'Giày đẹp', 26),
(62, 'Giày Biti\'s Hunter X Cut-Out', 1010000, 'bitis2.png', 10, 'Giày đẹp', 25),
(63, 'Giày Nike Dunk High Retro SE', 3500000, 'nike2.png', 5, 'Giày đẹp', 26),
(64, 'Giày Xray Boy\'s Luca Sneaker', 700000, 'xray.png', 0, 'Giày đẹp', 27),
(65, 'Giày Versace Trigreca Sneakers', 26000000, 'versace.png', 20, 'Giày đẹp', 27),
(66, 'Giày Nike Air Max Pre-Day', 3000000, 'nike3.png', 0, 'Giày đẹp', 26),
(67, 'Giày Puma RS-X Toys sneakers', 44000000, 'puma.png', 40, 'Giày đẹp', 27),
(68, 'Giày Biti\'s Hunter Core', 731000, 'bitis3.png', 5, 'Giày đẹp', 25),
(69, 'Giày Nike Air Force 1 \'07 Craft', 3500000, 'nike4.png', 0, 'Giày đẹp', 26),
(70, 'Giày Biti\'s Hunter X Midnight', 800000, 'bitis4.png', 0, 'Giày đẹp', 25),
(71, 'Bộ Parka Chống UV Bỏ Túi', 970000, 'uniqlo1.webp', 0, 'đồ thun co giản', 28),
(72, 'Bộ Parka Lót Vải Jersey Mềm', 970000, 'uniqlo2.webp', 5, 'Đồ Bộ Phong Cách, Thời Trang, Thời Thượng', 28),
(73, 'Bộ Parka Blocktech Siêu Nhẹ', 970000, 'uniqlo3.webp', 10, 'Đồ Bộ Phong Cách, Thời Trang, Thời Thượng', 28),
(74, 'Bộ Áo Khoác Denim Lót Vải', 890000, 'uniqlo4.webp', 0, 'Đồ Bộ Phong Cách, Thời Trang, Thời Thượng', 28),
(79, 'Quần Jean Kem', 250000, 'quanjean4.png', 0, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 16),
(80, 'Quần Jogger Đen', 180000, 'quanjogger1.jpg', 10, 'Chất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cách\r\nĐường may tinh tế sắc sảo\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần cá tính.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,thể thao!', 21),
(81, 'Giày Adidas Superstar Đen', 2500000, 'adidas2.png', 0, 'GiÀY ĐẸP', 24),
(82, 'Giày Adidas Retropy F2 Trắng', 2400000, 'adidas3.png', 0, 'GiÀY ĐẸP', 24),
(83, 'Giày Adidas X Marvel Spider-Man Fortafun', 1250000, 'adidas4.png', 0, 'GiÀY ĐẸP', 24),
(84, 'Giày Fila Oakmont TR', 1800000, 'fila.png', 40, 'Giày đẹp', 27);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `id_giohang` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `sdt` varchar(12) NOT NULL,
  `diachi` varchar(255) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `ngaydat` datetime NOT NULL DEFAULT current_timestamp(),
  `trangthai` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id_loaisanpham` int(11) NOT NULL,
  `tenloaisanpham` varchar(255) CHARACTER SET utf8 COLLATE utf8_esperanto_ci NOT NULL,
  `id_loailoaisanpham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`id_loaisanpham`, `tenloaisanpham`, `id_loailoaisanpham`) VALUES
(15, 'Áo Sơ Mi', 1),
(16, 'Quần Jeans', 0),
(17, 'Áo Thun', 1),
(18, 'Áo Khoác', 1),
(19, 'Áo Hoodie', 1),
(20, 'Áo Len', 1),
(21, 'Quần Jogger', 0),
(22, 'Quần Kaki', 0),
(23, 'Quần Tây', 0),
(24, 'Giày Adidas', 2),
(25, 'Giày Bitis', 2),
(26, 'Giày Nike', 2),
(27, 'Giày thể thao khác', 2),
(28, 'Đồ bộ Nam', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `username` varchar(30) COLLATE utf8_bin NOT NULL,
  `password` text COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `quyen` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT 'Khach Hang'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `member`
--

INSERT INTO `member` (`id`, `username`, `password`, `email`, `quyen`) VALUES
(1, 'hung', '12345', 'sakamoto7554@gmail.com', 'Admin'),
(3, 'quan', '12345', 'quan1234@gmail.com', 'Co-Admin');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD PRIMARY KEY (`id_chitietgiohang`);

--
-- Chỉ mục cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD PRIMARY KEY (`id_sp`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id_giohang`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id_loaisanpham`);

--
-- Chỉ mục cho bảng `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  MODIFY `id_chitietgiohang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  MODIFY `id_sp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id_giohang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id_loaisanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
