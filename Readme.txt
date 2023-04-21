Cấu trúc thư mục gồm trong bài nộp của nhóm em gồm:
+ File báo cáo: gồm 2 bản docx và pdf
+ Bảng tự đánh giá
+ Bản khảo sát yêu cầu
+ Thư mục source: Thư mục gốc của trang web
+ File database.sql (MySQL PhpMyadmin): cơ sở dữ liệu của đề tài
+ Thư mục images: Chứa hình ảnh các Usecase tổng quát, Tổng thể chức năng hệ thống, Mô Hình Quan Hệ, ERD,...
+ File Readme.txt: File tóm tắt cấu trúc của bài nộp và nêu các bước để thực hiện đề tài

Điều kiện tiên quyết để chạy được project, máy tính cần phải cài:
+ XAMPP
+ Visual Studio Code

Các bước để chạy chương trình đặt vé xem phim:
+ B1: Mở XAMPP và bật Apache cùng MySQL
+ B2: Mở trang Admin của MySQL và import file database.sql vào cơ sở dữ liệu (khi import thành công cơ sở dữ liệu
mới sẽ tự động được tạo với tên l2dbt_cinema)
+ B3: Mở terminal của thư mục source lên
+ B4: Chạy lệnh npm install để cài đặt tất cả các module cần thiết của chương trình
+ B5: Chạy chương trình bằng lệnh: npm start hoặc node index.js
+ B6: Mở trình duyệt web và nhập vào url: localhost:3000 để bắt đầu sử dụng trang web đặt vé xem phim online

Các tài khoản có thể sử dụng để đăng nhập vào trang web:
+ Tài khoản admin: admin - 123456
+ Tài khoản local: 0123456789 - 123456

Người dùng cũng có thể đăng ký tài khoản khác bằng cách sử dụng chức năng đăng ký tài khoản của chương trình, 
hoặc có thể đăng nhập bằng các tài khoản khác trong trang quản lý cơ sở dữ liệu Phpmyadmin.