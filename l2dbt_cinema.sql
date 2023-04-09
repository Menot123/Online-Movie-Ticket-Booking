-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 09, 2023 lúc 05:04 PM
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
-- Cơ sở dữ liệu: `l2dbt_cinema`
--

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `phim`
--
ALTER TABLE `phim`
  ADD PRIMARY KEY (`maphim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
