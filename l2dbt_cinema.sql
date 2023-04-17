-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 09, 2023 lúc 07:05 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `l2dbt_cinema`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `combo`
--

CREATE TABLE `combo` (
  `macombo` char(30) NOT NULL,
  `tencombo` varchar(50) NOT NULL,
  `giatien` int(11) DEFAULT NULL,
  `chitiet` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `combo`
--

INSERT INTO `combo` (`macombo`, `tencombo`, `giatien`, `chitiet`) VALUES
('cb01', 'Combo 1', 65000, '1 BẮP (NGỌT/MẶN) + 1 NƯỚC (PEPSI/7UP/MIRINDA CAM/M'),
('cb02', 'Combo 2', 80000, '1 BẮP (NGỌT/MẶN) + 2 NƯỚC (PEPSI/7UP/MIRINDA CAM/M'),
('cb03', 'Family 2 Voucher', 150000, '2 BẮP (NGỌT/MẶN) + 4 NƯỚC (PEPSI/7UP/MIRINDA CAM/M');

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ghe`
--

CREATE TABLE `ghe` (
  `maghe` char(30) NOT NULL,
  `maphong` char(30) NOT NULL,
  `loaighe` varchar(30) DEFAULT NULL,
  `trangthai` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `mahd` char(30) NOT NULL,
  `userid` int(11) NOT NULL,
  `mave` char(30) NOT NULL,
  `macombo` char(30) NOT NULL,
  `makhuyenmai` char(30) NOT NULL,
  `masuatchieu` char(30) NOT NULL,
  `maghe` char(30) NOT NULL,
  `soluong` int(11) DEFAULT NULL,
  `thanhtien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `makhuyenmai` char(30) NOT NULL,
  `chitiet` text DEFAULT NULL,
  `tenkhuyenmai` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanhoi`
--

CREATE TABLE `phanhoi` (
  `idphanhoi` char(30) NOT NULL,
  `hovaten` varchar(50) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `sodienthoai` char(12) DEFAULT NULL,
  `noidung` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phim`
--

CREATE TABLE `phim` (
  `maphim` char(30) NOT NULL,
  `tenphim` varchar(50) DEFAULT NULL,
  `theloai` varchar(50) DEFAULT NULL,
  `daodien` varchar(50) DEFAULT NULL,
  `diemdanhgia` char(10) DEFAULT NULL,
  `thoiluong` varchar(50) DEFAULT NULL,
  `ngaykhoichieu` date DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `poster` char(200) DEFAULT NULL,
  `dotuoi` int(11) DEFAULT NULL,
  `trangthai` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phim`
--

INSERT INTO `phim` (`maphim`, `tenphim`, `theloai`, `daodien`, `diemdanhgia`, `thoiluong`, `ngaykhoichieu`, `mota`, `poster`, `dotuoi`, `trangthai`) VALUES
('daotoiac', 'ĐẢO TỘI ÁC', 'Kinh dị', 'Eu Ho', '7.6', '112 phút', '2023-03-31', 'Nhóm du khách trẻ vô tình phá bỏ phong ấn của con quái vật khát máu khi đến tham quan một hòn đảo cấm không dân địa phương nào dám đặt chân đến. Liệu họ có thể bình an thoát khỏi hay đó sẽ là nơi chôn vùi tất cả?', 'daotoiac.jpg', 18, 'dangchieu'),
('demoslayer', 'THANH GƯƠM DIỆT QUỶ', 'Hoạt Hình, Giả Tưởng, Phiêu Lưu', 'Haruo Sotozaki', '6.6', '110 phút', '2023-03-22', 'Sau trận chiến khốc liệt với anh em quỷ Thượng Huyền Lục Gyuutarou và Daki tại Phố Đèn Đỏ, Tanjiro cùng các kiếm sĩ diệt quỷ đều bị thương nặng và được đưa trở về trụ sở của Đội Diệt Quỷ để dưỡng thương và phục hồi. Sau trận chiến, thanh gươm của Tanjiro cũng bị hư hỏng nặng và lúc này, cậu cần một thanh gươm mới để tiếp tục lên đường làm nhiệm vụ. Cậu được đưa đến Làng Rèn Gươm, nơi phụ trách rèn vũ khí cho các kiếm sĩ của Đội Diệt Quỷ và chuẩn bị cho trận chiến mới với các thành viên mạnh nhất trong hàng Thượng Huyền của Thập Nhị Quỷ Nguyệt.\r\n', 'demonslayer.jpg', 13, 'dangchieu'),
('sieulay', 'SIÊU LỪA GẶP SIÊU LẦY', 'Hài', 'Võ Thanh Hòa', '8.1', '112 phút', '2023-03-01', 'Thuộc phong cách hành động – hài hước với các “cú lừa” thông minh và lầy lội đến từ bộ đôi Tú (Anh Tú) và Khoa (Mạc Văn Khoa), Siêu Lừa Gặp Siêu Lầy của đạo diễn Võ Thanh Hòa theo chân của Khoa – tên lừa đảo tầm cỡ “quốc nội” đến đảo ngọc Phú Quốc với mong muốn đổi đời.\r\n\r\nTại đây, Khoa gặp Tú – tay lừa đảo “hàng real” và cùng Tú thực hiện các phi vụ từ nhỏ đến lớn. Cứ ngỡ sự ranh mãnh của Tú và sự may mắn trời cho của Khoa sẽ giúp họ trở thành bộ đôi bất khả chiến bại, nào ngờ lại đối mặt với nhiều tình huống dở khóc – dở cười. Nhất là khi băng nhóm của bộ đôi nhanh chóng mở rộng vì sự góp mặt của ông Năm (Nhất Trung) và bé Mã Lai (Ngọc Phước).\r\n', 'sieulua.jpg', 16, 'dangchieu'),
('songsot', 'SỐNG SÓT', 'Tâm Lý, Giật Gân', 'Dmitriy Suvorov', '7.8', '96 phút', '2023-03-29', 'Vào ngày 24 tháng 8 năm 1981, đôi vợ chồng mới cưới Larisa và Vladimir Savitsky lên chuyến bay Komsomolsk-on-Amur - Blagoveshchensk. 30 phút sau khi hạ cánh, máy bay dân sự AN-24 va chạm với một máy bay khác và bị vỡ thành mảnh vụn ở độ cao hơn 5 km so với mặt đất. Không ai được dự đoán sống sót... nhưng một phép màu đã xảy ra. Larisa Savitskaya tỉnh dậy giữa đống đổ nát của chiếc máy bay tại một khu rừng rậm rạp. Bây giờ, cô phải tạo ra một phép màu thật sự, điều mà chỉ một người có ý chí mạnh mẽ mới có thể làm được… sống sót!\r\nXem thêm tại: https://www.galaxycine.vn/dat-ve/the-one', 'songsot.jpg', 16, 'dangchieu'),
('thecovenant', 'THE COVENANT', 'Tâm lý, Hành động', 'Guy Ritchie', '7.2', '120 phút', '2023-04-21', 'Bối cảnh phim Khế Ước diễn ra tại chiến trường Afghanistan. Trong nhiệm vụ cuối cùng, Trung sĩ John Kinley (Jake Gyllenhaal thủ vai) cùng đội với phiên dịch viên bản địa Ahmed (Dal Salim thủ vai). Khi đơn vị của họ bị phục kích, John và Ahmed là 2 người sống sót duy nhất. Bị kẻ địch truy đuổi, Ahmed liều mạng đưa John đang bị thương băng qua nhiều dặm đường địa hình khắc nghiệt đến nơi an toàn. Trở về Mỹ, John biết rằng Ahmed và gia đình không được cấp giấy thông hành tới Mỹ như đã hứa. Quyết tâm bảo vệ bạn mình và đền ơn cứu mạng, John trở lại chiến trường để giúp Ahmed và gia đình trước khi lực lượng phiến quân phát hiện ra họ.', 'thecovenant.jpg', 18, 'sapchieu'),
('thefirstslamdunk', 'THE FIRST SLAM DUNK', 'Tâm Lý, Hài, Hoạt Hình', 'Yasuyuki Ebara, Takehiko Inoue', '8.9', '90 phút', '2023-04-14', 'The First Slam Dunk - phiên bản điện ảnh đầu tiên của loạt phim/truyện đình đám này sẽ do đích thân tác giả Inoue Takehiko chỉ đạo. Tuy nhiên lần này, câu chuyện sẽ được kể từ góc nhìn của chàng hậu vệ nhỏ con Miyagi Ryota, thay vì anh chàng tóc đỏ xốc nổi Hanamichi. Lấy bối cảnh trận đấu quan trọng giữa Shohoku và Sannoh - đội bóng top 10 toàn quốc, phim đan xen câu chuyện quá khứ của từng thành viên, đặc biệt là Ryota, cùng những diễn biến của trận đấu. Từ đó, tác giả Inoue Takehiko thành công khắc họa việc bóng rổ có ảnh hưởng to lớn như thế nào đến sự trưởng thành của mỗi thành viên Shohoku.', 'thefirstslamdunk.jpg', 13, 'sapchieu'),
('tomandjerry', 'TOM & JERRY: QUẬY TUNG NEW YORK', 'Hài, Gia Đình, Hoạt Hình', 'Tim Story', '9.2', '101 phút', '2023-03-10', 'Sau bao năm rượt đuổi, Tom và Jerry đã làm hòa, chia tay nhau để rời khỏi ngôi nhà gắn bó bấy lâu và bắt đầu cuộc phiêu lưu riêng. Chuột Jerry tìm đến \"định cư\" tại một khách sạn sang trọng sắp tổ chức đám cưới thế kỷ.\r\n\r\nĐược giao nhiệm vụ tống cổ Jerry, cô nhân viên khách sạn Kayla đem mèo tới bắt chuột. Đó không ai khác, chính là Tom.\r\n', 'tomjerry.jpg', 0, 'dangchieu'),
('trinhcongson', 'TRỊNH CÔNG SƠN', 'Tình Cảm, Lãng Mạn', 'Phan Gia Nhật Linh', '7.4', '95 phút', '2023-03-31', 'Bộ phim khắc họa chân dung Trịnh Công Sơn từ một chàng thư sinh đa tài lãng tử trở thành “người nhạc sĩ viết tình ca hay nhất thế kỷ” với hàng trăm ca khúc về tình yêu và thân phận con người. Bộ phim “Trịnh Công Sơn” tràn đầy cảm hứng và nhiệt huyết của tuổi trẻ về người nhạc sĩ vĩ đại, đã sống, yêu và sáng tác trong một giai đoạn lịch sử của đất nước với tình yêu cứu rỗi, vượt lên mọi tan vỡ, khổ đau.\r\n', 'trinhcongson.jpg', 13, 'dangchieu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong`
--

CREATE TABLE `phong` (
  `maphong` char(30) NOT NULL,
  `tenphong` varchar(30) DEFAULT NULL,
  `soluongghe` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phong`
--

INSERT INTO `phong` (`maphong`, `tenphong`, `soluongghe`) VALUES
('P01', 'Phòng 1', 40),
('P02', 'Phòng 2', 40),
('P03', 'Phòng 3', 40),
('P04', 'Phòng 4', 40),
('P05', 'Phòng 5', 40),
('P06', 'Phòng 6', 40),
('P07', 'Phòng 7', 40),
('P08', 'Phòng 8', 40),
('P09', 'Phòng 9', 40),
('P10', 'Phòng 10', 40),
('P11', 'Phòng 11', 40);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `suatchieu`
--

CREATE TABLE `suatchieu` (
  `masuatchieu` char(30) NOT NULL,
  `maphim` char(30) NOT NULL,
  `maphong` char(30) NOT NULL,
  `ngaychieu` date DEFAULT NULL,
  `giochieu` time DEFAULT NULL,
  `giave` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `suatchieu`
--

INSERT INTO `suatchieu` (`masuatchieu`, `maphim`, `maphong`, `ngaychieu`, `giochieu`, `giave`) VALUES
('Sdaotoiac01', 'daotoiac', 'P01', '2023-03-31', '18:00:00', 70000),
('Sdaotoiac02', 'daotoiac', 'P03', '2023-04-01', '18:00:00', 70000),
('Sdaotoiac03', 'daotoiac', 'P05', '2023-04-01', '20:00:00', 70000),
('Sdemoslayer01', 'demoslayer', 'P05', '2023-03-22', '08:00:00', 65000),
('Sdemoslayer02', 'demoslayer', 'P06', '2023-03-22', '11:00:00', 65000),
('Sdemoslayer03', 'demoslayer', 'P01', '2023-03-25', '11:00:00', 65000),
('Sdemoslayer04', 'demoslayer', 'P02', '2023-03-25', '14:00:00', 65000),
('Sdemoslayer05', 'demoslayer', 'P03', '2023-03-25', '18:00:00', 65000),
('Ssieulay01', 'sieulay', 'P01', '2023-03-01', '08:00:00', 65000),
('Ssieulay02', 'sieulay', 'P02', '2023-03-01', '15:30:00', 65000),
('Ssieulay03', 'sieulay', 'P03', '2023-03-01', '15:30:00', 65000),
('Ssieulay04', 'sieulay', 'P04', '2023-03-02', '08:00:00', 65000),
('Ssieulay05', 'sieulay', 'P05', '2023-03-02', '11:00:00', 65000),
('Ssieulay06', 'sieulay', 'P06', '2023-03-02', '15:00:00', 65000),
('Ssieulay07', 'sieulay', 'P07', '2023-03-02', '18:00:00', 65000),
('Ssongsot01', 'songsot', 'P07', '2023-03-29', '08:00:00', 70000),
('Ssongsot02', 'songsot', 'P08', '2023-03-29', '13:00:00', 70000),
('Ssongsot03', 'songsot', 'P02', '2023-03-30', '15:00:00', 70000),
('Ssongsot04', 'songsot', 'P03', '2023-03-30', '18:00:00', 70000),
('Stomandjerry01', 'tomandjerry', 'P01', '2023-03-10', '08:00:00', 80000),
('Stomandjerry02', 'tomandjerry', 'P02', '2023-03-10', '11:00:00', 80000),
('Stomandjerry03', 'tomandjerry', 'P03', '2023-03-11', '13:00:00', 80000),
('Stomandjerry04', 'tomandjerry', 'P04', '2023-03-11', '18:00:00', 80000),
('Stomandjerry05', 'tomandjerry', 'P08', '2023-03-12', '14:00:00', 80000),
('Stomandjerry06', 'tomandjerry', 'P09', '2023-03-12', '18:00:00', 80000),
('Strinhcongson01', 'trinhcongson', 'P01', '2023-03-31', '13:00:00', 60000),
('Strinhcongson02', 'trinhcongson', 'P06', '2023-04-01', '15:00:00', 60000),
('Strinhcongson03', 'trinhcongson', 'P04', '2023-04-01', '20:00:00', 60000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `matin` int(11) NOT NULL,
  `tieude` varchar(50) DEFAULT NULL,
  `noidung` text DEFAULT NULL,
  `hinhanh` char(200) DEFAULT NULL,
  `luotxem` int(11) DEFAULT NULL,
  `luotdanhgia` int(11) DEFAULT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`matin`, `tieude`, `noidung`, `hinhanh`, `luotxem`, `luotdanhgia`, `category`) VALUES
(1, 'Siêu Lừa Gặp Siêu Lầy: Phi Vụ Hoàn Hảo Của Điện Ản', 'Siêu Lừa Gặp Siêu Lầy là một cuốn phim tốt về mọi mặt, nếu mong muốn có những giây phút giải trí thư giãn', './img/rv1.jpg', 3107, 8, 'binhluan'),
(2, 'Ant-Man And The Wasp Quantumania: Cú Lừa Xuất S', 'Ai nghĩ rằng trailer Ant-Man And The Wasp: Quantumania đã tóm tắt bộ phim thì lầm to rồi.', './img/rv2.jpg', 8113, 9, 'binhluan'),
(3, 'M3GAN: Khi \"Cúp Bế\" Trỗi Dậy Làm Chủ Con Người', 'Vừa hấp dẫn, vừa giải trí, M3GAN hoàn toàn xứng đáng với những lời khen từ đại chúng và các nhà phê bình.', './img/rv3.jpg', 3752, 9, 'binhluan'),
(4, 'Chị Chị Em Em 2: Ngọc Trinh Hoàn Hảo, Minh Hă', 'Đạo diễn Vũ Ngọc Đãng thành công vừa làm nổi bật Ngọc Trinh bốc lửa vừa tôn được nét đẹp đằm thắm của Minh Hằng.', './img/rv4.jpg', 10023, 9, 'binhluan'),
(5, 'Oscar 2023: Những Chuyện Hậu Trường Đầy Bất ', 'Những điều thú vị đằng sau sự kiện điện ảnh lớn nhất năm! Hãy cùng xem ai sẽ là người chiến thắng!', './img/blog1.jpg', 3255, 0, 'blog'),
(6, 'Bóc Trứng Phục Sinh Ant-Man And The Wasp: Quantuma', 'Những bộ phim thuộc vũ trụ điện ảnh Marvel luôn “chôn” rất nhiều Trứng Phục Sinh để các fan trung thành khám phá.', './img/blog2.jpg', 967, 0, 'blog'),
(7, 'Fast X: Vin Diesel Rủ Dàn Siêu Anh Hùng Đua Xe?', 'Fast X – phần mở đầu cho “cuộc đua cuối” của đại gia đình Toretto vừa tung ra trailer siêu hấp dẫn vào 10.02 vừa qua.', './img/blog3.jpg', 158, 0, 'blog'),
(8, 'Luật Điện Ảnh Mới Có Gì Mới?', 'So với Luật Điện ảnh 2006 trước đây, Luật Điện ảnh 2022 (có hiệu lực từ ngày 01.01.2023) thay đổi một số điểm', './img/blog4.jpg', 488, 0, 'blog');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `ngaysinh` varchar(10) DEFAULT NULL,
  `gioitinh` varchar(10) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `sodienthoai` char(12) DEFAULT NULL,
  `matkhau` char(50) NOT NULL,
  `role` varchar(10) DEFAULT 'khach',
  `diachi` varchar(50) DEFAULT NULL,
  `tinh` varchar(50) DEFAULT NULL
)

INSERT INTO `user` (`userid`, `hoten`, `ngaysinh`, `gioitinh`, `email`, `sodienthoai`, `matkhau`, `role`, `diachi`, `tinh`) VALUES(1, 'admin', NULL, NULL, NULL, '0123456789', '123456', 'khach', NULL, NULL);


-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ve`
--

CREATE TABLE `ve` (
  `mave` char(30) NOT NULL,
  `maphim` char(30) NOT NULL,
  `giave` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `ve`
--

INSERT INTO `ve` (`mave`, `maphim`, `giave`) VALUES
('Vdaotoiac', 'daotoiac', 70000),
('Vdemoslayer', 'demoslayer', 65000),
('Vsieulay', 'sieulay', 65000),
('Vsongsot', 'songsot', 70000),
('Vthecovenant', 'thecovenant', NULL),
('Vthefirstslamdunk', 'thefirstslamdunk', NULL),
('Vtomandjerry', 'tomandjerry', 80000),
('Vtrinhcongson', 'trinhcongson', 60000);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `combo`
--
ALTER TABLE `combo`
  ADD PRIMARY KEY (`macombo`);

--
-- Chỉ mục cho bảng `ghe`
--
ALTER TABLE `ghe`
  ADD PRIMARY KEY (`maghe`),
  ADD KEY `maphong` (`maphong`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahd`),
  ADD KEY `userid` (`userid`),
  ADD KEY `mave` (`mave`),
  ADD KEY `macombo` (`macombo`),
  ADD KEY `makhuyenmai` (`makhuyenmai`),
  ADD KEY `masuatchieu` (`masuatchieu`),
  ADD KEY `maghe` (`maghe`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`makhuyenmai`);

--
-- Chỉ mục cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD PRIMARY KEY (`idphanhoi`);

--
-- Chỉ mục cho bảng `phim`
--
ALTER TABLE `phim`
  ADD PRIMARY KEY (`maphim`);

--
-- Chỉ mục cho bảng `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`maphong`);

--
-- Chỉ mục cho bảng `suatchieu`
--
ALTER TABLE `suatchieu`
  ADD PRIMARY KEY (`masuatchieu`),
  ADD KEY `maphim` (`maphim`),
  ADD KEY `maphong` (`maphong`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`matin`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- Chỉ mục cho bảng `ve`
--
ALTER TABLE `ve`
  ADD PRIMARY KEY (`mave`),
  ADD KEY `maphim` (`maphim`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `matin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `ghe`
--
ALTER TABLE `ghe`
  ADD CONSTRAINT `ghe_ibfk_1` FOREIGN KEY (`maphong`) REFERENCES `phong` (`maphong`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`),
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`mave`) REFERENCES `ve` (`mave`),
  ADD CONSTRAINT `hoadon_ibfk_3` FOREIGN KEY (`macombo`) REFERENCES `combo` (`macombo`),
  ADD CONSTRAINT `hoadon_ibfk_4` FOREIGN KEY (`makhuyenmai`) REFERENCES `khuyenmai` (`makhuyenmai`),
  ADD CONSTRAINT `hoadon_ibfk_5` FOREIGN KEY (`masuatchieu`) REFERENCES `suatchieu` (`masuatchieu`),
  ADD CONSTRAINT `hoadon_ibfk_6` FOREIGN KEY (`maghe`) REFERENCES `ghe` (`maghe`);

--
-- Các ràng buộc cho bảng `suatchieu`
--
ALTER TABLE `suatchieu`
  ADD CONSTRAINT `suatchieu_ibfk_1` FOREIGN KEY (`maphim`) REFERENCES `phim` (`maphim`),
  ADD CONSTRAINT `suatchieu_ibfk_2` FOREIGN KEY (`maphong`) REFERENCES `phong` (`maphong`);

--
-- Các ràng buộc cho bảng `ve`
--
ALTER TABLE `ve`
  ADD CONSTRAINT `ve_ibfk_1` FOREIGN KEY (`maphim`) REFERENCES `phim` (`maphim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
