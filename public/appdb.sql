-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 14, 2024 lúc 02:31 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12
CREATE DATABASE if not EXISTS appdb;
use appdb;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `appdb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `full_name`, `email`, `phone_number`, `birth_date`, `role`, `address`) VALUES
(1, 'admin', 'a', 'Nguyễn Văn Tuấn', 'admin.an@gmail.com', '0387235141', '2024-03-16', 'Admin', '35, Nguyễn Huệ, Hoàng Mai, HN35'),
(2, 'thuylinh023', 'a', 'Nguyễn Thùy Linh', 'thuylinh.tl@gmail.com', '0932479262', '2024-03-23', 'Admin', '52, Đê La Thành, Ba Đình, HN'),
(3, 'hang097', 'a', 'Phan Thu Hằng', 'hang097@gmail.com', '0376840216', '2024-03-23', 'KDV', '87, Tây Sơn, Đống Đa, HN'),
(4, 'tuananh03', NULL, 'Trịnh Tuấn Anh', 'tuananh033.ta@gmail.com', '0941114787', '2003-04-20', 'KDV', '25, Lê Duẩn, Hai Bà Trưng, HN'),
(5, 'kdv', 'a', 'Hoàng Văn Tuấn', 'tuan088@gmail.com', '0377932284', '1998-03-11', 'Admin', '63 Võ Văn Kiệt, Hoàng Mai, HN'),
(6, 'ngan093', NULL, 'Đinh Thị Ngân', 'ngan093.dtn@gmail.com', '0373918209', '1993-09-03', 'User', '14 Phạm Văn Đồng, Bắc Từ Liêm, HN'),
(7, 'datnguyen07', NULL, 'Hoàng Quốc Đạt', 'datng.dnn@gmail.com', '0976498645', '1999-01-09', 'User', '9, Xuân Thủy, Cầu Giấy, HN'),
(8, 'tuuyenne', NULL, 'Trần Tú Uyên', 'tuuye0303n@gmail.com', '0863356739', '1993-09-03', 'User', 'Phố 7 Hàng Lụa, Đống Đa\r\n'),
(9, 'thanhmai2001', NULL, 'Nguyễn Thanh Mai', 'thanhmai2001@gmail.com', '0987654321', '2001-01-20', 'User', '87, Tây Sơn, Đống Đa'),
(10, 'thanhcongna2k2', NULL, 'Lê Thành Công', 'thanhcong123@gmail.xn--com-gla', '09091412623', '1990-07-05', 'User', '18, Hoàng Diệu, Hồng Bàngádfasfjsdj'),
(11, 'chinchin', NULL, 'Nguyễn Văn Chín', 'user11@gmail.com', '0123456789', '2024-02-27', 'User', '123 Nguyễn Chí Thanh, Đống Đa'),
(12, 'user12', NULL, 'Trần Thị Mười Hai', 'user12@gmail.com', '0987654321', '1992-12-15', 'User', '456 Lê Lợi, Hai Bà Trưng, HN'),
(13, 'user', 'a', 'Lê Thị Mười Ba', 'user13@gmail.com', '0912345678', '1998-02-28', 'User', '789 Trần Hưng Đạo, Hoàn Kiếm, HN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `assets`
--

CREATE TABLE `assets` (
  `id` int(11) NOT NULL,
  `asset_name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `price` bigint(20) NOT NULL,
  `purchase_date` date DEFAULT NULL,
  `warranty_period` varchar(255) DEFAULT NULL,
  `depreciation` decimal(5,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `assets`
--

INSERT INTO `assets` (`id`, `asset_name`, `category`, `status`, `price`, `purchase_date`, `warranty_period`, `depreciation`, `description`, `user_id`) VALUES
(1, 'Laptop Dell đời mới  vẫn còn sử dụng rất tốt', 'Điện tử', 'Mới', 12030000, '2022-01-01', '', 10.00, 'Đây là laptop Dell', 1),
(2, 'Điện thoại iPhone 13 Promax cần thanh lý giá rẻ ', 'Điện tử', 'Mới', 130000000, '2022-02-15', '', 15.00, 'Đây là điện thoại iPhone', 1),
(5, 'Máy ảnh Canon đời mới còn sử dụng tốt', 'Điện máy', 'Mới', 2300000, '2019-11-23', '5', 8.00, 'Đây là máy ảnh Canon đời mới sử dụng ngon ai cần liên hệ tooi nhé', 1),
(6, 'Máy giặt LG', 'Kệ kho', 'Cũ', 12400000, '2021-10-18', '', 10.00, 'Đây là máy giặt LG', 1),
(7, 'Tủ lạnh Panasonic', 'Gia dụng', 'Cũ', 1240000, '2021-09-02', '', 8.00, 'Đây là tủ lạnh Panasonic', 1),
(8, 'Quạt điện Mitsubishi', 'Điện máy', 'Mới', 123000000, '2022-05-10', '', 5.00, 'Đây là quạt điện Mitsubish', 1),
(9, 'Bàn làm việc', 'Nội thất', 'Cũ', 1230000, '2021-08-15', '', 5.00, 'Đây là bàn làm việc', 1),
(10, 'Ghế xoay', 'Nội thất', 'Mới', 0, '2022-04-01', '2 năm', 8.00, 'Đây là ghế xoay', 1),
(11, 'Ổ cứng di động', 'Phụ kiện', 'Mới', 0, '2022-03-05', '1 năm', 10.00, 'Đây là ổ cứng di động', 1),
(12, 'Lò vi sóng', 'Đồ gia dụng', 'Cũ', 0, '2021-07-20', '3 năm', 5.00, 'Đây là lò vi sóng', 1),
(13, 'Ổn áp Standa', 'Thiết bị điện', 'Cũ', 0, '2021-06-12', '2 năm', 8.00, 'Đây là ổn áp Standa', 1),
(14, 'Máy phun sương', 'Kệ kho', 'Mới', 0, '2022-02-28', '', 10.00, 'Đây là máy phun sương', 1),
(15, 'Máy massage', 'Thiết bị y tế', 'Cũ', 0, '2021-05-15', '2 năm', 8.00, 'Đây là máy massage', 1),
(16, 'Đèn trang trídây LED', 'Đèn', 'Mới', 0, '2022-01-10', '1 năm', 10.00, 'Đây là đèn trang trí dây LED', 1),
(17, 'Bếp điện từ', 'Bếp', 'Cũ', 0, '2021-04-05', '3 năm', 5.00, 'Đây là bếp điện từ', 1),
(49, 'Laptop Dell XPS', 'Điện tử', 'Mới', 7800000, '2018-07-02', '', 10.00, 'Đây là laptop Dell', 1),
(56, 'Máy tính', 'Nội thất', 'Mới', 45, '2020-03-06', '3', 2.00, 'không', 1),
(58, 'Sách truyện', 'Giải trí', 'Cũ', 130500, '2021-02-12', '', 3.00, '', 1),
(59, 'a', 'Điện máy', 'Mới', 343242343, '2024-03-06', '3', 3.00, '', 1),
(60, 'Tủ lạnh Yano', 'Điện máy', 'Cũ', 1240000, '2024-03-27', '3', 3.00, 'Tủ lạnh chất lượng cao', 5),
(61, 'Quạt bàn img', 'Lưu trữ', 'Cũ', 12450000, '2024-03-20', '3', 3.00, 'Không', 5),
(62, 'Điện thoại', 'Điện máy', 'Cũ', 123000000, '2024-03-15', '3', 12.00, 'đây là chú thích', 13),
(63, 'Quạt điện Mitsubishi', 'Lưu trữ', 'Cũ', 135231323, '0000-00-00', '', 4.00, 'chú thích nha', 13),
(64, 'Điện thoại iPhone 17', 'Lưu trữ', 'Cũ', 134542654, '2024-03-14', '4', 2.00, '', 13),
(65, 'Máy giặt LG', 'Gia dụng', 'Cũ', 1213956912, '0000-00-00', '3', 12.00, 'hết han\r\n', 3),
(66, 'Laptop Dell đời mới  vẫn còn sử dụng rất tốt', 'Gia dụng', 'Mới', 12000000, '2024-03-21', '', 3.00, '', 3),
(67, 'Điện thoại iPhone 13 Promax cần thanh lý giá rẻ ', 'Giải trí', 'Cũ', 45000000, '0000-00-00', '5', 14.00, '', 3),
(68, 'huuaauau', 'Lưu trữ', 'Cũ', 1233123, '2024-03-29', '3', 12.00, 'h', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `asset_id`, `user_id`) VALUES
(500, 68, 1),
(519, 1, 1),
(520, 8, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `amount` bigint(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `expenses`
--

INSERT INTO `expenses` (`id`, `name`, `amount`, `note`, `user_id`) VALUES
(1, 'Điền thuê nhà', 1000000, 'Khoản chi cố định hàng tháng', 1),
(2, 'Mua thực phẩm', 500000, 'Khoản chi biến đổi hàng tháng', 1),
(3, 'Trả học phí cho con', 200000, 'Khoản chi cố định hàng tuần nha các bạn ơi ngày tôi hàm', 1),
(4, 'Tiền điện', 1000, 'Khoản chi cố định hàng tháng', 1),
(5, 'Tiền nướcd', 500000, 'Khoản chi biến đổi hàng tháng', 1),
(6, 'Tiền học phí cho con', 20000, 'Khoản chi cố định hàng năm', 1),
(7, 'Tiền nước tháng 9', 1000000, 'Khoản chi cố định hàng tháng', 1),
(8, 'nah', 5066, 'Khoản chi biến đổi hàng tháng', 1),
(9, NULL, 20000000, 'Khoản chi cố định hàng năm', 1),
(10, NULL, 1000000, 'Khoản chi cố định hàng tháng', 1),
(11, NULL, 500000, 'Khoản chi biến đổi hàng tháng', 1),
(12, NULL, 20000000, 'Khoản chi cố định hàng năm', 1),
(13, NULL, 1000000, 'Khoản chi cố định hàng tháng', 1),
(14, NULL, 500000, 'Khoản chi biến đổi hàng tháng', 1),
(15, 'Tiền nước', 200000, 'Khoản chi cố định hàng năm', 1),
(109, 'dfb', 1000, 'sdf', 1),
(110, '', 0, '', 1),
(111, 'Hoàng Văn Tuấn', 123454, 'aádf', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `market_assets`
--

CREATE TABLE `market_assets` (
  `id` int(11) NOT NULL,
  `asset_name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `price` bigint(20) NOT NULL,
  `purchase_date` date DEFAULT NULL,
  `warranty_period` varchar(255) DEFAULT NULL,
  `depreciation` decimal(5,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `market_assets`
--

INSERT INTO `market_assets` (`id`, `asset_name`, `category`, `status`, `price`, `purchase_date`, `warranty_period`, `depreciation`, `description`, `user_id`) VALUES
(1, 'Laptop Dell đời mới  vẫn còn sử dụng rất tốt', 'Điện tử', 'Mới', 12030000, '2022-01-01', '', 10.00, 'Đây là laptop Dell', 1),
(2, 'Điện thoại iPhone 13 Promax cần thanh lý giá rẻ ', 'Điện tử', 'Mới', 130000000, '2022-02-15', '', 15.00, 'Đây là điện thoại iPhone', 1),
(5, 'Máy ảnh Canon đời mới còn sử dụng tốt', 'Điện máy', 'Mới', 2300000, '2019-11-23', '5', 8.00, 'Đây là máy ảnh Canon đời mới sử dụng ngon ai cần liên hệ tooi nhé', 1),
(8, 'Quạt điện Mitsubishi', 'Điện máy', 'Mới', 123000000, '2022-05-10', '', 5.00, 'Đây là quạt điện Mitsubish', 1),
(9, 'Bàn làm việc', 'Nội thất', 'Cũ', 1230000, '2021-08-15', '', 5.00, 'Đây là bàn làm việc', 1),
(10, 'Ghế xoay', 'Nội thất', 'Mới', 1350000, '2022-04-01', '', 8.00, 'Đây là ghế xoay', 1),
(15, 'Máy massage', 'Điện tử', 'Cũ', 1748984, '2021-05-15', '', 8.00, 'Đây là máy massage', 1),
(17, 'Bếp điện từ', 'Gia dụng', 'Cũ', 1560000, '2021-04-05', '', 5.00, 'Đây là bếp điện từ', 1),
(49, 'Laptop Dell XPS', 'Điện tử', 'Mới', 7800000, '2018-07-02', '', 10.00, 'Đây là laptop Dell', 1),
(58, 'Sách truyện', 'Giải trí', 'Cũ', 130500, '2021-02-12', '', 3.00, '', 1),
(59, 'a', 'Điện máy', 'Mới', 343242343, '2024-03-06', '3', 3.00, '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pending_assets`
--

CREATE TABLE `pending_assets` (
  `id` int(11) NOT NULL,
  `asset_name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `price` bigint(20) NOT NULL,
  `purchase_date` date DEFAULT NULL,
  `warranty_period` varchar(255) DEFAULT NULL,
  `depreciation` decimal(5,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `total_expenses`
--

CREATE TABLE `total_expenses` (
  `user_id` int(11) DEFAULT NULL,
  `total` bigint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `total_expenses`
--

INSERT INTO `total_expenses` (`user_id`, `total`) VALUES
(1, 23000000);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asset_id` (`asset_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `market_assets`
--
ALTER TABLE `market_assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `pending_assets`
--
ALTER TABLE `pending_assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `total_expenses`
--
ALTER TABLE `total_expenses`
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `assets`
--
ALTER TABLE `assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=522;

--
-- AUTO_INCREMENT cho bảng `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `assets`
--
ALTER TABLE `assets`
  ADD CONSTRAINT `assets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `accounts` (`id`);

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`asset_id`) REFERENCES `assets` (`id`),
  ADD CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `accounts` (`id`);

--
-- Các ràng buộc cho bảng `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `accounts` (`id`);

--
-- Các ràng buộc cho bảng `total_expenses`
--
ALTER TABLE `total_expenses`
  ADD CONSTRAINT `total_expenses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
