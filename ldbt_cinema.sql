################ USER ################
DROP TABLE IF EXISTS USER;
CREATE TABLE USER (
    userid int NOT NULL AUTO_INCREMENT,
    hoten VARCHAR(50) NOT NULL,
    namsinh int,
    gioitinh VARCHAR(10),
    email CHAR(50),
    sodienthoai CHAR(12) NOT NULL,
    matkhau CHAR(50) NOT NULL,
    role VARCHAR(10),
    PRIMARY KEY (userid)
);

################ PHIM ################
DROP TABLE IF EXISTS PHIM;
CREATE TABLE PHIM (
    maphim CHAR(30) PRIMARY KEY,
    tenphim VARCHAR(50),
    theloai VARCHAR(50),
    daodien VARCHAR(50),
    diemdanhgia CHAR(10),
    thoiluong VARCHAR(50),
    ngaykhoichieu DATE,
    mota TEXT,
    poster CHAR(200),
    dotuoi int
);

################ VE ################
DROP TABLE IF EXISTS VE;
CREATE TABLE VE (
    mave CHAR(30) PRIMARY KEY,
    maphim CHAR(30) NOT NULL,
    giave int,
    FOREIGN KEY (maphim) REFERENCES PHIM(maphim)
);

################ PHONG ################
DROP TABLE IF EXISTS PHONG;
CREATE TABLE PHONG (
    maphong CHAR(30) PRIMARY KEY,
    tenphong VARCHAR(30),
    soluongghe int
);

################ SUAT CHIEU ################
DROP TABLE IF EXISTS SUATCHIEU;
CREATE TABLE SUATCHIEU (
    masuatchieu CHAR(30) PRIMARY KEY,
    maphim CHAR(30) NOT NULL,
    maphong CHAR(30) NOT NULL,
    ngaychieu DATE,
    giochieu TIME,
    giave int,
    FOREIGN KEY (maphim) REFERENCES PHIM(maphim),
    FOREIGN KEY (maphong) REFERENCES PHONG(maphong)
);

################ COMBO ################
DROP TABLE IF EXISTS COMBO;
CREATE TABLE COMBO (
    macombo CHAR(30) PRIMARY KEY,
    giatien int,
    chitiet VARCHAR(50)
);

################ GHE ################
DROP TABLE IF EXISTS GHE;
CREATE TABLE GHE (
    maghe CHAR(30) PRIMARY KEY,
    maphong CHAR(30) NOT NULL,
    loaighe VARCHAR(30),
    trangthai VARCHAR(30),
    FOREIGN KEY (maphong) REFERENCES PHONG (maphong)
);


################ KHUYEN MAI ################
DROP TABLE IF EXISTS KHUYENMAI;
CREATE TABLE KHUYENMAI (
    makhuyenmai CHAR(30) PRIMARY KEY,
    chitiet TEXT,
    tenkhuyenmai VARCHAR(50)
);

################ HOA DON ################
DROP TABLE IF EXISTS HOADON;
CREATE TABLE HOADON (
    mahd CHAR(30) PRIMARY KEY,
    userid int NOT NULL,
    mave CHAR(30) NOT NULL,
    macombo CHAR(30) NOT NULL,
    makhuyenmai CHAR(30) NOT NULL,
    masuatchieu CHAR(30) NOT NULL,
    maghe CHAR(30) NOT NULL,
    soluong int,
    thanhtien int,
    FOREIGN KEY (userid) REFERENCES USER(userid),
    FOREIGN KEY (mave) REFERENCES VE(mave),
    FOREIGN KEY (macombo) REFERENCES COMBO(macombo),
    FOREIGN KEY (makhuyenmai) REFERENCES KHUYENMAI(makhuyenmai),
    FOREIGN KEY (masuatchieu) REFERENCES SUATCHIEU(masuatchieu),
    FOREIGN KEY (maghe) REFERENCES GHE(maghe)
);

################ TIN TUC ################
DROP TABLE IF EXISTS TINTUC;
CREATE TABLE TINTUC (
    matin CHAR(30) PRIMARY KEY,
    tieude VARCHAR(50),
    noidung TEXT,
    hinhanh CHAR(200),
    luotxem int,
    luotdanhgia int
);

################ PHAN HOI ################
DROP TABLE IF EXISTS PHANHOI;
CREATE TABLE PHANHOI (
    idphanhoi CHAR(30) PRIMARY KEY,
    hovaten VARCHAR(50),
    email CHAR(50),
    sodienthoai CHAR(12),
    noidung TEXT
);