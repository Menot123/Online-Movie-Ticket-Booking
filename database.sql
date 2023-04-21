-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 21, 2023 lúc 09:38 AM
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
-- Cấu trúc bảng cho bảng `combo`
--

CREATE TABLE `combo` (
  `macombo` char(30) NOT NULL,
  `tencombo` varchar(50) NOT NULL,
  `giatien` int(11) DEFAULT NULL,
  `chitiet` varchar(50) DEFAULT NULL,
  `trangthai` varchar(50) NOT NULL DEFAULT 'hien'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `combo`
--

INSERT INTO `combo` (`macombo`, `tencombo`, `giatien`, `chitiet`, `trangthai`) VALUES
('cb01', 'Combo 1', 65000, '1 BẮP (NGỌT/MẶN) + 1 NƯỚC (PEPSI/7UP/MIRINDA CAM/M', 'hien'),
('cb02', 'Combo 2', 80000, '1 BẮP (NGỌT/MẶN) + 2 NƯỚC (PEPSI/7UP/MIRINDA CAM/M', 'hien'),
('cb03', 'Family 2 Voucher', 150000, '2 BẮP (NGỌT/MẶN) + 4 NƯỚC (PEPSI/7UP/MIRINDA CAM/M', 'hien');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `daodien`
--

CREATE TABLE `daodien` (
  `madaodien` int(11) NOT NULL,
  `ten` varchar(100) NOT NULL,
  `hinhanh` char(200) NOT NULL,
  `hinhanhdoc` char(200) NOT NULL,
  `luotxem` int(11) NOT NULL,
  `mota` text NOT NULL,
  `ngaysinh` date NOT NULL,
  `chieucao` varchar(50) NOT NULL,
  `quoctich` varchar(50) NOT NULL,
  `tieusu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `daodien`
--

INSERT INTO `daodien` (`madaodien`, `ten`, `hinhanh`, `hinhanhdoc`, `luotxem`, `mota`, `ngaysinh`, `chieucao`, `quoctich`, `tieusu`) VALUES
(1, 'James Wan', 'wan1.jpg', 'wan2.jpg', 1000, 'Khi Hollywood vẫn còn bị chỉ trích về nạn phân biệt chủng tộc, khi những tài năng da màu đều phải chật vật để tìm chỗ đứng, một người đàn ông đã chứng minh rằng chỉ cần có khả năng kiệt xuất thì dù ở đâu hay bất cứ vị trí nào, bạn cũng sẽ tỏa sáng. Anh ấy là James Wan.', '1997-07-27', '168 cm', 'Malaysia', 'Khi Hollywood vẫn còn bị chỉ trích về nạn phân biệt chủng tộc, khi những tài năng da màu đều phải chật vật để tìm chỗ đứng, một người đàn ông đã chứng minh rằng chỉ cần có khả năng kiệt xuất thì dù ở đâu hay bất cứ vị trí nào, bạn cũng sẽ tỏa sáng. Anh ấy là James Wan.   Là người Malaysia gốc Hoa nhưng James Wan lại lớn lên ở Úc. Anh chứng minh tài năng thiên bẩm từ rất sớm khi năm 23 tuổi đã đoạt giải tại cuộc thi làm phim không chuyên ở Melbourne với bộ phim Stygian. \r\nMột trong những cột mốc quan trọng nhất cuộc đời James là khi anh gặp được người bạn đồng chí hướng Leigh Whannell. Cùng nhau, họ cho ra đời phim Saw -  một dấu son chói lọi trong sự nghiệp của James. Năm 2004, Saw gây được tiếng vang trên toàn thế giới. \r\nChẳng ai ngờ được một bộ phim chỉ được đầu tư vỏn vẹn 1,2 triệu $ lại thắng đến gần 104 triệu $. Câu chuyện về cuộc đào thoát vô vọng của các nạn nhân khỏi kẻ giết người máu lạnh đưa người xem đến vô vàn cung bậc cảm xúc khác nhau và khiến các fan dòng phim kinh dị phát cuồng. Từ thành công ban đầu này, Saw ngày càng phát triển và trở thành một trong những franchise kinh dị nổi tiếng nhất mọi thời. Hiện Saw đã có đến 7 phần, với một trong số đó ở định dạng 3D, trở thành thương hiệu phim kinh dị phổ biến toàn thế giới. Tuy nhiên, không phải lúc nào thần may mắn cũng mỉm cười với James Wan, hai xuất phẩm Dead Silence, Death Sentence vào năm 2007 của anh đều không đạt được thành công như kỳ vọng. Phải thua lỗ khi đầu tư đến 20 triệu $ cho một bộ phim, có lẽ đó là khoảnh khắc James quyết định kiên trì với dòng phim kinh dị kinh phí thấp. \r\nKhông ngừng tìm tòi và sáng tạo, James và Leigh Whannell đã chứng minh rằng, thành công của Saw không chỉ là ăn may. Năm 2010, James đạo diễn, Leigh biên kịch, họ cùng trở lại “báo thù” khi cho ra mắt  Insidious. Bộ phim này cũng ăn khách đến mức được phát triển thành franchise kinh dị. T\r\nhương hiệu “Quỷ quyệt” đã càn quét phòng vé với tổng doanh thu hơn 300 triệu $ trong khi kinh phí cho cả ba phần phim chỉ hơn 15 triệu $. Series  gay cấn, ly kỳ và đầy bí ẩn này sắp ra mắt phần 4 vào năm sau với James Wan ở vai trò nhà sản xuất. Năm 2013, James Wan chạm đến thành công rực rỡ nhất từ trước đến nay trong sự nghiệp với The Conjuring.  Dựa trên câu chuyện có thật về một trong 10000 hồ sơ điều tra của cặp vợ chồng nhà ngoại cảm Warren, bộ phim kinh dị với kinh phí 20 triệu $ này đã thu về tổng cộng 318 triệu $ trên toàn thế giới, nhận được vô số lời khen và được đánh giá đến 86% tươi ngon trên Rotten Tomatoes – một số điểm quá tốt với dòng phim kinh dị. The Conjuring chính là bước tiến quan tậm trong sự nghiệp của của James Wan khi bộ phim vượt qua mọi khuôn mẫu thông thường của dòng phim kinh dị và “dọa ma” theo hướng hoàn toàn khác. Người xem sẽ bị bất ngờ bởi lối dàn dựng tinh tế, khéo léo và đầy bất ngờ của James. Không có gì nghi ngờ khi James được mệnh danh là “phù thủy của những nỗi sợ”, “bậc thầy của dòng phim kinh dị” và là cái tên gây kinh hoàng lẫn hứng thú đối với tất cả các fan dòng phim kinh dị. Thế nhưng, khi cả thế giới đang trông chờ nỗi sợ tiếp theo thì James lại khiến mọi người bất ngờ khi trở thành đạo diễn của Fast And Furious 7. Một lần nữa, James Wan lại chứng tỏ “bàn tay Midas” của anh là có thật khi cú chạm “mọi thứ đều hóa thành vàng” của anh khiến doanh thu Fast 7 tăng gấp đôi so với Fast 6. Dù quá trình quay phim gặp khó khăn do tai nạn thương tâm của tài tử Paul Walker, James và ekip làm phim đã vượt qua tất cả mà đem về 1,5 tỷ $ doanh thu toàn cầu, vượt cả siêu phẩm Avatar để trở thành bộ phim cán mốc 1 tỷ $ nhanh nhất mọi thời đại. \r\nKhông mang cái tôi quá lớn, độc đáo và khác biệt như nhiều đồng nghiệp người châu Á khác, James Wan tỏ rõ mục tiêu hướng tới số đông người xem hơn là giới phê bình, xem trọng doanh thu hơn số điểm trên các bảng xếp hạng. Người đàn ông này hẳn sẽ còn đem đến nhiều bất ngờ cho khán giả khi anh tuyên bố bản thân không chỉ là fan của dòng phim kinh dị mà là một người yêu điện ảnh và muốn thử sức với mọi thể loại phim từ hành động đến tình cảm. Hiện nay, James đang giữ vai trò đạo diễn của bộ phim Aquaman, siêu anh hùng quan trọng của DC Comic và cũng không quên chuẩn bị cho các dự án phim kinh dị tiếp theo với vai trò nhà sản xuất. \r\nTrở lại với dòng phim đã làm nên tên tuổi, trở lại với thương hiệu được đánh giá cao nhất của bản thân, chúng ta hãy cùng chờ xem vị phù thủy này sẽ đi xa đến đâu trong việc tạo nên nỗi sợ hãi của vũ trụ The Conjuring. ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dienvien`
--

CREATE TABLE `dienvien` (
  `madienvien` int(11) NOT NULL,
  `ten` varchar(100) NOT NULL,
  `hinhanh` char(200) NOT NULL,
  `hinhanhdoc` char(200) NOT NULL,
  `luotxem` int(11) NOT NULL,
  `mota` text NOT NULL,
  `ngaysinh` date NOT NULL,
  `chieucao` varchar(50) NOT NULL,
  `quoctich` varchar(50) NOT NULL,
  `tieusu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dienvien`
--

INSERT INTO `dienvien` (`madienvien`, `ten`, `hinhanh`, `hinhanhdoc`, `luotxem`, `mota`, `ngaysinh`, `chieucao`, `quoctich`, `tieusu`) VALUES
(1, 'Chris Evans', 'chrisevans1.jpg', 'chrisevans2.jpg', 1000, 'Khác với Chris Hemsworth vẫn đang loay hoay trong hình tượng vị thần sấm sét, đa số người hâm mộ vẫn nhìn nhận rõ ràng, Chris Evans và Captain America là hai con người hoàn toàn khác nhau.', '1981-06-13', '183 cm', 'Mỹ', 'Khác với Chris Hemsworth vẫn đang loay hoay trong hình tượng vị thần sấm sét, đa số người hâm mộ vẫn nhìn nhận rõ ràng, Chris Evans và Captain America là hai con người hoàn toàn khác nhau. \r\nSinh ngày 13 tháng 6 năm 1981 tại Boston, bang Massachusetts, con đường diễn xuất của cậu bé Chris Evans bắt đầu từ nhỏ với những vở kịch trong trường học. Tình yêu diễn xuất lớn dần theo năm tháng, khi trưởng thành, Evans lắng nghe tiếng gọi con tim, tới New York và thi vào trường nghệ thuật Lee Strasberg. \r\nTheo lời khuyên của bạn bè, anh bắt đầu tham gia thử vai một vài phim rồi dần nhận ra đam mê của bản thân là phim trường chứ không phải sân khấu kịch nghệ. Ban đầu con đường sự nghiệp của Chris khá bằng phẳng. Năm 2000, anh xuất hiện lần đầu tiên trên một phim truyền hình của đài CBS. Sau vài vai diễn nhỏ trên các phim kinh phí thấp, Evans bắt đầu xuất hiện trong các dự án lớn hơn. \r\nCuối năm 2001, tên tuổi Chris Evans vụt sáng với vai diễn chàng hotboy trường học trong bộ phim chiếu rạp Not Another Teen Movie. Chiều cao 1m83 cùng khuôn mặt đẹp trai “chuẩn Mỹ” giúp anh nhanh chóng trở thành người tình trong mộng của nhiều cô gái. \r\nNăm 2004, một cơ hội khác đến với Evans khi anh tham gia vai chính trong bộ phim đầu tư trung bình The Perfect Score. Đáng tiếc, phim nhận thất bại phòng vé nặng nề. Tuy nhiên, đây là chính là bộ phim “đầu tay” của một trong những tình bạn đẹp nhất Holllywood của “nam thần” Chris Evans với “mỹ nhân màn bạc nóng bỏng” Scarlett Johansson. \r\nSau khi tiếp tục xuất hiện trong vài bộ phim kinh phí thấp với doanh thu không mấy khả quan, vào đầu năm 2005, Evans chính thức đổi đời bằng vai diễn Johnny Storm trong Fantastic Four cùng với Jessica Alba và Ioan Gruffudd. Bướng bỉnh, bốc đồng nhưng lại đẹp trai hấp dẫn khó cưỡng, Johnny Storm - Human Torch của Chris Evans nhanh chóng lấy được cảm tình của người hâm mộ, trở thành một gương mặt trẻ sáng giá của Hollywood. \r\nKhông ngoa khi nói rằng Human Torch là vai diễn để đời của Evans, thành công của nhân vật này đủ bảo đảm danh tiếng của anh suốt nhiều năm trời.  Thậm chí, cho dù giờ đây, khi Chris Evans đã là Captain Ameica – một trong những Avenger nổi tiếng nhất và Human Torch đã chọn được một diễn viên mới thì cũng không ít người nhớ đến anh thông qua hình tượng này.\r\nTuy nhiên, dẫu Human Torch có nổi tiếng đến thế nào thì cũng không bảo đảm nổi doanh thu cho phim của Chris Evans. Phim chiếu rạp của anh liên tục thất bại thê thảm cả về doanh thu lẫn đánh giá của giới phê bình trừ hai vai thứ trong The Nanny Diaries và Fantastic Four: Rise of the Silver Surfer. \r\nSự nghiệp của chàng hotboy nước Mỹ vẫn tiếp tục loay hoay giữa phim flop và vẻ đẹp trai ngời ngời của mình cho đến ngày tìm được “mùa xuân thứ hai” trong cuộc đời - Steve Roger a.k.a Captain America. Một “thanh niên nghiêm túc” đặt mục tiêu bảo vệ tổ quốc lên hàng đầu, một chiến binh đến từ thế giới cũ - Captain America là một nhân vật hoàn toàn khác với những gì Chris Evan thể hiện trước đó. Evans vào vai Captain ngọt đến mức người xem quên mất anh là chàng trai vui vẻ tăng động ngoài đời thực. Và thành công đạt được thật ngoài sức tưởng tượng. Có thể nói đây là lần thứ hai anh tìm được nhân vật đổi đời. Lần đầu tiên sau nhiều năm, người ta nhớ đến Chris Evans với một cái tên khác Human Torch. \r\nKhác với Chris Hemsworth bị cái bóng Thor “ám ảnh” các vai diễn khác và trong cả cuộc sống riêng, đời thật của “Captain America” Chris Evans dễ thở hơn nhiều khi anh gần như là một người hoàn toàn khác Steve Roger. Trái với tính cách chín chắn trầm tĩnh của Captain, con người ngoài đời của Evans có phần giống Human Torch hơn. Anh nhiệt tình vui vẻ, sẵn sàng quậy hết mình trên show và tham gia bất cứ trò điên nào của team Avengers. Cùng với Chris Hemsworth và Chris Patt, anh tạo thành bộ 3 Hot Chris nhà Marvel với điểm chung là khuôn mặt đẹp trai, thân hình chuẩn cùng tính cách vui nổ trời. Ngoài ra, từ sau Captain America: The First Avenger, anh cũng khá thân thiết với các bạn diễn Hayley Atwell và Sebastian Stan. \r\nĐẹp trai, nổi tiếng, vui vẻ nhưng đời sống riêng tư của Evans khá ảm đạm. Anh có nhiều tin đồn với các người đẹp như Scarlett Johansson, Lily Collins cùng đương kim phu nhân của Justin Timberlake - Jessica Biel. \r\nLà một thanh niên gần như hoàn hảo với tấm lòng vàng dành cho các hoạt động từ thiện cùng sự ủng hộ nhiệt tình dành cho LGBT, Chris Evans chỉ có một vài tật xấu nho nhỏ như… thích để râu. Bất cứ khi nào không phải giữ hình tượng để tham gia đóng phim, khuôn mặt đẹp trai thần thánh của đội trưởng Mỹ luôn bị bao phủ bởi râu là râu. \r\nNgoài ra, Evans còn một sở thích kiêm tật xấu cực kỳ nổi tiếng là… sờ ngực, sờ từ ngực người khác đến ngực của chính mình. Thói quen gây bão này của anh đã trở thành meme huyền thoại được các fan, bạn diễn và cả chính bản thân anh đem ra chọc cười suốt ngày. Từ Robert Downey Jr. tới Tom Hiddleston, Mark Ruffalo, hay cả người chỉ mới xuất hiện cùng một phim Age Of Ultron như  “Quicksilver” Aaron Taylor-Johnson cũng đều không thể thoát “độc thủ thần chưởng” này của chàng đội trưởng Mỹ. \r\nXuyên suốt MCU, Captain vẫn là một trong những nhân vật ấn tượng nhất. Chỉ là một người phàm tiêm huyết thanh nhưng anh chưa bao giờ ngần ngại xông pha lên phía trước, dùng sự dũng cảm và mưu trí của một chiến binh để chiến đấu cùng Thanos và “đàn em”. Ngay khi Steve Rogers vẫn còn hăng hái bảo vệ trái đất, Chris Evans lại nghĩ rằng đã đến lúc anh nên dừng lại. Khi các \"đồng chí\" ở Biệt đội siêu anh hùng vẫn chưa lên tiếng, Evans là người đầu tiên tuyên bố sẽ từ bỏ lớp áo Captain America đã gắn bó với anh gần mười năm nay sau Avengers: Endgame. Và rốt cuộc, ở chặng cuối Avengers: Hồi Kết, Captain America đã trao lại chiếc khiên lừng danh cho người đồng đội Falcon. Dẫu còn nhiều ý kiến tranh cãi, đây vẫn là cái kết rất đẹp cho Đại Úy Mỹ. Ngoài ra, chỉ trong năm 2019, Chris kịp rũ bỏ lớp áo Steve Rogers để hóa thân thành gã đẹp trai nhà giàu nhưng cục súc Ransom Drysdale (Knives Out). Vai diễn ấn tượng này nhận được vô số lời khen. Dự án tiếp theo của Chris Evans chưa được công bố chính thức, theo tin đồn đó là Little Shop Of Horror. Lần này, có lẽ anh sẽ tái hợp cùng Scarlett Johansson! ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ghe`
--

CREATE TABLE `ghe` (
  `maghe` char(30) NOT NULL,
  `maphong` char(30) NOT NULL,
  `loaighe` varchar(30) DEFAULT NULL,
  `trangthai` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `ghe`
--

INSERT INTO `ghe` (`maghe`, `maphong`, `loaighe`, `trangthai`) VALUES
('A1', 'P01', 'don', 'còn trống'),
('A1', 'P02', 'don', 'còn trống'),
('A1', 'P03', 'don', 'còn trống'),
('A1', 'P04', 'don', 'còn trống'),
('A1', 'P05', 'don', 'còn trống'),
('A1', 'P06', 'don', 'còn trống'),
('A1', 'P07', 'don', 'còn trống'),
('A1', 'P08', 'don', 'còn trống'),
('A1', 'P09', 'don', 'còn trống'),
('A1', 'P10', 'don', 'còn trống'),
('A1', 'P11', 'don', 'còn trống'),
('A10', 'P01', 'don', 'còn trống'),
('A10', 'P02', 'don', 'còn trống'),
('A10', 'P03', 'don', 'còn trống'),
('A10', 'P04', 'don', 'còn trống'),
('A10', 'P05', 'don', 'còn trống'),
('A10', 'P06', 'don', 'còn trống'),
('A10', 'P07', 'don', 'còn trống'),
('A10', 'P08', 'don', 'còn trống'),
('A10', 'P09', 'don', 'còn trống'),
('A10', 'P10', 'don', 'còn trống'),
('A10', 'P11', 'don', 'còn trống'),
('A2', 'P01', 'don', 'còn trống'),
('A2', 'P02', 'don', 'còn trống'),
('A2', 'P03', 'don', 'còn trống'),
('A2', 'P04', 'don', 'còn trống'),
('A2', 'P05', 'don', 'còn trống'),
('A2', 'P06', 'don', 'còn trống'),
('A2', 'P07', 'don', 'còn trống'),
('A2', 'P08', 'don', 'còn trống'),
('A2', 'P09', 'don', 'còn trống'),
('A2', 'P10', 'don', 'còn trống'),
('A2', 'P11', 'don', 'còn trống'),
('A3', 'P01', 'don', 'còn trống'),
('A3', 'P02', 'don', 'còn trống'),
('A3', 'P03', 'don', 'còn trống'),
('A3', 'P04', 'don', 'còn trống'),
('A3', 'P05', 'don', 'còn trống'),
('A3', 'P06', 'don', 'còn trống'),
('A3', 'P07', 'don', 'còn trống'),
('A3', 'P08', 'don', 'còn trống'),
('A3', 'P09', 'don', 'còn trống'),
('A3', 'P10', 'don', 'còn trống'),
('A3', 'P11', 'don', 'còn trống'),
('A4', 'P01', 'don', 'còn trống'),
('A4', 'P02', 'don', 'còn trống'),
('A4', 'P03', 'don', 'còn trống'),
('A4', 'P04', 'don', 'còn trống'),
('A4', 'P05', 'don', 'còn trống'),
('A4', 'P06', 'don', 'còn trống'),
('A4', 'P07', 'don', 'còn trống'),
('A4', 'P08', 'don', 'còn trống'),
('A4', 'P09', 'don', 'còn trống'),
('A4', 'P10', 'don', 'còn trống'),
('A4', 'P11', 'don', 'còn trống'),
('A5', 'P01', 'don', 'còn trống'),
('A5', 'P02', 'don', 'còn trống'),
('A5', 'P03', 'don', 'còn trống'),
('A5', 'P04', 'don', 'còn trống'),
('A5', 'P05', 'don', 'còn trống'),
('A5', 'P06', 'don', 'còn trống'),
('A5', 'P07', 'don', 'còn trống'),
('A5', 'P08', 'don', 'còn trống'),
('A5', 'P09', 'don', 'còn trống'),
('A5', 'P10', 'don', 'còn trống'),
('A5', 'P11', 'don', 'còn trống'),
('A6', 'P01', 'don', 'còn trống'),
('A6', 'P02', 'don', 'còn trống'),
('A6', 'P03', 'don', 'còn trống'),
('A6', 'P04', 'don', 'còn trống'),
('A6', 'P05', 'don', 'còn trống'),
('A6', 'P06', 'don', 'còn trống'),
('A6', 'P07', 'don', 'còn trống'),
('A6', 'P08', 'don', 'còn trống'),
('A6', 'P09', 'don', 'còn trống'),
('A6', 'P10', 'don', 'còn trống'),
('A6', 'P11', 'don', 'còn trống'),
('A7', 'P01', 'don', 'còn trống'),
('A7', 'P02', 'don', 'còn trống'),
('A7', 'P03', 'don', 'còn trống'),
('A7', 'P04', 'don', 'còn trống'),
('A7', 'P05', 'don', 'còn trống'),
('A7', 'P06', 'don', 'còn trống'),
('A7', 'P07', 'don', 'còn trống'),
('A7', 'P08', 'don', 'còn trống'),
('A7', 'P09', 'don', 'còn trống'),
('A7', 'P10', 'don', 'còn trống'),
('A7', 'P11', 'don', 'còn trống'),
('A8', 'P01', 'don', 'còn trống'),
('A8', 'P02', 'don', 'còn trống'),
('A8', 'P03', 'don', 'còn trống'),
('A8', 'P04', 'don', 'còn trống'),
('A8', 'P05', 'don', 'còn trống'),
('A8', 'P06', 'don', 'còn trống'),
('A8', 'P07', 'don', 'còn trống'),
('A8', 'P08', 'don', 'còn trống'),
('A8', 'P09', 'don', 'còn trống'),
('A8', 'P10', 'don', 'còn trống'),
('A8', 'P11', 'don', 'còn trống'),
('A9', 'P01', 'don', 'còn trống'),
('A9', 'P02', 'don', 'còn trống'),
('A9', 'P03', 'don', 'còn trống'),
('A9', 'P04', 'don', 'còn trống'),
('A9', 'P05', 'don', 'còn trống'),
('A9', 'P06', 'don', 'còn trống'),
('A9', 'P07', 'don', 'còn trống'),
('A9', 'P08', 'don', 'còn trống'),
('A9', 'P09', 'don', 'còn trống'),
('A9', 'P10', 'don', 'còn trống'),
('A9', 'P11', 'don', 'còn trống'),
('B1', 'P01', 'don', 'còn trống'),
('B1', 'P02', 'don', 'còn trống'),
('B1', 'P03', 'don', 'còn trống'),
('B1', 'P04', 'don', 'còn trống'),
('B1', 'P05', 'don', 'còn trống'),
('B1', 'P06', 'don', 'còn trống'),
('B1', 'P07', 'don', 'còn trống'),
('B1', 'P08', 'don', 'còn trống'),
('B1', 'P09', 'don', 'còn trống'),
('B1', 'P10', 'don', 'còn trống'),
('B1', 'P11', 'don', 'còn trống'),
('B10', 'P01', 'don', 'còn trống'),
('B10', 'P02', 'don', 'còn trống'),
('B10', 'P03', 'don', 'còn trống'),
('B10', 'P04', 'don', 'còn trống'),
('B10', 'P05', 'don', 'còn trống'),
('B10', 'P06', 'don', 'còn trống'),
('B10', 'P07', 'don', 'còn trống'),
('B10', 'P08', 'don', 'còn trống'),
('B10', 'P09', 'don', 'còn trống'),
('B10', 'P10', 'don', 'còn trống'),
('B10', 'P11', 'don', 'còn trống'),
('B2', 'P01', 'don', 'còn trống'),
('B2', 'P02', 'don', 'còn trống'),
('B2', 'P03', 'don', 'còn trống'),
('B2', 'P04', 'don', 'còn trống'),
('B2', 'P05', 'don', 'còn trống'),
('B2', 'P06', 'don', 'còn trống'),
('B2', 'P07', 'don', 'còn trống'),
('B2', 'P08', 'don', 'còn trống'),
('B2', 'P09', 'don', 'còn trống'),
('B2', 'P10', 'don', 'còn trống'),
('B2', 'P11', 'don', 'còn trống'),
('B3', 'P01', 'don', 'còn trống'),
('B3', 'P02', 'don', 'còn trống'),
('B3', 'P03', 'don', 'còn trống'),
('B3', 'P04', 'don', 'còn trống'),
('B3', 'P05', 'don', 'còn trống'),
('B3', 'P06', 'don', 'còn trống'),
('B3', 'P07', 'don', 'còn trống'),
('B3', 'P08', 'don', 'còn trống'),
('B3', 'P09', 'don', 'còn trống'),
('B3', 'P10', 'don', 'còn trống'),
('B3', 'P11', 'don', 'còn trống'),
('B4', 'P01', 'don', 'còn trống'),
('B4', 'P02', 'don', 'còn trống'),
('B4', 'P03', 'don', 'còn trống'),
('B4', 'P04', 'don', 'còn trống'),
('B4', 'P05', 'don', 'còn trống'),
('B4', 'P06', 'don', 'còn trống'),
('B4', 'P07', 'don', 'còn trống'),
('B4', 'P08', 'don', 'còn trống'),
('B4', 'P09', 'don', 'còn trống'),
('B4', 'P10', 'don', 'còn trống'),
('B4', 'P11', 'don', 'còn trống'),
('B5', 'P01', 'don', 'còn trống'),
('B5', 'P02', 'don', 'còn trống'),
('B5', 'P03', 'don', 'còn trống'),
('B5', 'P04', 'don', 'còn trống'),
('B5', 'P05', 'don', 'còn trống'),
('B5', 'P06', 'don', 'còn trống'),
('B5', 'P07', 'don', 'còn trống'),
('B5', 'P08', 'don', 'còn trống'),
('B5', 'P09', 'don', 'còn trống'),
('B5', 'P10', 'don', 'còn trống'),
('B5', 'P11', 'don', 'còn trống'),
('B6', 'P01', 'don', 'còn trống'),
('B6', 'P02', 'don', 'còn trống'),
('B6', 'P03', 'don', 'còn trống'),
('B6', 'P04', 'don', 'còn trống'),
('B6', 'P05', 'don', 'còn trống'),
('B6', 'P06', 'don', 'còn trống'),
('B6', 'P07', 'don', 'còn trống'),
('B6', 'P08', 'don', 'còn trống'),
('B6', 'P09', 'don', 'còn trống'),
('B6', 'P10', 'don', 'còn trống'),
('B6', 'P11', 'don', 'còn trống'),
('B7', 'P01', 'don', 'còn trống'),
('B7', 'P02', 'don', 'còn trống'),
('B7', 'P03', 'don', 'còn trống'),
('B7', 'P04', 'don', 'còn trống'),
('B7', 'P05', 'don', 'còn trống'),
('B7', 'P06', 'don', 'còn trống'),
('B7', 'P07', 'don', 'còn trống'),
('B7', 'P08', 'don', 'còn trống'),
('B7', 'P09', 'don', 'còn trống'),
('B7', 'P10', 'don', 'còn trống'),
('B7', 'P11', 'don', 'còn trống'),
('B8', 'P01', 'don', 'còn trống'),
('B8', 'P02', 'don', 'còn trống'),
('B8', 'P03', 'don', 'còn trống'),
('B8', 'P04', 'don', 'còn trống'),
('B8', 'P05', 'don', 'còn trống'),
('B8', 'P06', 'don', 'còn trống'),
('B8', 'P07', 'don', 'còn trống'),
('B8', 'P08', 'don', 'còn trống'),
('B8', 'P09', 'don', 'còn trống'),
('B8', 'P10', 'don', 'còn trống'),
('B8', 'P11', 'don', 'còn trống'),
('B9', 'P01', 'don', 'còn trống'),
('B9', 'P02', 'don', 'còn trống'),
('B9', 'P03', 'don', 'còn trống'),
('B9', 'P04', 'don', 'còn trống'),
('B9', 'P05', 'don', 'còn trống'),
('B9', 'P06', 'don', 'còn trống'),
('B9', 'P07', 'don', 'còn trống'),
('B9', 'P08', 'don', 'còn trống'),
('B9', 'P09', 'don', 'còn trống'),
('B9', 'P10', 'don', 'còn trống'),
('B9', 'P11', 'don', 'còn trống'),
('C1', 'P01', 'don', 'còn trống'),
('C1', 'P02', 'don', 'còn trống'),
('C1', 'P03', 'don', 'còn trống'),
('C1', 'P04', 'don', 'còn trống'),
('C1', 'P05', 'don', 'còn trống'),
('C1', 'P06', 'don', 'còn trống'),
('C1', 'P07', 'don', 'còn trống'),
('C1', 'P08', 'don', 'còn trống'),
('C1', 'P09', 'don', 'còn trống'),
('C1', 'P10', 'don', 'còn trống'),
('C1', 'P11', 'don', 'còn trống'),
('C10', 'P01', 'don', 'còn trống'),
('C10', 'P02', 'don', 'còn trống'),
('C10', 'P03', 'don', 'còn trống'),
('C10', 'P04', 'don', 'còn trống'),
('C10', 'P05', 'don', 'còn trống'),
('C10', 'P06', 'don', 'còn trống'),
('C10', 'P07', 'don', 'còn trống'),
('C10', 'P08', 'don', 'còn trống'),
('C10', 'P09', 'don', 'còn trống'),
('C10', 'P10', 'don', 'còn trống'),
('C10', 'P11', 'don', 'còn trống'),
('C2', 'P01', 'don', 'còn trống'),
('C2', 'P02', 'don', 'còn trống'),
('C2', 'P03', 'don', 'còn trống'),
('C2', 'P04', 'don', 'còn trống'),
('C2', 'P05', 'don', 'còn trống'),
('C2', 'P06', 'don', 'còn trống'),
('C2', 'P07', 'don', 'còn trống'),
('C2', 'P08', 'don', 'còn trống'),
('C2', 'P09', 'don', 'còn trống'),
('C2', 'P10', 'don', 'còn trống'),
('C2', 'P11', 'don', 'còn trống'),
('C3', 'P01', 'don', 'còn trống'),
('C3', 'P02', 'don', 'còn trống'),
('C3', 'P03', 'don', 'còn trống'),
('C3', 'P04', 'don', 'còn trống'),
('C3', 'P05', 'don', 'còn trống'),
('C3', 'P06', 'don', 'còn trống'),
('C3', 'P07', 'don', 'còn trống'),
('C3', 'P08', 'don', 'còn trống'),
('C3', 'P09', 'don', 'còn trống'),
('C3', 'P10', 'don', 'còn trống'),
('C3', 'P11', 'don', 'còn trống'),
('C4', 'P01', 'don', 'còn trống'),
('C4', 'P02', 'don', 'còn trống'),
('C4', 'P03', 'don', 'còn trống'),
('C4', 'P04', 'don', 'còn trống'),
('C4', 'P05', 'don', 'còn trống'),
('C4', 'P06', 'don', 'còn trống'),
('C4', 'P07', 'don', 'còn trống'),
('C4', 'P08', 'don', 'còn trống'),
('C4', 'P09', 'don', 'còn trống'),
('C4', 'P10', 'don', 'còn trống'),
('C4', 'P11', 'don', 'còn trống'),
('C5', 'P01', 'don', 'còn trống'),
('C5', 'P02', 'don', 'còn trống'),
('C5', 'P03', 'don', 'còn trống'),
('C5', 'P04', 'don', 'còn trống'),
('C5', 'P05', 'don', 'còn trống'),
('C5', 'P06', 'don', 'còn trống'),
('C5', 'P07', 'don', 'còn trống'),
('C5', 'P08', 'don', 'còn trống'),
('C5', 'P09', 'don', 'còn trống'),
('C5', 'P10', 'don', 'còn trống'),
('C5', 'P11', 'don', 'còn trống'),
('C6', 'P01', 'don', 'còn trống'),
('C6', 'P02', 'don', 'còn trống'),
('C6', 'P03', 'don', 'còn trống'),
('C6', 'P04', 'don', 'còn trống'),
('C6', 'P05', 'don', 'còn trống'),
('C6', 'P06', 'don', 'còn trống'),
('C6', 'P07', 'don', 'còn trống'),
('C6', 'P08', 'don', 'còn trống'),
('C6', 'P09', 'don', 'còn trống'),
('C6', 'P10', 'don', 'còn trống'),
('C6', 'P11', 'don', 'còn trống'),
('C7', 'P01', 'don', 'còn trống'),
('C7', 'P02', 'don', 'còn trống'),
('C7', 'P03', 'don', 'còn trống'),
('C7', 'P04', 'don', 'còn trống'),
('C7', 'P05', 'don', 'còn trống'),
('C7', 'P06', 'don', 'còn trống'),
('C7', 'P07', 'don', 'còn trống'),
('C7', 'P08', 'don', 'còn trống'),
('C7', 'P09', 'don', 'còn trống'),
('C7', 'P10', 'don', 'còn trống'),
('C7', 'P11', 'don', 'còn trống'),
('C8', 'P01', 'don', 'còn trống'),
('C8', 'P02', 'don', 'còn trống'),
('C8', 'P03', 'don', 'còn trống'),
('C8', 'P04', 'don', 'còn trống'),
('C8', 'P05', 'don', 'còn trống'),
('C8', 'P06', 'don', 'còn trống'),
('C8', 'P07', 'don', 'còn trống'),
('C8', 'P08', 'don', 'còn trống'),
('C8', 'P09', 'don', 'còn trống'),
('C8', 'P10', 'don', 'còn trống'),
('C8', 'P11', 'don', 'còn trống'),
('C9', 'P01', 'don', 'còn trống'),
('C9', 'P02', 'don', 'còn trống'),
('C9', 'P03', 'don', 'còn trống'),
('C9', 'P04', 'don', 'còn trống'),
('C9', 'P05', 'don', 'còn trống'),
('C9', 'P06', 'don', 'còn trống'),
('C9', 'P07', 'don', 'còn trống'),
('C9', 'P08', 'don', 'còn trống'),
('C9', 'P09', 'don', 'còn trống'),
('C9', 'P10', 'don', 'còn trống'),
('C9', 'P11', 'don', 'còn trống'),
('D1', 'P01', 'don', 'còn trống'),
('D1', 'P02', 'don', 'còn trống'),
('D1', 'P03', 'don', 'còn trống'),
('D1', 'P04', 'don', 'còn trống'),
('D1', 'P05', 'don', 'còn trống'),
('D1', 'P06', 'don', 'còn trống'),
('D1', 'P07', 'don', 'còn trống'),
('D1', 'P08', 'don', 'còn trống'),
('D1', 'P09', 'don', 'còn trống'),
('D1', 'P10', 'don', 'còn trống'),
('D1', 'P11', 'don', 'còn trống'),
('D10', 'P01', 'don', 'còn trống'),
('D10', 'P02', 'don', 'còn trống'),
('D10', 'P03', 'don', 'còn trống'),
('D10', 'P04', 'don', 'còn trống'),
('D10', 'P05', 'don', 'còn trống'),
('D10', 'P06', 'don', 'còn trống'),
('D10', 'P07', 'don', 'còn trống'),
('D10', 'P08', 'don', 'còn trống'),
('D10', 'P09', 'don', 'còn trống'),
('D10', 'P10', 'don', 'còn trống'),
('D10', 'P11', 'don', 'còn trống'),
('D2', 'P01', 'don', 'còn trống'),
('D2', 'P02', 'don', 'còn trống'),
('D2', 'P03', 'don', 'còn trống'),
('D2', 'P04', 'don', 'còn trống'),
('D2', 'P05', 'don', 'còn trống'),
('D2', 'P06', 'don', 'còn trống'),
('D2', 'P07', 'don', 'còn trống'),
('D2', 'P08', 'don', 'còn trống'),
('D2', 'P09', 'don', 'còn trống'),
('D2', 'P10', 'don', 'còn trống'),
('D2', 'P11', 'don', 'còn trống'),
('D3', 'P01', 'don', 'còn trống'),
('D3', 'P02', 'don', 'còn trống'),
('D3', 'P03', 'don', 'còn trống'),
('D3', 'P04', 'don', 'còn trống'),
('D3', 'P05', 'don', 'còn trống'),
('D3', 'P06', 'don', 'còn trống'),
('D3', 'P07', 'don', 'còn trống'),
('D3', 'P08', 'don', 'còn trống'),
('D3', 'P09', 'don', 'còn trống'),
('D3', 'P10', 'don', 'còn trống'),
('D3', 'P11', 'don', 'còn trống'),
('D4', 'P01', 'don', 'còn trống'),
('D4', 'P02', 'don', 'còn trống'),
('D4', 'P03', 'don', 'còn trống'),
('D4', 'P04', 'don', 'còn trống'),
('D4', 'P05', 'don', 'còn trống'),
('D4', 'P06', 'don', 'còn trống'),
('D4', 'P07', 'don', 'còn trống'),
('D4', 'P08', 'don', 'còn trống'),
('D4', 'P09', 'don', 'còn trống'),
('D4', 'P10', 'don', 'còn trống'),
('D4', 'P11', 'don', 'còn trống'),
('D5', 'P01', 'don', 'còn trống'),
('D5', 'P02', 'don', 'còn trống'),
('D5', 'P03', 'don', 'còn trống'),
('D5', 'P04', 'don', 'còn trống'),
('D5', 'P05', 'don', 'còn trống'),
('D5', 'P06', 'don', 'còn trống'),
('D5', 'P07', 'don', 'còn trống'),
('D5', 'P08', 'don', 'còn trống'),
('D5', 'P09', 'don', 'còn trống'),
('D5', 'P10', 'don', 'còn trống'),
('D5', 'P11', 'don', 'còn trống'),
('D6', 'P01', 'don', 'còn trống'),
('D6', 'P02', 'don', 'còn trống'),
('D6', 'P03', 'don', 'còn trống'),
('D6', 'P04', 'don', 'còn trống'),
('D6', 'P05', 'don', 'còn trống'),
('D6', 'P06', 'don', 'còn trống'),
('D6', 'P07', 'don', 'còn trống'),
('D6', 'P08', 'don', 'còn trống'),
('D6', 'P09', 'don', 'còn trống'),
('D6', 'P10', 'don', 'còn trống'),
('D6', 'P11', 'don', 'còn trống'),
('D7', 'P01', 'don', 'còn trống'),
('D7', 'P02', 'don', 'còn trống'),
('D7', 'P03', 'don', 'còn trống'),
('D7', 'P04', 'don', 'còn trống'),
('D7', 'P05', 'don', 'còn trống'),
('D7', 'P06', 'don', 'còn trống'),
('D7', 'P07', 'don', 'còn trống'),
('D7', 'P08', 'don', 'còn trống'),
('D7', 'P09', 'don', 'còn trống'),
('D7', 'P10', 'don', 'còn trống'),
('D7', 'P11', 'don', 'còn trống'),
('D8', 'P01', 'don', 'còn trống'),
('D8', 'P02', 'don', 'còn trống'),
('D8', 'P03', 'don', 'còn trống'),
('D8', 'P04', 'don', 'còn trống'),
('D8', 'P05', 'don', 'còn trống'),
('D8', 'P06', 'don', 'còn trống'),
('D8', 'P07', 'don', 'còn trống'),
('D8', 'P08', 'don', 'còn trống'),
('D8', 'P09', 'don', 'còn trống'),
('D8', 'P10', 'don', 'còn trống'),
('D8', 'P11', 'don', 'còn trống'),
('D9', 'P01', 'don', 'còn trống'),
('D9', 'P02', 'don', 'còn trống'),
('D9', 'P03', 'don', 'còn trống'),
('D9', 'P04', 'don', 'còn trống'),
('D9', 'P05', 'don', 'còn trống'),
('D9', 'P06', 'don', 'còn trống'),
('D9', 'P07', 'don', 'còn trống'),
('D9', 'P08', 'don', 'còn trống'),
('D9', 'P09', 'don', 'còn trống'),
('D9', 'P10', 'don', 'còn trống'),
('D9', 'P11', 'don', 'còn trống');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `mahd` int(30) NOT NULL,
  `userid` int(11) NOT NULL,
  `mave` char(30) NOT NULL,
  `macombo` char(30) NOT NULL,
  `makhuyenmai` int(11) DEFAULT NULL,
  `masuatchieu` char(30) NOT NULL,
  `maghe` char(30) NOT NULL,
  `soluong` int(11) DEFAULT NULL,
  `thanhtien` int(11) DEFAULT NULL,
  `ngaythanhtoan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`mahd`, `userid`, `mave`, `macombo`, `makhuyenmai`, `masuatchieu`, `maghe`, `soluong`, `thanhtien`, `ngaythanhtoan`) VALUES
(1, 2, 'Vdemoslayer', 'Combo 1(1)', NULL, 'Sdemoslayer01', 'A3,A5', 2, 195000, '2023-03-20'),
(2, 5, 'Vdemoslayer', 'Combo 1(1)', NULL, 'Sdemoslayer05', 'B10,C10', 2, 195000, '2023-03-20'),
(3, 2, 'Vdaotoiac', 'Combo 1(1),Combo 2(1)', 2, 'Sdaotoiac01', 'A5,A6', 2, 142500, '2023-04-21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hotro`
--

CREATE TABLE `hotro` (
  `mahotro` int(11) NOT NULL,
  `ten` varchar(100) NOT NULL,
  `sodienthoai` char(30) NOT NULL,
  `chude` text NOT NULL,
  `noidung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hotro`
--

INSERT INTO `hotro` (`mahotro`, `ten`, `sodienthoai`, `chude`, `noidung`) VALUES
(1, 'Tuấn Tú', 'tuantu13@gmail.com', 'Đóng góp ý kiến', 'Chất lượng dịch vụ còn nhiều sai sót!'),
(2, 'Thanh Bình', 'khanhduy8768@gmail.com', 'Đánh giá chất lượng', 'Mình khá hài lòng về rạp này. 5 sao luôn'),
(3, 'Yến Trang', 'yentrang2k2@gmail.com', 'Phản hồi dịch vụ', 'Nước ngọt hôm nay ít gas quá nhaaa.'),
(4, 'Thanh Danh', 'danhtran@gmail.com', 'Đóng góp', 'Nhiệt độ phòng chiếu hơi nóng ạ.'),
(5, 'Văn Bình', 'binhty12@gmail.com', 'Chê', 'Đúng là đường đến lò rèn gươm :))'),
(6, 'Hoàng Mỹ', 'myhoangg@gmail.com', 'Khen', 'Phim hay, nhân viên nhiệt tình, chuyên nghiệp. Yêu'),
(7, 'Hoài Bảo', 'baohoainevedie@gmail.com', 'Chê quá chê', 'Đi xem phim ở rạp mà xem lại các tập phim mình đã xem rồi :(( thất vọng.'),
(8, 'Diễm Kiều', 'kieudiemphung@gmail.com', 'Phản hồi', 'Yêu cầu ad cải thiện đệm ghế nha. Ngồi 1 hồi hơi bị đau lưng.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `makhuyenmai` int(11) NOT NULL,
  `chitiet` text DEFAULT NULL,
  `tenkhuyenmai` varchar(50) DEFAULT NULL,
  `hinhkhuyenmai` varchar(50) NOT NULL,
  `hinhkhuyenmaingang` varchar(50) NOT NULL,
  `giamgia` int(10) NOT NULL,
  `trangthai` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`makhuyenmai`, `chitiet`, `tenkhuyenmai`, `hinhkhuyenmai`, `hinhkhuyenmaingang`, `giamgia`, `trangthai`) VALUES
(1, 'Giảm giá 30%', 'Khuyến mãi 30', 'km30.jpg', 'km30ngang.jpg', 30, NULL),
(2, 'Giảm giá 50%', 'Khuyến mãi 50', 'km50.jpg', 'km50ngang.jpg', 50, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phim`
--

CREATE TABLE `phim` (
  `maphim` char(30) NOT NULL,
  `tenphim` varchar(50) DEFAULT NULL,
  `theloai` varchar(50) DEFAULT NULL,
  `dienvien` varchar(50) NOT NULL,
  `quocgia` varchar(50) NOT NULL,
  `daodien` varchar(50) DEFAULT NULL,
  `diemdanhgia` char(10) DEFAULT NULL,
  `thoiluong` varchar(50) DEFAULT NULL,
  `ngaykhoichieu` date DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `poster` char(200) DEFAULT NULL,
  `hinhngang` text NOT NULL,
  `dotuoi` int(11) DEFAULT NULL,
  `trailer` text NOT NULL,
  `trangthai` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phim`
--

INSERT INTO `phim` (`maphim`, `tenphim`, `theloai`, `dienvien`, `quocgia`, `daodien`, `diemdanhgia`, `thoiluong`, `ngaykhoichieu`, `mota`, `poster`, `hinhngang`, `dotuoi`, `trailer`, `trangthai`) VALUES
('air', 'AIR', 'Tâm Lý', 'Ben Affleck, Matt Damon, Jason Bateman', 'Mỹ', 'Ben Affleck', '7.1', '112 phút', '2023-04-27', 'Từ đạo diễn đã từng đoạt giải thưởng Ben Affleck, AIR hé lộ mối quan hệ đột phá giữa huyền thoại Michael Jordan khi mới bắt đầu sự nghiệp và bộ phận bóng rổ còn non trẻ của Nike, đã làm thay đổi thế giới thể thao và văn hóa đương đại với thương hiệu Air Jordan. Câu chuyện cảm động này kể về sự đánh cược khi đặt lên bàn cân tình hình kinh doanh của cả công ty, tầm nhìn vĩ đại của một người mẹ biết giá trị và tài năng của con trai mình, và một siêu sao bóng rổ đã trở thành huyền thoại.', 'air.jpg', 'airngang.jpg', 16, 'https://www.youtube.com/embed/Euy4Yu6B3nU', 'dangchieu'),
('bearman', 'BEARMAN', 'Hành Động, Hài', 'Yeom Hye Ran, Lee Yi Kyung, Park Sung Woong', 'Hàn Quốc', 'Park Sung Kwang', '8.0', '120 phút', '2023-04-12', 'Đầu Gấu Đụng Đầu Đất dựa trên câu chuyện thần thoại nổi tiếng tại Hàn Quốc về hai chú gấu sinh đôi hoá thành người sau khi ăn tỏi và ngải cứu trong 100 ngày. Chú gấu ăn tỏi trở thành Na Woong-nam, được một cặp vợ chồng nhà khoa học mang về nuôi nấng, tuy chỉ mới 25 tuổi nhưng lại sở hữu “giao diện” của một ông chú 52 với cái “đầu đất” ngây thơ, hiền lành. Trong khi đó, chú gấu ăn ngải cứu trở thành “đầu gấu” Lee Jeong-hak, được một tên trùm tổ chức tội phạm mang về nuôi và bị lợi dụng như một món “vũ khí” phòng vệ. Trong một tình huống bất đắc dĩ, Na Woong-nam đã trực tiếp đối đầu cùng anh em song sinh Lee Jeong-hak để ngăn chặn một vụ khủng bố virus có tầm lây lan mạnh. Sức mạnh của loài gấu bộc phát sẽ đẩy cuộc đụng độ của cặp gấu song sinh hoá người đi đến hồi kết nào?', 'bear.jpg', 'bearngang.jpg', 13, 'https://www.youtube.com/embed/2IZLhCSApCk', 'sapchieu'),
('connhotmotchong', 'CON NHÓT MÓT CHỒNG', 'Hài, Gia Đình', 'Tiến Luật, Thái Hòa, Thu Trang', 'Việt Nam', 'Vũ Ngọc Đãng', '8.4', '120 phút', '2023-04-20', 'Lấy cảm hứng từ web drama Chuyện Xóm Tui, phiên bản điện ảnh sẽ mang một màu sắc hoàn toàn khác: hài hước hơn, gần gũi và nhiều cảm xúc hơn. Bộ phim là câu chuyện của Nhót - người phụ nữ “chưa kịp già” đã sắp bị mãn kinh, vội vàng đi tìm chồng. Nhưng sâu thẳm trong cô là khao khát muốn có một đứa con, và luôn muốn hàn gắn với người cha suốt ngày say xỉn của mình.Phim mới Con Nhót Mót Chồng ra mắt tại các rạp chiếu phim từ 28.04.2023.', 'connhot.jpg', 'connhotngang.jpg', 16, 'https://www.youtube.com/embed/zi1V9sEblCM', 'sapchieu'),
('daotoiac', 'ĐẢO TỘI ÁC', 'Kinh dị', 'Alif Satar, Amelia Henderson, Ikmal Amry, Evie Fer', 'Malaysia', 'Eu Ho', '7.6', '112 phút', '2023-03-31', 'Nhóm du khách trẻ vô tình phá bỏ phong ấn của con quái vật khát máu khi đến tham quan một hòn đảo cấm không dân địa phương nào dám đặt chân đến. Liệu họ có thể bình an thoát khỏi hay đó sẽ là nơi chôn vùi tất cả?', 'daotoiac.jpg', 'daotoiacngang.jpg', 18, 'https://www.youtube.com/embed/jSZUpx_3yL4', 'dangchieu'),
('demoslayer', 'THANH GƯƠM DIỆT QUỶ', 'Hoạt Hình, Giả Tưởng, Phiêu Lưu', 'Natsuki Hanae, Akari Kito, Hiro Shimono', 'Nhật Bản', 'Haruo Sotozaki', '6.6', '110 phút', '2023-03-22', 'Sau trận chiến khốc liệt với anh em quỷ Thượng Huyền Lục Gyuutarou và Daki tại Phố Đèn Đỏ, Tanjiro cùng các kiếm sĩ diệt quỷ đều bị thương nặng và được đưa trở về trụ sở của Đội Diệt Quỷ để dưỡng thương và phục hồi. Sau trận chiến, thanh gươm của Tanjiro cũng bị hư hỏng nặng và lúc này, cậu cần một thanh gươm mới để tiếp tục lên đường làm nhiệm vụ. Cậu được đưa đến Làng Rèn Gươm, nơi phụ trách rèn vũ khí cho các kiếm sĩ của Đội Diệt Quỷ và chuẩn bị cho trận chiến mới với các thành viên mạnh nhất trong hàng Thượng Huyền của Thập Nhị Quỷ Nguyệt.\r\n', 'demonslayer.jpg', 'demonslayerngang.jpg', 13, 'https://www.youtube.com/embed/IbyYUvLZ6fM', 'dangchieu'),
('guardian', 'GUARDIANS OF THE GALAXY VOL.3', 'Hành Động, Phiêu Lưu, Hài', 'Vin Diesel, Chris Pratt, Karen Gillan, Zoe Saldana', ' Mỹ', 'James Gunn', '9.6', '112 phút', '2023-04-29', 'Trong phần phim thứ 3 về Vệ Binh Dải Ngân Hà, biệt đội mà chúng ta từng biết sẽ có một vài sự thay đổi. Peter Quill vẫn đang chìm đắm trong nỗi đau mất đi Gamora nhưng vẫn phải làm tròn trách nhiệm tập hợp cả đội để bảo vệ toàn vũ trụ. Họ phải đối mặt với một nhiệm vụ cam go và nếu như  thất bại, đội Vệ Binh có thể phải kết thúc sứ mệnh của họ.', 'guardian.jpg', 'guardianngang.jpg', 16, 'https://www.youtube.com/embed/JqcncLPi9zw', 'sapchieu'),
('latmat', 'LẬT MẶT 6: TẤM VÉ ĐỊNH MỆNH', 'Hài, Tình Cảm, Tâm Lý, Hành Động', 'Trần Kim Hải, Thanh Thức, Huy Khánh, Quốc Cường, T', 'Việt Nam', 'Lý Hải', '8.5', '132 phút', '2023-05-05', 'Một nhóm bạn thân lâu năm bất ngờ nhận được cơ hội đổi đời  khi biết tấm vé của cả nhóm trúng giải độc đắc 136.8 tỷ. Đột nhiên An, người nắm giữ tấm vé bất ngờ gặp tai nạn không qua khỏi. Đứng trước món tiền trúng số đáng mơ ước lẽ ra sẽ dễ dàng có được trong tầm tay, nhóm bạn bước chân vào hành trình đi tìm tờ vé số. Nhưng đó chỉ là khởi đầu của vô số những sự kiện không ngờ đến. Liệu hành trình tìm kiếm và chia chác món tiền trong mơ béo bở này sẽ thực sự dẫn đưa cả nhóm đến đâu?', 'latmat.jpg', 'latmatngang.jpg', 16, 'https://www.youtube.com/embed/2EnP2tVC00Q', 'sapchieu'),
('sieulay', 'SIÊU LỪA GẶP SIÊU LẦY', 'Hài', ' Mạc Văn Khoa, Anh Tú', ' Việt Nam', 'Võ Thanh Hòa', '8.1', '112 phút', '2023-03-01', 'Thuộc phong cách hành động – hài hước với các “cú lừa” thông minh và lầy lội đến từ bộ đôi Tú (Anh Tú) và Khoa (Mạc Văn Khoa), Siêu Lừa Gặp Siêu Lầy của đạo diễn Võ Thanh Hòa theo chân của Khoa – tên lừa đảo tầm cỡ “quốc nội” đến đảo ngọc Phú Quốc với mong muốn đổi đời.\r\n\r\nTại đây, Khoa gặp Tú – tay lừa đảo “hàng real” và cùng Tú thực hiện các phi vụ từ nhỏ đến lớn. Cứ ngỡ sự ranh mãnh của Tú và sự may mắn trời cho của Khoa sẽ giúp họ trở thành bộ đôi bất khả chiến bại, nào ngờ lại đối mặt với nhiều tình huống dở khóc – dở cười. Nhất là khi băng nhóm của bộ đôi nhanh chóng mở rộng vì sự góp mặt của ông Năm (Nhất Trung) và bé Mã Lai (Ngọc Phước).\r\n', 'sieulua.jpg', 'sieuluangang.jpeg', 16, 'https://www.youtube.com/embed/NIVa1CCdFv4', 'dangchieu'),
('songsot', 'SỐNG SÓT', 'Tâm Lý, Giật Gân', 'Dmitriy Suvorov', 'Hàn Quốc', 'Dmitriy Suvorov', '7.8', '96 phút', '2023-03-28', 'Vào ngày 24 tháng 8 năm 1981, đôi vợ chồng mới cưới Larisa và Vladimir Savitsky lên chuyến bay Komsomolsk-on-Amur - Blagoveshchensk. 30 phút sau khi hạ cánh, máy bay dân sự AN-24 va chạm với một máy bay khác và bị vỡ thành mảnh vụn ở độ cao hơn 5 km so với mặt đất. Không ai được dự đoán sống sót... nhưng một phép màu đã xảy ra. Larisa Savitskaya tỉnh dậy giữa đống đổ nát của chiếc máy bay tại một khu rừng rậm rạp. Bây giờ, cô phải tạo ra một phép màu thật sự, điều mà chỉ một người có ý chí mạnh mẽ mới có thể làm được… sống sót!', 'songsot.jpg', 'songsotngang.jpg', 16, 'https://www.youtube.com/embed/8kRpnuv2rIk', 'dangchieu'),
('thecovenant', 'THE COVENANT', 'Tâm lý, Hành động', 'Antony Starr, Alexander Ludwig, Jake Gyllenhaal', 'Mỹ', 'Guy Ritchie', '7.2', '120 phút', '2023-04-21', 'Bối cảnh phim Khế Ước diễn ra tại chiến trường Afghanistan. Trong nhiệm vụ cuối cùng, Trung sĩ John Kinley (Jake Gyllenhaal thủ vai) cùng đội với phiên dịch viên bản địa Ahmed (Dal Salim thủ vai). Khi đơn vị của họ bị phục kích, John và Ahmed là 2 người sống sót duy nhất. Bị kẻ địch truy đuổi, Ahmed liều mạng đưa John đang bị thương băng qua nhiều dặm đường địa hình khắc nghiệt đến nơi an toàn. Trở về Mỹ, John biết rằng Ahmed và gia đình không được cấp giấy thông hành tới Mỹ như đã hứa. Quyết tâm bảo vệ bạn mình và đền ơn cứu mạng, John trở lại chiến trường để giúp Ahmed và gia đình trước khi lực lượng phiến quân phát hiện ra họ.', 'thecovenant.jpg', 'thecovenantngang.jpg', 18, 'https://www.youtube.com/embed/02PPMPArNEQ', 'sapchieu'),
('thefirstslamdunk', 'THE FIRST SLAM DUNK', 'Tâm Lý, Hài, Hoạt Hình', 'Yoshiaki Hasegawa, Masaya Fukunishi, Hōki Katsuhis', 'Nhật Bản', 'Yasuyuki Ebara, Takehiko Inoue', '8.9', '90 phút', '2023-04-14', 'The First Slam Dunk - phiên bản điện ảnh đầu tiên của loạt phim/truyện đình đám này sẽ do đích thân tác giả Inoue Takehiko chỉ đạo. Tuy nhiên lần này, câu chuyện sẽ được kể từ góc nhìn của chàng hậu vệ nhỏ con Miyagi Ryota, thay vì anh chàng tóc đỏ xốc nổi Hanamichi. Lấy bối cảnh trận đấu quan trọng giữa Shohoku và Sannoh - đội bóng top 10 toàn quốc, phim đan xen câu chuyện quá khứ của từng thành viên, đặc biệt là Ryota, cùng những diễn biến của trận đấu. Từ đó, tác giả Inoue Takehiko thành công khắc họa việc bóng rổ có ảnh hưởng to lớn như thế nào đến sự trưởng thành của mỗi thành viên Shohoku.', 'thefirstslamdunk.jpg', 'thefirstslamdunkngang.jpg', 13, 'https://www.youtube.com/embed/kDuiynKxjQU', 'sapchieu'),
('thesupermariobrosmovie', 'THE SUPER MARIO BROS. MOVIE', 'Hoạt Hình, Phiêu Lưu', 'Chris Pratt, Jack Black, Keegan-Michael Key, Anya ', 'Mỹ, Nhật Bản', 'Michael Jelenic, Aaron Horvath', '8.9', '93 phút', '2023-04-06', 'The Super Mario Bros. Movie xoay quanh cuộc phiêu lưu ở thế giới Vương quốc Nấm của anh em thợ sửa ống nước Mario và Luigi. Sau khi tình cờ bước tới vùng đất lạ từ một ống nước, Luigi đã bị chia tách với Mario và rơi vào tay quái vật rùa xấu xa Bowser, hắn đang âm mưu độc chiếm thế giới. Trong lúc cố gắng tìm kiếm người anh em của mình, Mario đã chạm mặt anh bạn nấm Toad và công chúa Peach. Từ đây họ sát cánh bên nhau trên hành trình ngăn chặn thế lực hắc ám.', 'mario.jpg', 'mariongang.jpg', 13, 'https://www.youtube.com/embed/TnGl01FkMMo', 'dangchieu'),
('tomandjerry', 'TOM & JERRY: QUẬY TUNG NEW YORK', 'Hài, Gia Đình, Hoạt Hình', 'Chloë Grace Moretz, Pallavi Sharda', 'Myz', 'Tim Story', '9.2', '101 phút', '2023-03-10', 'Sau bao năm rượt đuổi, Tom và Jerry đã làm hòa, chia tay nhau để rời khỏi ngôi nhà gắn bó bấy lâu và bắt đầu cuộc phiêu lưu riêng. Chuột Jerry tìm đến \"định cư\" tại một khách sạn sang trọng sắp tổ chức đám cưới thế kỷ.\r\n\r\nĐược giao nhiệm vụ tống cổ Jerry, cô nhân viên khách sạn Kayla đem mèo tới bắt chuột. Đó không ai khác, chính là Tom.\r\n', 'tomjerry.jpg', 'tomjerryngang.jpg', 0, 'https://www.youtube.com/embed/WqzXujadi3w', 'dangchieu'),
('trinhcongson', 'TRỊNH CÔNG SƠN', 'Tình Cảm, Lãng Mạn', 'Hoàng Hà, Lan Thy, Bùi Lan Hương, Avin Lu', 'Việt Nam', 'Phan Gia Nhật Linh', '7.4', '95 phút', '2023-03-31', 'Bộ phim khắc họa chân dung Trịnh Công Sơn từ một chàng thư sinh đa tài lãng tử trở thành “người nhạc sĩ viết tình ca hay nhất thế kỷ” với hàng trăm ca khúc về tình yêu và thân phận con người. Bộ phim “Trịnh Công Sơn” tràn đầy cảm hứng và nhiệt huyết của tuổi trẻ về người nhạc sĩ vĩ đại, đã sống, yêu và sáng tác trong một giai đoạn lịch sử của đất nước với tình yêu cứu rỗi, vượt lên mọi tan vỡ, khổ đau.\r\n', 'trinhcongson.jpg', 'trinhcongsonngang.jpg', 13, 'https://www.youtube.com/embed/jCD7SDfme1A', 'dangchieu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong`
--

CREATE TABLE `phong` (
  `maphong` char(30) NOT NULL,
  `tenphong` varchar(30) DEFAULT NULL,
  `soluongghe` int(11) DEFAULT NULL,
  `trangthai` varchar(50) NOT NULL DEFAULT 'hien'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phong`
--

INSERT INTO `phong` (`maphong`, `tenphong`, `soluongghe`, `trangthai`) VALUES
('P01', 'Phòng 1', 40, 'hien'),
('P02', 'Phòng 2', 40, 'hien'),
('P03', 'Phòng 3', 40, 'hien'),
('P04', 'Phòng 4', 40, 'hien'),
('P05', 'Phòng 5', 40, 'hien'),
('P06', 'Phòng 6', 40, 'hien'),
('P07', 'Phòng 7', 40, 'hien'),
('P08', 'Phòng 8', 40, 'hien'),
('P09', 'Phòng 9', 40, 'hien'),
('P10', 'Phòng 10', 40, 'hien'),
('P11', 'Phòng 11', 40, 'hien');

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
  `giave` int(11) DEFAULT NULL,
  `trangthai` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `suatchieu`
--

INSERT INTO `suatchieu` (`masuatchieu`, `maphim`, `maphong`, `ngaychieu`, `giochieu`, `giave`, `trangthai`) VALUES
('Sdaotoiac01', 'daotoiac', 'P01', '2023-03-31', '18:00:00', 70000, NULL),
('Sdaotoiac02', 'daotoiac', 'P03', '2023-04-01', '18:00:00', 70000, NULL),
('Sdaotoiac03', 'daotoiac', 'P05', '2023-04-01', '20:00:00', 70000, NULL),
('Sdemoslayer01', 'demoslayer', 'P05', '2023-03-22', '08:00:00', 65000, NULL),
('Sdemoslayer02', 'demoslayer', 'P06', '2023-03-22', '11:00:00', 65000, NULL),
('Sdemoslayer03', 'demoslayer', 'P01', '2023-03-25', '11:00:00', 65000, NULL),
('Sdemoslayer04', 'demoslayer', 'P02', '2023-03-25', '14:00:00', 65000, NULL),
('Sdemoslayer05', 'demoslayer', 'P03', '2023-03-25', '18:00:00', 65000, NULL),
('Ssieulay01', 'sieulay', 'P01', '2023-03-01', '08:00:00', 65000, NULL),
('Ssieulay02', 'sieulay', 'P02', '2023-03-01', '15:30:00', 65000, NULL),
('Ssieulay03', 'sieulay', 'P03', '2023-03-01', '15:30:00', 65000, NULL),
('Ssieulay04', 'sieulay', 'P04', '2023-03-02', '08:00:00', 65000, NULL),
('Ssieulay05', 'sieulay', 'P05', '2023-03-02', '11:00:00', 65000, NULL),
('Ssieulay06', 'sieulay', 'P06', '2023-03-02', '15:00:00', 65000, NULL),
('Ssieulay07', 'sieulay', 'P07', '2023-03-02', '18:00:00', 65000, NULL),
('Ssongsot01', 'songsot', 'P07', '2023-03-29', '08:00:00', 70000, NULL),
('Ssongsot02', 'songsot', 'P08', '2023-03-29', '13:00:00', 70000, NULL),
('Ssongsot03', 'songsot', 'P02', '2023-03-30', '15:00:00', 70000, NULL),
('Ssongsot04', 'songsot', 'P03', '2023-03-30', '18:00:00', 70000, NULL),
('Stomandjerry01', 'tomandjerry', 'P01', '2023-03-10', '08:00:00', 80000, NULL),
('Stomandjerry02', 'tomandjerry', 'P02', '2023-03-10', '11:00:00', 80000, NULL),
('Stomandjerry03', 'tomandjerry', 'P03', '2023-03-11', '13:00:00', 80000, NULL),
('Stomandjerry04', 'tomandjerry', 'P04', '2023-03-11', '18:00:00', 80000, NULL),
('Stomandjerry05', 'tomandjerry', 'P08', '2023-03-12', '14:00:00', 80000, NULL),
('Stomandjerry06', 'tomandjerry', 'P09', '2023-03-12', '18:00:00', 80000, NULL),
('Strinhcongson01', 'trinhcongson', 'P01', '2023-03-31', '13:00:00', 60000, NULL),
('Strinhcongson02', 'trinhcongson', 'P06', '2023-04-01', '15:00:00', 60000, NULL),
('Strinhcongson03', 'trinhcongson', 'P04', '2023-04-01', '20:00:00', 60000, NULL);

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
  `category` varchar(20) NOT NULL,
  `ctnoidung1` text DEFAULT NULL,
  `ctnoidung2` text DEFAULT NULL,
  `ctnoidung3` text DEFAULT NULL,
  `ctnoidung4` text DEFAULT NULL,
  `cthinhanh1` varchar(100) DEFAULT NULL,
  `cthinhanh2` varchar(100) DEFAULT NULL,
  `cthinhanh3` varchar(100) DEFAULT NULL,
  `hinhanhdoc` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`matin`, `tieude`, `noidung`, `hinhanh`, `luotxem`, `luotdanhgia`, `category`, `ctnoidung1`, `ctnoidung2`, `ctnoidung3`, `ctnoidung4`, `cthinhanh1`, `cthinhanh2`, `cthinhanh3`, `hinhanhdoc`) VALUES
(1, 'Siêu Lừa Gặp Siêu Lầy: Phi Vụ Hoàn Hảo Của Điện Ản', 'Siêu Lừa Gặp Siêu Lầy là một cuốn phim tốt về mọi mặt, nếu mong muốn có những giây phút giải trí thư giãn', '/img/rv1.jpg', 3107, 8, 'binhluan', 'Một kẻ lừa lọc ranh mãnh theo kiểu “cây nhà lá vườn”, một người thì lừa đảo bằng việc lên kế hoạch tỉ mỉ chỉn chu để dụ con mồi vào bẫy. Một bên thì vì mưu sinh nên dẫn đến tham lam, bên còn lại thì lấy danh nghĩa thực thi công lấy lừa xấu giúp tốt. Thử hỏi nếu cả 2 cùng hợp tác trong các phi vụ thì liệu có thành công thu được chiến lợi phẩm rực rỡ?', 'Những gì mà Siêu Lừa Gặp Siêu Lầy đem tới không đơn thuần là những tràng cười sảng khoái, mà còn có sự cao thấp hơn thua khi các bộ não hoạt động tối đa công suất. Đi cùng đấy vẫn có khoảnh khắc lắng đọng về thân phận, cuộc đời và nỗi niềm của từng người. Dẫn đến thông điệp cuối cùng là tình đồng đội, tình bạn bè, sẵn sàng xả thân bên nhau lúc hoạn nạn và cùng chia niềm vui hạnh phúc nhất. \r\nSau khi “lỡ hẹn” với khán giả vào dịp Tết Nguyên Đán, giờ đây phim mới nhất của đạo diễn Võ Thanh Hòa tiếp tục chứng minh tài năng của nhà làm phim dày dặn kinh nghiệm này với thể loại sở trường: hành động pha hài hước.\r\nPhim kể về sự đụng độ bất đắc dĩ giữa Tú (Anh Tú) và Khoa (Mạc Văn Khoa), hai người đều kiếm sống bằng nghề lừa gạt. Sau khi chứng kiến “đẳng cấp” của Tú và đồng bọn thì Khoa tìm cách để xin nhập hội. Từ đây nhóm siêu lừa với mỗi thành viên đều có biệt tài riêng bắt đầu con đường chinh chiến. Ngoại trừ Tú và Khoa làm lãnh đạo thì còn có bé Mã Lai (Ngọc Phước) – một chuyên gia công nghệ đầy bản lĩnh. Còn lại là chú Năm (Trung Lùn) – “người vận chuyển” với biệt tài lái xe siêu hạng. Sau nhiều lần “phạm tội” thành công, cả nhóm tiếp cận một “người bị hại” trông có vẻ đầy tiềm năng, mục đích là gom trọn vố lớn để sống thoải mái về sau. Tuy nhiên có thật sự lúc nào cũng dễ dàng đạt thành công như vậy?\r\nNổi bật nhất khi xem Siêu Lừa Gặp Siêu Lầy chắc chắn là những tình tiết gây cười duyên dáng đầy thông minh. Nếu Mạc Văn Khoa chỉ cần đứng im cũng đủ làm người xem khó lòng”nhăn mặt”, thì đến Ngọc Phước và Trung Lùn chính thức khiến cả rạp chiếu phim náo loạn bởi những chiêu trò quá trời quá đất.', 'Cốt truyện của phim không hẳn là xa lạ khi đã từng có nhiều tác phẩm trước đây cũng khai thác đề tài này, nhưng Võ Thanh Hòa đã khéo léo khi xây dựng được bản sắc riêng cho đứa con tinh thần của mình. Không sa đà vào mưu mô cao siêu khi cố thâm nhập vào giới thượng lưu hào nhoáng, cũng không bám víu vào công nghệ tiên tiến. Tất cả những vụ làm ăn trót lọt của nhóm đều tập trung vào các đối tượng thực tế hơn. \r\nĐấy có thể là các quý bà lắm của nhưng thiếu tình, những đại gia đầy tiền sẵn sàng chi trội để mua khoảnh khắc vui vẻ. Hoặc đôi khi chỉ là dạng vô tình chạm mặt, thấy bở nên cứ tiện tay mà đào! \r\nĐã có vui vẻ thì đồng thời cũng có khoảng lặng. Thì ra cả Tú, Khoa, bé Mã Lai và chú Năm đều là những mảnh đời đáng thương. Trong họ ai cũng có quá khứ đau lòng, nỗi buồn chất chứa nhiều đến mức không còn gì có thể đánh gục ý chí của những người này. Phân đoạn khi các nhân vật chia sẻ về hoàn cảnh cá nhân thực sự gây xúc động. Khi tất cả mở lòng với những nỗi đau từng trải qua, các khúc mắc được gỡ bỏ sẽ giúp cho việc đồng cảm với tâm lý nhân vật trở thành điều dễ dàng.\r\nVì có pha yếu tố hành động nên phim không thiếu những màn rượt đuổi gây cấn. Tuy các trận “giáp lá cà” không nhiều nhưng mỗi cảnh đều được chăm chút kỹ càng. Màn cao trào ở cuối phim cho thấy độ “chịu chơi” của nhà sản xuất khi được thực hiện vô cùng hoành tráng, bối cảnh được dàn dựng công phu đem tới cảm giác “đã” khi trải nghiệm trong phòng chiếu. \r\nTrong lần hợp tác này, Anh Tú cho thấy sự tiến bộ khi hóa thân vào vai Tú. Đâu đó về mặt đài từ có thể hạn chế, nhưng biểu cảm linh hoạt và khả năng biểu đạt tâm lý tròn trịa đã giúp Anh Tú dần thể hiện được khả năng của mình sẽ còn tiến xa hơn. \r\nVề phần Mạc Văn Khoa thì vẫn giữ vững phong độ, anh nhả miếng có chừng mực và làm chủ được nhịp diễn, trong mọi cảnh phim có sự xuất hiện “cây hài” đều nhận được phản hồi tích cực. Ngọc Phước lần này không đơn thuần chỉ là cô bé náo nhiệt ồn ào, mà còn phô diễn được nét đẹp tiềm ẩn khi trổ tài “mỹ nhân kế”. Trung Lùn lại giữ vai trò là người có cái đầu lạnh điều tiết và làm chỗ dựa tinh thần cho cả đội bằng kinh nghiệm dày dặn của mình. Riêng Cát Tường lại đem đến nhiều bất ngờ nhất, vai Khánh của cô chính là điểm nhấn thú vị khiến nhiều người thích thú. ', 'Bên cạnh đó, phim còn quy tụ hàng sao “khủng” trong vai trò cameo như Đại Nghĩa, BB Trần, Mỹ Duyên, Lâm Vỹ Dạ, Hứa Minh Đạt…, mỗi người tuy xuất hiện ít nhưng lại có phần trình diễn chất lượng cao. \r\nCó thể nói Siêu Lừa Gặp Siêu Lầy là một cuốn phim tốt về mọi mặt. Từ kịch bản, tạo hình, diễn xuất, âm nhạc… Nếu mong muốn có những giây phút giải trí thư giãn sau nhiều giờ làm việc căng thẳng thì đây sẽ là lựa chọn hoàn hảo. \r\nPhim đang chiếu tại các hệ thống rạp trên toàn quốc. ', '/img/chitietsieulua1.jpg', '/img/chitietsieulua2.jpg', '/img/chitietsieulua3.jpg', '/img/sieulua.jpg'),
(2, 'Ant-Man And The Wasp Quantumania: Cú Lừa Xuất S', 'Ai nghĩ rằng trailer Ant-Man And The Wasp: Quantumania đã tóm tắt bộ phim thì lầm to rồi.', './img/rv2.jpg', 8113, 9, 'binhluan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'M3GAN: Khi \"Cúp Bế\" Trỗi Dậy Làm Chủ Con Người', 'Vừa hấp dẫn, vừa giải trí, M3GAN hoàn toàn xứng đáng với những lời khen từ đại chúng và các nhà phê bình.', './img/rv3.jpg', 3752, 9, 'binhluan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Chị Chị Em Em 2: Ngọc Trinh Hoàn Hảo, Minh Hă', 'Đạo diễn Vũ Ngọc Đãng thành công vừa làm nổi bật Ngọc Trinh bốc lửa vừa tôn được nét đẹp đằm thắm của Minh Hằng.', './img/rv4.jpg', 10023, 9, 'binhluan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Oscar 2023: Những Chuyện Hậu Trường Đầy Bất ', 'Những điều thú vị đằng sau sự kiện điện ảnh lớn nhất năm! Hãy cùng xem ai sẽ là người chiến thắng!', './img/blog1.jpg', 3255, 0, 'blog', 'Những điều thú vị đằng sau sự kiện điện ảnh lớn nhất năm! Hãy cùng xem ai sẽ là người chiến thắng!', '1. All Quiet On The Western Front đã thắng Oscar rồi! \r\nGần cả thế kỉ trước, năm 1930, chuyển thể từ tiểu thuyết của Erich Maria Remargue từng thắng Oscar. \r\nPhiên bản gần nhất do Netflix sản xuất được cả khán giả lẫn giới phê bình tán dương nồng nhiệt.  \r\nMới có hai phim nhận đề cử khi chuyển thể chung tác phẩm là Mutiny On The Bounty (1935 & 1962) và West Side Story (1961 & 2021). \r\n2. Có lẽ nhân vật Oscar nổi tiếng nhất Anh quốc lại là một con chuột chũi! \r\nNăm nay, đâu là đề cử Oscar được biết đến rộng rãi nhất tại xứ sở sương mù? Hẳn bạn nghĩ là Top Gun: Maverick hoặc Avatar: The Way Of Water – phá đảo phòng vé toàn cầu. Chưa chắc đâu nha. Đối đầu cùng hai thương hiệu này là một trong những phim hoạt hình ngắn xuất sắc nhất mọi thời đại. The Boy, The Mole, The Fox And The Horse có tận 8,7 triệu khán giả. Tác phẩm chuyển thể từ quyển sách bán chạy của Charlie Mackesy \r\n3. Thời lượng trung bình các tác phẩm được đề cử Phim xuất sắc nhất là 144 phút. \r\nNgắn nhất là Women Talking (104 phút), dài nhất là Avatar: The Way Of Water (192 phút). \r\n4. Lần hiếm hoi đồng đạo diễn vào danh sách đề cử \r\nDaniel Kwan và Daniel Scheinert cùng chỉ đạo phim hay Everything Everywhere All At Once và được Viện Hàn Lâm lựa chọn. Đây là lần thứ 5 một đôi đồng đạo diễn nhận vinh dự này. \r\nCác trường hợp trước đây là Robert Wise và Jerome Robbins (West Side Story), Warren Beatty và Buck Henry (Heaven Can Wait), Joel và Ethan Coen / anh em nhà Coen (No Country for Old Men và True Grit).\r\n5. Judd Hirsch phá kỉ lục khoảng cách giữa các lần đề cử. \r\nNgôi sao The Fabelmans được đề cử Nam phụ xuất sắc nhất vào 01.2023. Cách 41 năm và 341 ngày từ lần đầu ông nhận đề cử trong Ordinary People (1980). \r\nĐây cũng là năm chứng kiến sự trở lại sau thời gian rất rất dài. Đó là Todd Field với Tár (16 năm), Avatar: The Way Of Water (13 năm) và Top Gun: Maverick (36 năm). \r\n6.  Cả hai ứng viên nặng kí nhất cho Nữ chính xuất sắc nhất – nhân vật vốn là nam. ', 'Vai chính phiêu lưu qua đa dòng vũ trụ của Dương Tử Quỳnh vốn thuộc về Thành Long. Khi ngôi sao võ thuật từ chối, mọi thứ được sửa lại. \r\nBan đầu, nhạc trưởng Lydia Tár của Cate Blanchett cũng là nam. \r\n7. Darren Aronofsky - đạo diễn The Whale có lẽ là kẻ bí mật mê mẩn dân ca Anh Quốc. \r\nHai tác phẩm gần đây Darren Aronofsky thực hiện mang tên Noah và The Whale. Noah And The Whale là tên gọi ban nhạc Anh quốc thành lập năm 2006. \r\n8. Women Talking sở hữu hai ngôi sao từng “có hình xăm rồng” \r\nTrước lúc diễn chung ở tác phẩm được đề cử Phim xuất sắc của Sarah Polley, Rooney Mara và Claire Foy đã diễn một vai từ những chuyển thể loạt truyện The Girl With The Dragon Tattoo. \r\nNăm 2011, Rooney Mara đóng Lisbeth Salander trong bản phim Anh cuốn tiểu thuyết nổi tiếng do Stieg Larsson chấp bút. \r\n7 năm sau, Foy diễn vai này ở The Girl In The Spiders Web – tác phẩm thứ 4 thuộc series. Sách do David Lagercrantz viết sau khi Larsson qua đời. \r\n9. Angela Bassett là diễn viên đầu tiên được đề cử nhờ đóng phim Marvel ', 'Nhờ vai diễn nữ hoàng Ramonda (Black Panther: Wakanda Forever), Angela Basset nhận đề cử Nữ phụ xuất sắc nhất. Tuy nhiên, Kerry Condon (The Banshees of Inisherin) là người thắng hạng mục này tại BAFTA, Jamie Lee Curtis (Everything Everywhere All At Once) thì ẵm giải SAG, chiến thắng đầu tiên cho hãng Marvel tại hạng mục diễn xuất? Có vẻ còn xa xa lắm! \r\n10. Chưa có phim nào ăn ba giải về diễn xuất kể từ Network (1976) Tuy nhiên, năm nay, Everything Everywhere All At Once có thể sẽ phá vỡ thành tích này. Cả Dương Tử Quỳnh, Jamie Lee Curtis và Quan Kế Huy đều thắng SAG. \r\nChưa kể, Everything Everywhere All At Once đang nhân đôi cơ hội thắng Nữ phụ xuất sắc nhất tại Oscar. Đừng quên Stephanie Hsu cũng được đề cử. \r\n11. Có hai phim nhận bốn đề cử diễn xuất! Everything Everywhere All At Once và The Banshees Of Inisherin \"đánh chiếm\" tám vị trí trong hai chục suất đề cử diễn xuất. \r\n45 năm rồi Oscar mới có sự kiện này. Lần cuối cùng hai phim ẵm bốn đề cử hạng mục diễn xuất là năm 1978 - Julia và The Turning Point 12. Zoe Saldana là diễn viên đầu tiên và duy nhất cho đến nay xuất hiện ở bốn phim khác nhau cùng phá 4 tỷ $ tại phòng vé toàn cầu. Trước khi tác phẩm được đề cử Oscar – Avatar: The Way Of Water đánh chiếm các rạp chiếu phim, nữ diễn viên đã từng tận hưởng niềm vui chiến thắng tương tự với Avatar, Avengers: Infinity War và Avengers: Endgame \r\n13. Đây là năm của các chú lừa! \r\nCác chú xuất hiện trong The Banshees Of Inisherin, Triangle Of Sadness và đặc biệt là EO \r\nThế nhưng, Viện Hàn Lâm đã tàn nhẫn loại bỏ sáu chú lừa đáng yêu Rocco, Marietta, Tako, Hola, Mela và Ettore khỏi đề cử Nam chính xuất sắc nhất!   \r\n14. Nhạc sĩ Diane Warren lại nhận đề cử với bài hát Applause (Tell It Like A Woman). \r\nKhông may, một trong những đối thủ của bà là Hold My Hand do Lady Gaga trình bày. \r\nWarren và Applause có cơ hội chăng? Thật khó nói. Chỉ biết rằng vị nữ nhạc sĩ huyền thoại này đã được đề cử tới lần thứ 14 và bà vẫn chưa thắng về tượng vàng nào! \r\n15. Tất cả đề cử Nữ chính xuất sắc nhất của Cate Blanchett đều từ phim lấy tên nhân vật làm tên tác phẩm. \r\nNgoài Lydia Tár (Tár), Blanchett còn có Carol (Carol), Jasmine (Blue Jasmine), Elizabeth (Elizabeth & Elizabeth: The Golden Age). Blanchett là linh hồn Tár, góp mặt hầu hết các cảnh quay. Về nữ, chỉ có Viviene Leigh (Gone With The Wind) xuất hiện nhiều hơn.    \r\n16. Ở tuổi 90, John William là người cao tuổi nhất từng được đề cử Oscar. \r\nNhà soạn nhạc siêu phẩm The Fabelman đã vượt qua đạo diễn Agnès Varda – 89 tuổi khi lọt danh sách đề cử năm 2018. William đã nhận 53 đề cử Oscar trong suốt sự nghiệp. Ông là người sở hữu nhiều đề cử nhất còn sống, chỉ thua Walt Disney – 59 đề cử. \r\nLược dịch theo BBC ', '/img/chitietoscar1.jpeg', '/img/chitietoscar2.jpg', '/img/chitietoscar3.jpg', '/img/blog1.jpg'),
(6, 'Bóc Trứng Phục Sinh Ant-Man And The Wasp: Quantuma', 'Những bộ phim thuộc vũ trụ điện ảnh Marvel luôn “chôn” rất nhiều Trứng Phục Sinh để các fan trung thành khám phá.', './img/blog2.jpg', 967, 0, 'blog', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Fast X: Vin Diesel Rủ Dàn Siêu Anh Hùng Đua Xe?', 'Fast X – phần mở đầu cho “cuộc đua cuối” của đại gia đình Toretto vừa tung ra trailer siêu hấp dẫn vào 10.02 vừa qua.', './img/blog3.jpg', 158, 0, 'blog', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Luật Điện Ảnh Mới Có Gì Mới?', 'So với Luật Điện ảnh 2006 trước đây, Luật Điện ảnh 2022 (có hiệu lực từ ngày 01.01.2023) thay đổi một số điểm', './img/blog4.jpg', 488, 0, 'blog', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`userid`, `hoten`, `ngaysinh`, `gioitinh`, `email`, `sodienthoai`, `matkhau`, `role`, `diachi`, `tinh`) VALUES
(1, 'admin', NULL, NULL, NULL, '0123456789', '123456', 'admin', NULL, NULL),
(2, 'Huỳnh Khánh Duy', '28/2/2002', 'Nam', 'khanhtran@gmail.com', '0369999999', '906297824027179', 'khach', '19 Nguyễn Hữu Thọ', 'Bình Phước'),
(3, 'Yến Trang', '28/2/2003', 'Nữ', 'yentrang2k3@gmail.com', '0361231115', '123123', 'khach', '19 Nguyễn Thị Thập', 'TP. Hồ Chí Minh'),
(4, 'Nhocs Vlogss', '28/2/2005', 'Nam', 'khanhduy16012k2@gmail.com', '0369999999', 'google', 'khach', '06 Lê Thị Riêng', 'TP. Hồ Chí Minh'),
(5, 'Neuw Ton', NULL, NULL, NULL, '0123789456', '123456789', 'khach', NULL, NULL);

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
-- Chỉ mục cho bảng `daodien`
--
ALTER TABLE `daodien`
  ADD PRIMARY KEY (`madaodien`);

--
-- Chỉ mục cho bảng `dienvien`
--
ALTER TABLE `dienvien`
  ADD PRIMARY KEY (`madienvien`);

--
-- Chỉ mục cho bảng `ghe`
--
ALTER TABLE `ghe`
  ADD PRIMARY KEY (`maghe`,`maphong`),
  ADD KEY `maphong` (`maphong`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahd`),
  ADD KEY `userid` (`userid`),
  ADD KEY `mave` (`mave`),
  ADD KEY `makhuyenmai` (`makhuyenmai`),
  ADD KEY `masuatchieu` (`masuatchieu`);

--
-- Chỉ mục cho bảng `hotro`
--
ALTER TABLE `hotro`
  ADD PRIMARY KEY (`mahotro`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`makhuyenmai`);

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
-- AUTO_INCREMENT cho bảng `daodien`
--
ALTER TABLE `daodien`
  MODIFY `madaodien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `dienvien`
--
ALTER TABLE `dienvien`
  MODIFY `madienvien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `mahd` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `hotro`
--
ALTER TABLE `hotro`
  MODIFY `mahotro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `makhuyenmai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `matin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  ADD CONSTRAINT `hoadon_ibfk_4` FOREIGN KEY (`makhuyenmai`) REFERENCES `khuyenmai` (`makhuyenmai`),
  ADD CONSTRAINT `hoadon_ibfk_5` FOREIGN KEY (`masuatchieu`) REFERENCES `suatchieu` (`masuatchieu`);

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
