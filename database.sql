DROP DATABASE IF EXISTS l2dbt_cinema;
CREATE DATABASE l2dbt_cinema;
USE l2dbt_cinema;
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 21, 2023 lúc 06:03 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `daodien`
--

INSERT INTO `daodien` (`madaodien`, `ten`, `hinhanh`, `hinhanhdoc`, `luotxem`, `mota`, `ngaysinh`, `chieucao`, `quoctich`, `tieusu`) VALUES
(1, 'James Wan', 'wan1.jpg', 'wan2.jpg', 80423, 'Khi Hollywood vẫn còn bị chỉ trích về nạn phân biệt chủng tộc, khi những tài năng da màu đều phải chật vật để tìm chỗ đứng, một người đàn ông đã chứng minh rằng chỉ cần có khả năng kiệt xuất thì dù ở đâu hay bất cứ vị trí nào, bạn cũng sẽ tỏa sáng. Anh ấy là James Wan.', '1997-07-27', '168 cm', 'Malaysia', 'Anh ấy là James Wan. Là người Malaysia gốc Hoa nhưng James Wan lại lớn lên ở Úc. Khi Hollywood vẫn còn bị chỉ trích về nạn phân biệt chủng tộc, khi những tài năng da màu đều phải chật vật để tìm chỗ đứng, một người đàn ông đã chứng minh rằng chỉ cần có khả năng kiệt xuất thì dù ở đâu hay bất cứ vị trí nào, bạn cũng sẽ tỏa sáng. Hiện Saw đã có đến 7 phần, với một trong số đó ở định dạng 3D, trở thành thương hiệu phim kinh dị phổ biến toàn thế giới. Anh chứng minh tài năng thiên bẩm từ rất sớm khi năm 23 tuổi đã đoạt giải tại cuộc thi làm phim không chuyên ở Melbourne với bộ phim Stygian. Từ thành công ban đầu này, Saw ngày càng phát triển và trở thành một trong những franchise kinh dị nổi tiếng nhất mọi thời. Một trong những cột mốc quan trọng nhất cuộc đời James là khi anh gặp được người bạn đồng chí hướng Leigh Whannell. Cùng nhau, họ cho ra đời phim Saw - một dấu son chói lọi trong sự nghiệp của James. Tuy nhiên, không phải lúc nào thần may mắn cũng mỉm cười với James Wan, hai xuất phẩm Dead Silence, Death Sentence vào năm 2007 của anh đều không đạt được thành công như kỳ vọng. Chẳng ai ngờ được một bộ phim chỉ được đầu tư vỏn vẹn 1,2 triệu $ lại thắng đến gần 104 triệu $.'),
(2, 'Lê Bảo Trung\r\n', 'baotrung1.jpg', 'baotrung2.jpg', 30256, 'Tốt nghiệp xuất sắc khoa đạo diễn TRƯỜNG ĐẠI HỌC SÂN KHẤU ĐIỆN ẢNH TP. HCM, TRƯỜNG ĐẠI HỌC ĐIỆN ẢNH HÀ NỘI. Đạo diễn LÊ BẢO TRUNG đã thành công với nhiều phim điện ảnh đạt doanh thu cao.', '1974-01-01', '170 cm', 'Việt Nam', 'Tuổi thơ: Tuổi thơ anh đau đáu nỗi thèm khát được xem phim. Từng bị nhân viên bảo vệ “xách tai” đuổi ra khỏi rạp vì xem phim chui, cậu bé ngày xưa quyết tâm trở thành đạo diễn. Giai đoạn nghề nghiệp: đạo diễn cho các bộ phim nhựa, phim truyền hình và cả gameshow trên TV - Đời tư: Năm 2002, Lê Bảo Trung cưới Lê Hồng Minh và hiện có 2 người con trai Giải thưởng: Tên tiêu tiền tằn tiện (Giải Bạc Liên hoan phim ngắn 2000), Xuất giá tòng phu (Giải thưởng Liên hoan phim ngắn 2003), Hải âu (Cánh Diều Vàng 2003), Một chuyến phiêu lưu (Giải Bạc LHP truyền hình toàn quốc 2004), Đẻ mướn ( Mai vàng 2006 và giải thưởng hội điện ảnh thành phố)'),
(3, 'Victor Vũ', 'victorvu1.jpg', 'victorvu2.jpg', 8621, 'Victor Vũ, tên thật Vũ Quốc Việt, là một đạo diễn phim, nhà biên kịch phim, nhà sản xuất phim và người dựng phim người Mỹ gốc Việt. Victor Vũ có một sự nghiệp thành công với rất nhiều các thể loại phim điện ảnh đa dạng, chuyển đổi liên tục giữa hành động, phim hài, phim tâm lý và phim kinh dị.', '1975-11-25', '170 cm', 'Việt Nam', 'Cân bằng được giữa chất thương mại và tính nghệ thuật, các bộ phim của anh dù thuộc thể loại nào, cũng đều được khán giả đại chúng đón nhận tích cực. Victor Vũ hiện được xem là “ông vua không ngai”  của nền phim Việt. Nhất là với thành công của bộ phim chuyển thể truyện dài Nguyễn Nhật Ánh Tôi Thấy Hoa Vàng Trên Cỏ Xanh vào tháng 10/2015. Sau khi giành bằng cử nhân sản xuất phim tại đại học Loyota Marymount, Victor đạo diễn bộ phim ngắn đầu tiên có tên Firecracker vào năm 1997. Đó là phần thưởng xứng đáng dành cho vị đạo diễn đã quyết định trở lại quê hương gầy dựng sự nghiệp. Dù sinh ra và lớn lên ở bang California, Việt Nam luôn ở trong tâm trí cậu bé Victor như một nơi để tìm về. Anh thử sức thêm với vài dự án, trước khi quay lại Việt Nam để thực hiện phim dài Chuyện Tình Xa Xứ vào năm 2009. Ban đầu chủ yếu là thể loại tâm lý kinh dị, với các phim Giao Lộ Định Mệnh (2010), Scandal 1 & 2 (Bí Mật Thảm Đỏ), Quả Tim Máu (2014)… xen kẽ với số ít phim hành động, hài hước như Cô Dâu Đại Chiến (Battle Of The Bribes), Thiên Mệnh Anh Hùng (2012). Kể từ đó, Victor đều đặn thực hiện ít nhất một phim mỗi năm.'),
(4, 'Michael Bay', 'bay1.png', 'bay2.jpg', 13256, 'Một nhà sản xuất có thể kiếm hàng tỷ $ dù phim nào ra rạp cũng bị “gạch đá” nặng nề. Một đạo diễn bị gọi là kẻ bất tài nhưng vẫn có thể mời được các ngôi sao hàng đầu vào phim của mình. Chỉ có thể là Michael Bay.', '1965-02-17', '185 cm', 'Mỹ', 'Một nhà sản xuất có thể kiếm hàng tỷ $ dù phim nào ra rạp cũng bị “gạch đá” nặng nề. Ông lớn lên trong sự bảo bọc của cha mẹ là chủ hiệu sách kiêm bác sĩ tâm lý cho trẻ em Harriet và Jim – một cố vấn tài chính. Một đạo diễn bị gọi là kẻ bất tài nhưng vẫn có thể mời được các ngôi sao hàng đầu vào phim của mình. Chỉ có thể là Michael Bay. Sinh tại Los Angeles, Michael Bay được nhận nuôi khi mới hai tuần tuổi. Được truyền cảm hứng, Bay bắt đầu ước mơ trở thành đạo diễn. Ngay từ thuở bé, Bay đã tỏ ra thích thú với thể loại phim hành động. Năm 1986, ông tốt nghiệp đại học Wesleyan, là cử nhân cả hai ngành tiếng Anh lẫn điện ảnh. Ban đầu, Bay không thích công việc của mình nhưng khi được xem tác phẩm về Indiana Jones này ở rạp chiếu phim thì ông thay đổi hoàn toàn. Sở cứu hỏa được gọi đến và cậu bé bị một bài học nhớ đời. Ông gom pháo hoa nhét vào chiếc xe lửa đồ chơi và quay cảnh thảm họa bằng máy quay phim của mẹ. Bay tham gia ngành công nghiệp điện ảnh từ năm 15 tuổi, làm việc cho George Lucas tại phim trường Raiders Of The Lost Ark. Mối quan hệ thân thiết giữa họ kéo dài đến tận sau này,  Bay vẫn tìm đến George Lucas khi cần lời khuyên.'),
(5, 'Tim Burton', 'tim1.jpg', 'tim2.jpg', 99235, 'Timothy Walter Burton là một nam đạo diễn, nhà biên kịch, nhà sản xuất điện ảnh, nghệ sĩ kiêm họa sĩ diễn hoạt người Mỹ. Ông được biết nhiều qua những bộ phim có màu sắc tối tăm, rùng rợn, gothic và châm biếm.', '1958-08-25', '170 cm', 'Mỹ', 'Burton cũng rất nổi tiếng với việc lựa chọn đội ngũ cộng tác, trong đó có tài tử Johnny Depp – người đã trở thành bạn thân với ông kể từ bộ phim đầu tiên 2 người hợp tác, nhạc sĩ Danny Elfman – người đã phụ trách, ngoại trừ 2 bộ phim, phần nhạc nền cho tất cả các bộ phim của ông, và dĩ nhiên là minh tinh và người bạn đời nổi tiếng của ông – Helena Bonham Carter. Ông cũng từng viết cuốn sách The Melancholy Death of Oyster Boy & Other Stories vào năm 1977 và một tuyển tập các bản phác thảo, nháp hay ý tưởng mang tên The Art of Tim Burton vào năm 2009. Tính tới năm 2012, ông đã sản xuất tổng cộng 12 phim và làm đạo diễn cho 16 bộ phim. Hiện tại, ông đang thực hiện Big Eyes – một bộ phim nói về nghệ sĩ Walter Keane và vợ Magaret.');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `dienvien`
--

INSERT INTO `dienvien` (`madienvien`, `ten`, `hinhanh`, `hinhanhdoc`, `luotxem`, `mota`, `ngaysinh`, `chieucao`, `quoctich`, `tieusu`) VALUES
(1, 'Chris Evans', 'chrisevans1.jpg', 'chrisevans2.jpg', 190500, 'Khác với Chris Hemsworth vẫn đang loay hoay trong hình tượng vị thần sấm sét, đa số người hâm mộ vẫn nhìn nhận rõ ràng, Chris Evans và Captain America là hai con người hoàn toàn khác nhau.', '1981-06-13', '183 cm', 'Mỹ', 'Sinh ngày 13 tháng 6 năm 1981 tại Boston, bang Massachusetts, con đường diễn xuất của cậu bé Chris Evans bắt đầu từ nhỏ với những vở kịch trong trường học. Tình yêu diễn xuất lớn dần theo năm tháng, khi trưởng thành, Evans lắng nghe tiếng gọi con tim, tới New York và thi vào trường nghệ thuật Lee Strasberg. Khác với Chris Hemsworth vẫn đang loay hoay trong hình tượng vị thần sấm sét, đa số người hâm mộ vẫn nhìn nhận rõ ràng, Chris Evans và Captain America là hai con người hoàn toàn khác nhau. Theo lời khuyên của bạn bè, anh bắt đầu tham gia thử vai một vài phim rồi dần nhận ra đam mê của bản thân là phim trường chứ không phải sân khấu kịch nghệ. Ban đầu con đường sự nghiệp của Chris khá bằng phẳng. Năm 2000, anh xuất hiện lần đầu tiên trên một phim truyền hình của đài CBS. Năm 2004, một cơ hội khác đến với Evans khi anh tham gia vai chính trong bộ phim đầu tư trung bình The Perfect Score. Chiều cao 1m83 cùng khuôn mặt đẹp trai “chuẩn Mỹ” giúp anh nhanh chóng trở thành người tình trong mộng của nhiều cô gái. Đáng tiếc, phim nhận thất bại phòng vé nặng nề. Tuy nhiên, đây là chính là bộ phim “đầu tay” của một trong những tình bạn đẹp nhất Holllywood của “nam thần” Chris Evans với “mỹ nhân màn bạc nóng bỏng” Scarlett Johansson.'),
(2, 'Robert Downey Jr.\r\n', 'robert1.jpg', 'robert2.jpg', 90123, 'Thành công lớn ở giai đoạn đầu sự nghiệp nhưng nghiện ngập từ bé, có phim kiếm cả tỉ đôla lại từng lang thang không xu dính túi, 2 lần đề cử Oscar đi kèm với những lần vào tù ra khám…', '1965-04-04', '175 cm', 'Mỹ', 'Downey gắn bó với nghiệp diễn từ rất sớm, ngay khi mới 5 tuổi, nhờ vào người cha là biên kịch và đạo diễn có tiếng Robert Downey Sr. Sinh ngày 4/4/1965 tại Manhattan, New York, cậu bé Downey nhanh chóng chứng tỏ phẩm chất “nhà nòi” bằng vai diễn trong Pound (1970) và Greasers Palace (1972). Thành công lớn ở giai đoạn đầu sự nghiệp nhưng nghiện ngập từ bé, có phim kiếm cả tỉ đôla lại từng lang thang không xu dính túi, 2 lần đề cử Oscar đi kèm với những lần vào tù ra khám… Nếu phải chọn cuộc đời một ngôi sao để viết kịch bản phim, thì “cuộc đời của Robert Downey Jr” sẽ là kịch bản nằm ở tốp kịch tính và ăn khách nhất. Được bố dẫn dắt là một may mắn nghề nghiệp, nhưng cũng là mầm mống tai họa cho cuộc đời Downey. Những tháng năm đầu sự nghiệp, Downey dành được thành công vượt độ tuổi. \"Khi hai cha con tôi sử dụng thuốc cùng nhau, đó như thể là việc ông ấy cố gắng muốn bày tỏ tình yêu dành cho tôi, theo cách mà chỉ ông ấy hiểu,\" Downey nói. Năm 1978, bố mẹ ly dị, Downey chuyển đến sống chung hẳn với bố ở California.'),
(3, 'Johnny Depp', 'deep1.jpg', 'deep2.jpg', 88654, 'Từng là một trong những nam diễn viên được trả thù lao nhiều nhất Hollywood, từng là cần câu lợi nhuận khổng lồ với hàng tỷ $ kiếm được, Johnny Depp nay chỉ còn là cái bóng trong hào quang quá khứ.', '1963-06-09', '178 cm', 'Mỹ', 'Thế nhưng, năm 15 tuổi, cha mẹ anh li dị. Từng là một trong những nam diễn viên được trả thù lao nhiều nhất Hollywood, từng là cần câu lợi nhuận khổng lồ với hàng tỷ $ kiếm được, Johnny Depp nay chỉ còn là cái bóng trong hào quang quá khứ. Sinh ngày 9 tháng 6 năm 1963 tại Kentucky, Johnny từng có một gia đình hạnh phúc cùng ba anh chị em. Từng có một khoảng thời gian anh mắc hội chứng tự ngược đãi bản thân với vài vết sẹo còn tồn tại đến những năm sau này. Có lẽ, sở thích xăm hình của anh cũng bắt đầu từ đó. Giống như các thủy thủ, mỗi hình xăm đại diện cho một điều gì đó, khi bạn khắc chạm lên cơ thể mình thì đó hẳn là một cột mốc đặc biệt trong đời, cho dù bạn tự thân làm điều đó với một con dao hay với một thợ xăm chuyên nghiệp.” Là một diễn viên tên tuổi thuộc hàng top star thế nhưng thuở nhỏ Depp được chú ý nhờ khả năng âm nhạc. Một năm sau khi cha mẹ li dị, Depp cũng bỏ học và chuyên tâm vào nhạc rock. Với cây đàn ghita được mẹ tặng năm 12 tuổi, anh đã chơi cho nhiều ban nhạc khác nhau. Từng quay trở lại trường hai tuần sau khi nghỉ, tuy nhiên hiệu trưởng đã khuyên anh hãy theo đuổi ước mơ của mình. Depp chơi cho The Kids và đạt được thành công nho nhỏ tại địa phương.'),
(4, 'Charlize Theron', 'theron1.jpg', 'theron2.jpg', 102965, 'Bắt đầu từ vai diễn không có lời thoại, chỉ xuất hiện 3 giây trong một bộ phim hạng B, Charlize Theron nay đã trở thành nữ thần của Hollywood.', '1975-08-07', '178 cm', 'Mỹ', 'Bắt đầu từ vai diễn không có lời thoại, chỉ xuất hiện 3 giây trong một bộ phim hạng B, Charlize Theron nay đã trở thành nữ thần của Hollywood. Khó có từ nào miêu tả đầy đủ nhan sắc lộng lẫy của Charlize Theron, cô dễ dàng đè bẹp một Kristen Stewart – đương kim nàng thơ của Chanel trong Snow White and the Huntsman, cũng như không hề bị lép vế trước dàn siêu mẫu Victoria’s Secret trong Mad Max: Fury Road dù Furiosa của cô phải cạo đầu và cụt tay. Charlize có thể đằm thắm dịu dàng, lúc mạnh mẽ cá tính, đôi lúc lại điên cuồng và bất cần đời. Có nét đẹp sang trọng và quý phái, nhìn mái tóc vàng và đôi mắt xanh, sẽ chẳng ai nhận ra Charlize là một cô gái quốc tịch Nam Phi với tiếng mẹ đẻ không phải tiếng Anh. Hình thể siêu mẫu, gương mặt xinh đẹp là một điểm cộng to đùng nhưng lạ lùng thay, nó không hề ảnh hưởng chút nào tới khả năng hóa thân vào nhân vật của cô. Charlize lớn lên ở một trang trại ngoại ô thành phố. Phụ nữ quá đẹp thường sẽ bị hạn chế trong việc lựa chọn vai diễn, Charlize thì không. Dường như cô có thể hóa thân thành bất cứ nhân vật nào. Nhìn Charlize Theron rực rỡ của ngày hôm nay, ít ai biết cô từng trải qua một tuổi thơ không hạnh phúc với bi kịch gia đình và những gian nan vất vả ngày đầu khởi nghiệp. Xinh đẹp từ nhỏ, năm 14 tuổi Charlize trở thành người mẫu. Sinh ra ở Benoni, một thành phố thuộc Johannesburg.'),
(5, 'Margot Robbie', 'margot1.jpg', 'margot2.jpg', 12583, 'Dĩ nhiên, có nhan sắc chẳng bao giờ là đủ để đảm bảo cho chiếc vé thành công tại Hollywood, Margot còn phải cố gắng nhiều. Nhưng ta biết, hiện nay nàng xứng đáng được coi là minh tinh hạng A!', '1990-09-02', '168 cm', 'Úc', 'Trái với vẻ đẹp tao nhã quý phái của những sao nữ người Úc tại Hollywood như Isla Fisher, Nicole Kidman hay Naomi Watts, Margot Robbie có vẻ ngoài phồn thực và gợi cảm như một quả bom sex đúng kiểu Mỹ. Nhưng ta biết, hiện nay nàng xứng đáng được coi là minh tinh hạng A! Margot Robbie Dĩ nhiên, có nhan sắc chẳng bao giờ là đủ để đảm bảo cho chiếc vé thành công tại Hollywood, Margot còn phải cố gắng nhiều. Và khó thể phủ nhận mái tóc vàng, thân hình bốc lửa và đôi mắt gợi tình của nàng là chiếc chìa khóa vàng để có được cơ hội ở Hollywood. Nàng dành ba năm thời gian tại Ramsay Street, xuất hiện trong 329 tập Neighbor mà chẳng mấy quan tâm đến việc đánh bóng sự nghiệp. Với nhiều người, đó là một bước khởi đầu thành công cho sự nghiệp truyền hình lâu dài. Sinh ngày 02.07.1990, với hình thể hoàn mỹ và nhan sắc khuynh thành, tuổi 18 của Margot Robbie đã sớm góp mặt trong series truyền hình nổi tiếng của Úc - Neighbor. Thế nhưng, nàng Margot lại không nghĩ thế. Nàng chỉ học, tìm kiếm các mối quan hệ và tìm huấn luyện viên chuyên dụng để biến chất giọng Úc của mình thành giọng Mỹ. Cái nàng muốn to hơn, lớn hơn, ở tít xa bên bờ đại dương. Không chỉ có sắc đẹp, Margot còn có một trí tuệ thông minh và một tâm hồn mạnh mẽ, nàng không vội dùng nhan sắc để lao vào đóng phim vô tội vạ và mong tìm kiếm sự nổi tiếng vốn khó khăn gấp bội với những người không phải công dân Mỹ tại Hollywood. Nàng muốn đến Hollywood.');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `cthinhanh3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`matin`, `tieude`, `noidung`, `hinhanh`, `luotxem`, `luotdanhgia`, `category`, `ctnoidung1`, `ctnoidung2`, `ctnoidung3`, `ctnoidung4`, `cthinhanh1`, `cthinhanh2`, `cthinhanh3`) VALUES
(1, 'Siêu Lừa Gặp Siêu Lầy: Phi Vụ Hoàn Hảo Của Điện Ản', 'Siêu Lừa Gặp Siêu Lầy là một cuốn phim tốt về mọi mặt, nếu mong muốn có những giây phút giải trí thư giãn', '/img/rv1.jpg', 3107, 8, 'binhluan', 'Một kẻ lừa lọc ranh mãnh theo kiểu “cây nhà lá vườn”, một người thì lừa đảo bằng việc lên kế hoạch tỉ mỉ chỉn chu để dụ con mồi vào bẫy. Một bên thì vì mưu sinh nên dẫn đến tham lam, bên còn lại thì lấy danh nghĩa thực thi công lấy lừa xấu giúp tốt. Thử hỏi nếu cả 2 cùng hợp tác trong các phi vụ thì liệu có thành công thu được chiến lợi phẩm rực rỡ?', 'Những gì mà Siêu Lừa Gặp Siêu Lầy đem tới không đơn thuần là những tràng cười sảng khoái, mà còn có sự cao thấp hơn thua khi các bộ não hoạt động tối đa công suất. Đi cùng đấy vẫn có khoảnh khắc lắng đọng về thân phận, cuộc đời và nỗi niềm của từng người. Dẫn đến thông điệp cuối cùng là tình đồng đội, tình bạn bè, sẵn sàng xả thân bên nhau lúc hoạn nạn và cùng chia niềm vui hạnh phúc nhất. \r\nSau khi “lỡ hẹn” với khán giả vào dịp Tết Nguyên Đán, giờ đây phim mới nhất của đạo diễn Võ Thanh Hòa tiếp tục chứng minh tài năng của nhà làm phim dày dặn kinh nghiệm này với thể loại sở trường: hành động pha hài hước.\r\nPhim kể về sự đụng độ bất đắc dĩ giữa Tú (Anh Tú) và Khoa (Mạc Văn Khoa), hai người đều kiếm sống bằng nghề lừa gạt. Sau khi chứng kiến “đẳng cấp” của Tú và đồng bọn thì Khoa tìm cách để xin nhập hội. Từ đây nhóm siêu lừa với mỗi thành viên đều có biệt tài riêng bắt đầu con đường chinh chiến. Ngoại trừ Tú và Khoa làm lãnh đạo thì còn có bé Mã Lai (Ngọc Phước) – một chuyên gia công nghệ đầy bản lĩnh. Còn lại là chú Năm (Trung Lùn) – “người vận chuyển” với biệt tài lái xe siêu hạng. Sau nhiều lần “phạm tội” thành công, cả nhóm tiếp cận một “người bị hại” trông có vẻ đầy tiềm năng, mục đích là gom trọn vố lớn để sống thoải mái về sau. Tuy nhiên có thật sự lúc nào cũng dễ dàng đạt thành công như vậy?\r\nNổi bật nhất khi xem Siêu Lừa Gặp Siêu Lầy chắc chắn là những tình tiết gây cười duyên dáng đầy thông minh. Nếu Mạc Văn Khoa chỉ cần đứng im cũng đủ làm người xem khó lòng”nhăn mặt”, thì đến Ngọc Phước và Trung Lùn chính thức khiến cả rạp chiếu phim náo loạn bởi những chiêu trò quá trời quá đất.', 'Cốt truyện của phim không hẳn là xa lạ khi đã từng có nhiều tác phẩm trước đây cũng khai thác đề tài này, nhưng Võ Thanh Hòa đã khéo léo khi xây dựng được bản sắc riêng cho đứa con tinh thần của mình. Không sa đà vào mưu mô cao siêu khi cố thâm nhập vào giới thượng lưu hào nhoáng, cũng không bám víu vào công nghệ tiên tiến. Tất cả những vụ làm ăn trót lọt của nhóm đều tập trung vào các đối tượng thực tế hơn. \r\nĐấy có thể là các quý bà lắm của nhưng thiếu tình, những đại gia đầy tiền sẵn sàng chi trội để mua khoảnh khắc vui vẻ. Hoặc đôi khi chỉ là dạng vô tình chạm mặt, thấy bở nên cứ tiện tay mà đào! \r\nĐã có vui vẻ thì đồng thời cũng có khoảng lặng. Thì ra cả Tú, Khoa, bé Mã Lai và chú Năm đều là những mảnh đời đáng thương. Trong họ ai cũng có quá khứ đau lòng, nỗi buồn chất chứa nhiều đến mức không còn gì có thể đánh gục ý chí của những người này. Phân đoạn khi các nhân vật chia sẻ về hoàn cảnh cá nhân thực sự gây xúc động. Khi tất cả mở lòng với những nỗi đau từng trải qua, các khúc mắc được gỡ bỏ sẽ giúp cho việc đồng cảm với tâm lý nhân vật trở thành điều dễ dàng.\r\nVì có pha yếu tố hành động nên phim không thiếu những màn rượt đuổi gây cấn. Tuy các trận “giáp lá cà” không nhiều nhưng mỗi cảnh đều được chăm chút kỹ càng. Màn cao trào ở cuối phim cho thấy độ “chịu chơi” của nhà sản xuất khi được thực hiện vô cùng hoành tráng, bối cảnh được dàn dựng công phu đem tới cảm giác “đã” khi trải nghiệm trong phòng chiếu. \r\nTrong lần hợp tác này, Anh Tú cho thấy sự tiến bộ khi hóa thân vào vai Tú. Đâu đó về mặt đài từ có thể hạn chế, nhưng biểu cảm linh hoạt và khả năng biểu đạt tâm lý tròn trịa đã giúp Anh Tú dần thể hiện được khả năng của mình sẽ còn tiến xa hơn. \r\nVề phần Mạc Văn Khoa thì vẫn giữ vững phong độ, anh nhả miếng có chừng mực và làm chủ được nhịp diễn, trong mọi cảnh phim có sự xuất hiện “cây hài” đều nhận được phản hồi tích cực. Ngọc Phước lần này không đơn thuần chỉ là cô bé náo nhiệt ồn ào, mà còn phô diễn được nét đẹp tiềm ẩn khi trổ tài “mỹ nhân kế”. Trung Lùn lại giữ vai trò là người có cái đầu lạnh điều tiết và làm chỗ dựa tinh thần cho cả đội bằng kinh nghiệm dày dặn của mình. Riêng Cát Tường lại đem đến nhiều bất ngờ nhất, vai Khánh của cô chính là điểm nhấn thú vị khiến nhiều người thích thú. ', 'Bên cạnh đó, phim còn quy tụ hàng sao “khủng” trong vai trò cameo như Đại Nghĩa, BB Trần, Mỹ Duyên, Lâm Vỹ Dạ, Hứa Minh Đạt…, mỗi người tuy xuất hiện ít nhưng lại có phần trình diễn chất lượng cao. \r\nCó thể nói Siêu Lừa Gặp Siêu Lầy là một cuốn phim tốt về mọi mặt. Từ kịch bản, tạo hình, diễn xuất, âm nhạc… Nếu mong muốn có những giây phút giải trí thư giãn sau nhiều giờ làm việc căng thẳng thì đây sẽ là lựa chọn hoàn hảo. \r\nPhim đang chiếu tại các hệ thống rạp trên toàn quốc. ', '/img/chitietsieulua1.jpg', '/img/chitietsieulua2.jpg', '/img/chitietsieulua3.jpg'),
(2, 'Ant-Man And The Wasp Quantumania: Cú Lừa Xuất S', 'Ai nghĩ rằng trailer Ant-Man And The Wasp: Quantumania đã tóm tắt bộ phim thì lầm to rồi.', './img/rv2.jpg', 8113, 9, 'binhluan', 'Ai nghĩ rằng trailer Ant-Man And The Wasp: Quantumania đã tóm tắt bộ phim thì lầm to rồi. Một lần nữa, Marvel tặng tất cả chúng ta cú lừa ngoạn mục. Hãy chuẩn bị cho những khoảnh khắc ngỡ ngàng, ngơ ngác và ngã ngửa tại rạp chiếu phim! Sẵn sàng đón nhận sự thật rằng trailer Marvel là thứ lừa đảo nhất trên đời! ', 'Mở đầu Quantumania, Scott Lang cũng khá vui vẻ và hạnh phúc. Thế giới bình yên, Scott viết sách, Hope Van Dyne trở thành nhà hoạt động xã hội, Hank nuôi kiến và tìm cách tiết kiệm 8 đô bằng việc mua cái pizza nhỏ xíu. Bất ổn hiếm hoi là việc Cassie đang vật lộn với tâm tình \"trẻ trâu\" giữa thời biến động sau cú búng tay còn Janet Van Dyne vẫn kiên quyết giữ bí mật về những năm tháng bà sống ở thế giới lượng tử. Và rồi, một sai lầm khiến cả gia đình 5 người bị cuốn vào Quantum Realm. ', 'Thời lượng 125 phút, phim vừa vặn với một tác phẩm siêu anh hùng nhà Marvel. Công chúng kịp khám phá thế giới lượng tử, có hình dung sơ bộ về Kang – trùm phản diện giai đoạn 4 & 5 cũng như bị lấy nước mắt vì sự gắn kết sâu sắc giữa cả nhà Scott Lang. Đề cao tình cảm gia đình nhưng không bi thương cỡ Black Panther: Wakanda Forever, hài hước mà chẳng thành lố như Thor: Love And Thunder. Phim mở đầu hoàn hảo cho giai đoạn 5, sau thời gian dài các tác phẩm thuộc MCU gặp nhiều điều tiếng chê bai. ', 'Paul Rudd là Ant-Man, Ant-Man là Paul Rudd. Marvel Studios lần nữa chứng tỏ họ đã chọn đúng người. Hài hước, vui vẻ nhưng hay suy nghĩ thái quá… Tất cả cảm xúc của gã đàn ông từng 4 lần ngồi tù đều được Paul Rudd thể hiện hoàn hảo. Người cha thương con, gã đàn ông yêu vợ, anh con rể luôn muốn cha vợ kiêm sư phụ ngợi khen… Siêu anh hùng với vóc dáng nhỏ thó luôn chiến đấu tới cùng, giống như thần tượng “I can do it all day.”. Nào phải là tên tuổi lớn như Captain America, Iron Man hay Thor; Ant-Man cũng đã đến mốc 3 phần phim. Scott Lang hoàn thành chặng đường phát triển bản thân từ gã bị Baskin Robbin đuổi việc tới nhân viên xuất sắc nhất thế kỉ. Chưa rõ hãng Marvel có kế hoạch làm phần 4 cho Ant-Man chăng nhưng chắc chắn rằng Paul Rudd vẫn sung sức và Scott Lang hẵng còn hấp dẫn, vô vàn thứ để khai thác! ', '/img/tinant1.jpg', '/img/tinant2.jpg', '/img/tinant3.jpg'),
(3, 'M3GAN: Khi \"Cúp Bế\" Trỗi Dậy Làm Chủ Con Người', 'Vừa hấp dẫn, vừa giải trí, M3GAN hoàn toàn xứng đáng với những lời khen từ đại chúng và các nhà phê bình.', './img/rv3.jpg', 3752, 9, 'binhluan', 'Sau những buổi họp mặt với thịt kho hột vịt, bánh chưng xanh, dưa hấu đỏ, cộng thêm những phong bao lì xì lấy lộc đầu năm thì có lẽ đã đến giờ du xuân giải trí chứ nhỉ! Rạp chiếu phim là lựa chọn không tồi vào mỗi dịp Tết đến. Ưu thế thường sẽ nghiêng về những tác phẩm đến từ nội địa. Chủ đề thường thấy sẽ xoay quanh gia đình, khai thác tiếng cười hài hước hoặc những màn đối đầu tâm lý nghiêm túc. Tuy nhiên, nếu muốn “đổi gió” với điều gì đó mới mẻ hơn thì có thể thử đề tài kinh dị chẳng hạn. M3GAN nhé, vừa hấp dẫn, vừa giải trí, sẽ là lựa chọn không tồi đâu! ', 'Đầu tiên thì M3GAN là gì? Tên, mật danh, hay là ký hiệu? Chính xác mà nói thì M3GAN là cách nói được rút gọn từ Model 3 Generative Android. Dễ hiểu hơn thì nó là một con robot thế hệ mới được lập trình dựa trên công nghệ AI. Rồi, xong phần khái niệm, giờ thì tìm hiểu xem M3GAN từ đâu mà có! Cả nhà của bé Cady đang trên đường đi trượt tuyết thì gặp phải tai nạn thảm khốc. Cady bị chấn thương nặng nhưng vẫn giữ được mạng sống, còn bố mẹ của em thì không may mắn như thế. Sau khi xuất viện, Cady đến sống với người dì Gemma – là một kỹ sư chế tạo robot đại tài đang làm việc cho công ty đồ chơi Funki. ', 'Trong lần tình cờ phát hiện Cady thích thú với một trong những phát minh của mình, Gemma đã nảy ra ý tưởng tạo nên loại robot có thể vừa làm bạn với trẻ em, vừa chăm nom chúng cẩn thận. Bằng công nghệ trí tuệ nhân tạo, Gemma cho ra đời M3GAN với kích cỡ tương đương với một bé gái. Tất nhiên M3GAN vẫn đang ở giai đoạn thử nghiệm, nhưng với những điều tích cực nó mang đến cho Cady cũng đủ thuyết phục ban lãnh đạo ở Funki. Có điều, việc robot thông minh quá mức liệu có an toàn, khi chúng có cơ hội ngày càng hoàn thiện và vượt trội hơn con người trong tương lai. M3GAN bắt đầu có biểu hiện ngoài vòng kiểm soát! ', 'Khác với Chucky hay Annabelle, M3GAN không phải là vật chủ chứa đựng linh hồn của thực thể tà ác nào đó, nó đại diện cho chính nó. Cả cơ thể và bộ não của M3GAN được tạo nên từ vật liệu hữu cơ, nhưng sức mạnh của nó đến từ những thứ hư vô được xử lý bởi AI. Chỉ bằng internet, bằng các dòng code chưa thông qua kiểm chứng, M3GAN tự nâng cấp chính mình bằng thông tin mà nó thu thập được. Từ đấy tư duy M3GAN hình thành dựa theo các hàm tính xác suất và bằng chính sự phân tích thói quen – tâm trạng của con người. Nói cách khác, nó trở nên nguy hiểm hơn khi “trí khôn” ngày một phát triển, cộng vào đấy là tiếp thu cả những thói hư – tật xấu của con người, tất cả giúp M3GAN khó đối phó hơn. Nhất là khi bộ xử lý của món “đồ chơi” thế hệ mới còn có khả năng “đồng hóa” các thiết bị smarthome, đáng ngại hơn là M3GAN sẽ sẵn sàng thao túng tâm lý con người – tức chủ nhân của nó.', '/img/tinmegan1.jpg', '/img/tinmegan2.jpg', '/img/tinmegan3.jpg'),
(4, 'Chị Chị Em Em 2: Ngọc Trinh Hoàn Hảo, Minh Hă', 'Đạo diễn Vũ Ngọc Đãng thành công vừa làm nổi bật Ngọc Trinh bốc lửa vừa tôn được nét đẹp đằm thắm của Minh Hằng.', './img/rv4.jpg', 10023, 9, 'binhluan', 'Những cuộc chiến đầy mưu ma chước quỷ giữa phái đẹp luôn là đề tài hấp dẫn, được khán giả điện ảnh lẫn truyền hình yêu thích.\r\n\r\nCuối năm 2019, Chị Chị Em Em với Thanh Hằng và Chi Pu đã thu 71 tỷ tại phòng vé. Thừa thắng xông lên, nhà sản xuất tiếp tục ra mắt Chị Chị Em Em 2 “xuyên không” về Sài Gòn thế kỉ 20. Lần này là cuộc đối đầu giữa hai mỹ nhân có thật nổi tiếng đình đám tại hòn ngọc Viễn Đông năm xưa – Ba Trà và Tư Nhị.\r\n', 'Lấy cảm hứng từ hai giai nhân, Chị Chị Em Em 2 phá cách nhiều hơn chứ không hướng tới một bộ phim chiếu rạp chân thật đúng lịch sử. Đầu phim, Ba Trà đang là đệ nhất mỹ nhân Sài Thành, tiền bạc xài phủ phê, bao nhiêu công tử giàu sang vây quanh. Cùng lúc, Tư Nhị là cô gái điếm “biết khi nào mới được làm người”. Thông minh, khéo léo, táo bạo và to gan; Tư Nhị lên kế hoạch giăng bẫy đưa Ba Trà vào tròng. Tư Nhị muốn Ba Trà thấy rằng ngôi vị đệ nhất mỹ nhân mà bao lâu nay Ba Trà tự hào, kẻ như cô cũng có thể vươn tới.\r\n', 'Rốt cuộc Tư Nhị đã lừa Ba Trà như thế nào? Ba Trà trả thù ra sao?\r\n\r\nBỏ qua tính lịch sử, đoàn làm phim Chị Chị Em Em 2 thỏa sức sáng tạo. Bối cảnh Sài Gòn xưa được dựng lên hết sức đẹp đẽ và tỉ mỉ. Từ ô tô cổ, xe ngựa, đến phục trang diễn viên quần chúng cũng tuyển lựa kĩ càng. Ngược lại, trang phục hai nữ chính Minh Hằng và Ngọc Trinh phá cách, khác hẳn thời đại. Nào chỉ đơn thuần là những bộ đầm sang trọng hay áo dài đoan trang, quần là áo lụa trên phim chẳng theo quy chuẩn thời đại nào. Chỉ có một tiêu chuẩn: Đó là làm nổi bật hết mức vẻ đẹp Minh Hằng – Ngọc Trinh. \r\n', 'So với phần 1, màu phim tươi sáng hơn hẳn. Đại cảnh ít nhưng đầu tư chỉn chu, chăm chút từng chi tiết. Ngay cả khi Tư Nhị ở tại nhà chứa, góc quay vẫn rất linh hoạt, không khiến khán giả cảm thấy nhàm chán. Vài cảnh dường như lấy cảm hứng từ Malèna do ngôi sao điện ảnh lừng danh nước Ý  Monica Bellucci đóng chính. Nhân vật chính Malèna Scordia cũng là một cô gái điếm. Xuất sắc nhất có lẽ là trường đoạn Minh Hằng và Ngọc Trinh khoe sắc giữa hồ nước. Trang phục đối lập tạo hiệu ứng thị giác cực mạnh, nhạc nền ấn tượng, cách lồng ghép hình ảnh hai chú cá cùng diễn xuất tuyệt vời giúp khoảnh khắc ấy trở nên hoàn hảo. \r\n', '/img/tinchichi1.jpg', '/img/tinchichi2.jpg', '/img/tinchichi3.jpg'),
(5, 'Oscar 2023: Những Chuyện Hậu Trường Đầy Bất ', 'Những điều thú vị đằng sau sự kiện điện ảnh lớn nhất năm! Hãy cùng xem ai sẽ là người chiến thắng!', './img/blog1.jpg', 3255, 0, 'blog', 'Những điều thú vị đằng sau sự kiện điện ảnh lớn nhất năm! Hãy cùng xem ai sẽ là người chiến thắng!', '1. All Quiet On The Western Front đã thắng Oscar rồi! \r\nGần cả thế kỉ trước, năm 1930, chuyển thể từ tiểu thuyết của Erich Maria Remargue từng thắng Oscar. \r\nPhiên bản gần nhất do Netflix sản xuất được cả khán giả lẫn giới phê bình tán dương nồng nhiệt.  \r\nMới có hai phim nhận đề cử khi chuyển thể chung tác phẩm là Mutiny On The Bounty (1935 & 1962) và West Side Story (1961 & 2021). \r\n2. Có lẽ nhân vật Oscar nổi tiếng nhất Anh quốc lại là một con chuột chũi! \r\nNăm nay, đâu là đề cử Oscar được biết đến rộng rãi nhất tại xứ sở sương mù? Hẳn bạn nghĩ là Top Gun: Maverick hoặc Avatar: The Way Of Water – phá đảo phòng vé toàn cầu. Chưa chắc đâu nha. Đối đầu cùng hai thương hiệu này là một trong những phim hoạt hình ngắn xuất sắc nhất mọi thời đại. The Boy, The Mole, The Fox And The Horse có tận 8,7 triệu khán giả. Tác phẩm chuyển thể từ quyển sách bán chạy của Charlie Mackesy \r\n3. Thời lượng trung bình các tác phẩm được đề cử Phim xuất sắc nhất là 144 phút. \r\nNgắn nhất là Women Talking (104 phút), dài nhất là Avatar: The Way Of Water (192 phút). \r\n4. Lần hiếm hoi đồng đạo diễn vào danh sách đề cử \r\nDaniel Kwan và Daniel Scheinert cùng chỉ đạo phim hay Everything Everywhere All At Once và được Viện Hàn Lâm lựa chọn. Đây là lần thứ 5 một đôi đồng đạo diễn nhận vinh dự này. \r\nCác trường hợp trước đây là Robert Wise và Jerome Robbins (West Side Story), Warren Beatty và Buck Henry (Heaven Can Wait), Joel và Ethan Coen / anh em nhà Coen (No Country for Old Men và True Grit).\r\n5. Judd Hirsch phá kỉ lục khoảng cách giữa các lần đề cử. \r\nNgôi sao The Fabelmans được đề cử Nam phụ xuất sắc nhất vào 01.2023. Cách 41 năm và 341 ngày từ lần đầu ông nhận đề cử trong Ordinary People (1980). \r\nĐây cũng là năm chứng kiến sự trở lại sau thời gian rất rất dài. Đó là Todd Field với Tár (16 năm), Avatar: The Way Of Water (13 năm) và Top Gun: Maverick (36 năm). \r\n6.  Cả hai ứng viên nặng kí nhất cho Nữ chính xuất sắc nhất – nhân vật vốn là nam. ', 'Vai chính phiêu lưu qua đa dòng vũ trụ của Dương Tử Quỳnh vốn thuộc về Thành Long. Khi ngôi sao võ thuật từ chối, mọi thứ được sửa lại. \r\nBan đầu, nhạc trưởng Lydia Tár của Cate Blanchett cũng là nam. \r\n7. Darren Aronofsky - đạo diễn The Whale có lẽ là kẻ bí mật mê mẩn dân ca Anh Quốc. \r\nHai tác phẩm gần đây Darren Aronofsky thực hiện mang tên Noah và The Whale. Noah And The Whale là tên gọi ban nhạc Anh quốc thành lập năm 2006. \r\n8. Women Talking sở hữu hai ngôi sao từng “có hình xăm rồng” \r\nTrước lúc diễn chung ở tác phẩm được đề cử Phim xuất sắc của Sarah Polley, Rooney Mara và Claire Foy đã diễn một vai từ những chuyển thể loạt truyện The Girl With The Dragon Tattoo. \r\nNăm 2011, Rooney Mara đóng Lisbeth Salander trong bản phim Anh cuốn tiểu thuyết nổi tiếng do Stieg Larsson chấp bút. \r\n7 năm sau, Foy diễn vai này ở The Girl In The Spiders Web – tác phẩm thứ 4 thuộc series. Sách do David Lagercrantz viết sau khi Larsson qua đời. \r\n9. Angela Bassett là diễn viên đầu tiên được đề cử nhờ đóng phim Marvel ', 'Nhờ vai diễn nữ hoàng Ramonda (Black Panther: Wakanda Forever), Angela Basset nhận đề cử Nữ phụ xuất sắc nhất. Tuy nhiên, Kerry Condon (The Banshees of Inisherin) là người thắng hạng mục này tại BAFTA, Jamie Lee Curtis (Everything Everywhere All At Once) thì ẵm giải SAG, chiến thắng đầu tiên cho hãng Marvel tại hạng mục diễn xuất? Có vẻ còn xa xa lắm! \r\n10. Chưa có phim nào ăn ba giải về diễn xuất kể từ Network (1976) Tuy nhiên, năm nay, Everything Everywhere All At Once có thể sẽ phá vỡ thành tích này. Cả Dương Tử Quỳnh, Jamie Lee Curtis và Quan Kế Huy đều thắng SAG. \r\nChưa kể, Everything Everywhere All At Once đang nhân đôi cơ hội thắng Nữ phụ xuất sắc nhất tại Oscar. Đừng quên Stephanie Hsu cũng được đề cử. \r\n11. Có hai phim nhận bốn đề cử diễn xuất! Everything Everywhere All At Once và The Banshees Of Inisherin \"đánh chiếm\" tám vị trí trong hai chục suất đề cử diễn xuất. \r\n45 năm rồi Oscar mới có sự kiện này. Lần cuối cùng hai phim ẵm bốn đề cử hạng mục diễn xuất là năm 1978 - Julia và The Turning Point 12. Zoe Saldana là diễn viên đầu tiên và duy nhất cho đến nay xuất hiện ở bốn phim khác nhau cùng phá 4 tỷ $ tại phòng vé toàn cầu. Trước khi tác phẩm được đề cử Oscar – Avatar: The Way Of Water đánh chiếm các rạp chiếu phim, nữ diễn viên đã từng tận hưởng niềm vui chiến thắng tương tự với Avatar, Avengers: Infinity War và Avengers: Endgame \r\n13. Đây là năm của các chú lừa! \r\nCác chú xuất hiện trong The Banshees Of Inisherin, Triangle Of Sadness và đặc biệt là EO \r\nThế nhưng, Viện Hàn Lâm đã tàn nhẫn loại bỏ sáu chú lừa đáng yêu Rocco, Marietta, Tako, Hola, Mela và Ettore khỏi đề cử Nam chính xuất sắc nhất!   \r\n14. Nhạc sĩ Diane Warren lại nhận đề cử với bài hát Applause (Tell It Like A Woman). \r\nKhông may, một trong những đối thủ của bà là Hold My Hand do Lady Gaga trình bày. \r\nWarren và Applause có cơ hội chăng? Thật khó nói. Chỉ biết rằng vị nữ nhạc sĩ huyền thoại này đã được đề cử tới lần thứ 14 và bà vẫn chưa thắng về tượng vàng nào! \r\n15. Tất cả đề cử Nữ chính xuất sắc nhất của Cate Blanchett đều từ phim lấy tên nhân vật làm tên tác phẩm. \r\nNgoài Lydia Tár (Tár), Blanchett còn có Carol (Carol), Jasmine (Blue Jasmine), Elizabeth (Elizabeth & Elizabeth: The Golden Age). Blanchett là linh hồn Tár, góp mặt hầu hết các cảnh quay. Về nữ, chỉ có Viviene Leigh (Gone With The Wind) xuất hiện nhiều hơn.    \r\n16. Ở tuổi 90, John William là người cao tuổi nhất từng được đề cử Oscar. \r\nNhà soạn nhạc siêu phẩm The Fabelman đã vượt qua đạo diễn Agnès Varda – 89 tuổi khi lọt danh sách đề cử năm 2018. William đã nhận 53 đề cử Oscar trong suốt sự nghiệp. Ông là người sở hữu nhiều đề cử nhất còn sống, chỉ thua Walt Disney – 59 đề cử. \r\nLược dịch theo BBC ', '/img/chitietoscar1.jpeg', '/img/chitietoscar2.jpg', '/img/chitietoscar3.jpg'),
(6, 'Bóc Trứng Phục Sinh Ant-Man And The Wasp: Quantuma', 'Những bộ phim thuộc vũ trụ điện ảnh Marvel luôn “chôn” rất nhiều Trứng Phục Sinh để các fan trung thành khám phá.', './img/blog2.jpg', 967, 0, 'blog', 'Như mọi khi, những bộ phim thuộc vũ trụ điện ảnh Marvel luôn “chôn” rất nhiều Trứng Phục Sinh để các fan trung thành khám phá. Là tác phẩm phim chiếu rạp thứ 3 về Người Kiến, Ant-Man And The Wasp: Quantumania có cả tá Easter Egg. Các Stars đã đào được bao nhiêu “quả trứng” rồi? Hãy cùng khám phá nhé.\r\n', 'Scott Lang (Paul Rudd) xuất bản Look Out For The Little Guy. Anh mê tự truyện đến mức nghe luôn trên xe. Scott còn nhắc tới kỉ niệm cùng nhóm Avengers. Khi thử nghiệm du hành thời gian mà không có sự giúp đỡ của Tony Stark, anh biến thành đứa bé.\r\n\r\nQuyển sách đem lại cho Scott sự nổi tiếng nho nhỏ, dù rằng anh vẫn bị nhầm là Spider-Man. Đặc biệt, anh chàng có một độc giả hết sức thân quen – cha vợ kiêm người thầy Hank Pym (Michael Douglas).\r\n', 'Thông minh, nhiệt huyết, tài năng… Hope Van Dyne (Evangeline Lilly) chẳng ra sách nhưng còn nổi tiếng hơn Scott nhiều. Cô con gái yêu của Hank Pym và Janet Van Dyne (Michelle Pfeiffer) bận rộn với những kế hoạch giúp đỡ thế giới. Tình cảm giữa Hope và Scott ngày càng bền chặt.\r\n', 'Tình yêu Scott dành cho thần tượng Steve Rogers vẫn nồng cháy như thuở ban đầu. Captain America vẫn là niềm cảm hứng vô tận. Chẳng có gì ngạc nhiên khi anh mạo hiểm tất cả để tham gia vào trận chiến sân bay (Captain America: Civil War) để giúp Steve giải cứu cậu bạn Bucky khỏi phe Iron Man.', '/img/blogant1.jpg', '/img/blogant2.jpg', '/img/blogant3.jpg'),
(7, 'Fast X: Vin Diesel Rủ Dàn Siêu Anh Hùng Đua Xe?', 'Fast X – phần mở đầu cho “cuộc đua cuối” của đại gia đình Toretto vừa tung ra trailer siêu hấp dẫn vào 10.02 vừa qua.', './img/blog3.jpg', 158, 0, 'blog', 'Đầu tiên, trailer xuất hiện khá nhiều nhân vật mới. Đó là bà nội Dom, kẻ thù mới và bạn mới.\r\n\r\nDom Abuela Toretto (Rita Moreno) mở đầu đoạn giới thiệu bằng bài phát biểu “Bà biết rằng đường đời đầy chông gai. Tuy vậy, cháu vẫn xây dựng được gia đình hoành tráng này.” Đồng nghĩa với việc gia đình ngày càng lớn, Vin Diesel cần phải trả lương cho nhiều sao hơn, đùa thôi, Dominic Toretto có nhiều nỗi lo hơn.\r\n', 'Kẻ phản diện phần này là Dante (Jason Momoa) – bóng ma từ quá khứ. Hãy nhớ về Fast Five, thuở Fast & Furious vẫn là một thương hiệu đua xe đúng nghĩa, khi Gisele (Gal Gadot) còn sống, những người bạn thân quen nhận lời kêu gọi của Dom đến Rio de Janeiro để đánh cướp Reyes (Joaquim de Almeida) – gã doanh nhân thao túng cả thành phố. Cả bọn thành công cướp đi chiếc két sắt chứa 100 triệu đô, Reyes thì mất mạng. Gia đình Dante bị cướp đi, vì vậy, hắn tìm nhà Toretto đòi nợ.', 'Dante xuất hiện với ngoại hình đối lập Dom. Đạo diễn Louis Leterrier lí giải về nhân vật này: “Hắn học hỏi Dom nhiều năm, biến bản thân thành kẻ anti-Dom. Dom là dương, hắn là âm. Dom mặc đồ đơn sắc, Dante diện quần áo sặc sỡ. Dom cạo đầu, Dante để tóc dài và sơn móng tay. Dom lái Dodge, hắn lái Chevy.”\r\n', 'Tuy nhiên, có một chi tiết đáng chú ý là Reyes bị viên đặc vụ  FBI Hobbs (Dwayne Johnson) kết liễu. Xét việc nhà Toretto nào phải là kẻ trực tiếp dẫn đến cái chết, nhiều khả năng, Hobbs đã bị Dante khử trước. Cũng giống như cách Deckard Shaw (Jason Statham) xuất hiện, giết Han (Sung Kang) và gửi lời đe dọa cả nhà Torreto ở Fast 7. Đây là giả thiết dễ xảy ra nhất bởi Dwayne Johnson từ chối lời mời trở lại Fast & Furious do những bất đồng cùng nam chính kiêm nhà sản xuất Vin Diesel.\r\n', '/img/blogfast1.jpg', '/img/blogfast2.jpg', '/img/blogfast3.jpg'),
(8, 'Luật Điện Ảnh Mới Có Gì Mới?', 'So với Luật Điện ảnh 2006 trước đây, Luật Điện ảnh 2022 (có hiệu lực từ ngày 01.01.2023) thay đổi một số điểm', './img/blog4.jpg', 488, 0, 'blog', 'Phân loại phim:\r\n\r\nLoại K: Phim được phổ biến đến người xem dưới 13 tuổi với điều kiện xem cùng cha, mẹ hoặc người giám hộ.\r\nLoại C: Phim không được phép phổ biến.', 'Chiếu phim Việt Nam:\r\n\r\nPhim Việt Nam phải được chiếu trong hệ thống rạp chiếu phim, đặc biệt vào các đợt phim kỷ niệm các ngày lễ lớn của đất nước, phục vụ nhiệm vụ chính trị, xã hội, đối ngoại… theo yêu cầu của cơ quan Nhà nước có thẩm quyền.\r\nĐược ưu tiên chiếu vào khung tời gian từ 18 đến 22 giờ.\r\nTỷ lệ suất chiếu phim Việt Nam: Từ ngày 01.01.2023 đến hết ngày 31.12.2025: ít nhất 15% tổng số suất chiếu trong năm. Từ ngày 01.01.2026: ít nhất 20% tổng số suất chiếu trong năm.', 'Giờ chiếu phim:\r\n\r\nTrẻ em dưới 13 tuổi: Kết thúc trước 22 giờ.\r\nTrẻ em dưới 16 tuổi: Kết thúc trước 23 giờ.\r\n', 'Ưu đãi giá vé:\r\n\r\nNgười cao tuổi (đủ 60 tuổi trở lên), người có công với cách mạng, trẻ em (dưới 16 tuổi), người có hoàn cảnh đặc biệt khó khăn và các đối tượng khác theo quy định sẽ được giảm ít nhất 20% giá vé.\r\nNgười khuyết tật đặc biệt nặng được miễn giá vé, người khuyết tật nặng được giảm tối thiểu 50% giá vé.\r\n', NULL, NULL, NULL);

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
  `tinh` varchar(50) DEFAULT NULL,
  `trangthai` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`userid`, `hoten`, `ngaysinh`, `gioitinh`, `email`, `sodienthoai`, `matkhau`, `role`, `diachi`, `tinh`, `trangthai`) VALUES
(1, 'admin', NULL, NULL, NULL, 'admin', '123456', 'admin', NULL, NULL, NULL),
(2, 'Huỳnh Khánh Duy', '28/2/2002', 'Nam', 'khanhtran@gmail.com', '0123456789', '123456', 'khach', '19 Nguyễn Hữu Thọ', 'Bình Phước', NULL),
(3, 'Nguyễn Tấn Lực', '28/07/2002', 'Nam', 'deeekento@gmail.com', '0364646464', '123456789', 'khach', '19 Nguyễn Thị Thập', 'TP. Hồ Chí Minh', NULL),
(4, 'Nguyễn Khương Việt Tiến', '28/2/2002', 'Nam', 'khuongviettien@gmail.com', '0362582569', '987654321', 'khach', '06 Lê Thị Riêng', 'TP. Hồ Chí Minh', NULL),
(5, 'Vũ Lương Ngọc Ban', '13/11/2002', 'Nam', 'banluong@gmail.com', '0123789456', '123456789', 'khach', 'Cây Khế Hai Bà Trưng', 'Thừa Thiên Huế', NULL),
(6, 'Nguyễn Tiến Đạt', '11/02/2002', 'Nữ', 'menot123@gmail.com', '0334353634', '123456789', 'khach', 'Nguyễn Thị Thập', 'Long An', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ve`
--

CREATE TABLE `ve` (
  `mave` char(30) NOT NULL,
  `maphim` char(30) NOT NULL,
  `giave` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  MODIFY `madaodien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `dienvien`
--
ALTER TABLE `dienvien`
  MODIFY `madienvien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
