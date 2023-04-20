const dbClient = require('./db_client');

async function manageAccounts(username, phone, password) {
    const record = await dbClient.query(
        `INSERT INTO user(sodienthoai, matkhau, hoten) VALUES (?,?,?) `, [phone, password, username]
    );
    return record.insertId;
};

async function getAccounts() {
    const record = await dbClient.query(
        `SELECT * FROM USER where role != 'admin'`
    );
    return record;
};

async function handleDelete(id) {
    const record = await dbClient.query(
        `DELETE FROM USER WHERE userid = ?`, [id]
    );
    return record.affectedRows;
};

async function getInfo(id) {
    const record = await dbClient.query(
        `Select * from user where userid = ?`, [id]
    );
    return record;
};

async function updateInfo(id, phone, pass) {
    var record = null
    if (phone && pass == undefined) {
        record = await dbClient.query(
            `update user set sodienthoai = ? where userid = ?`, [phone, id]
        );
    } else if (pass && phone == undefined) {
        record = await dbClient.query(
            `update user set matkhau = ? where userid = ?`, [pass, id]
        );
    } else {
        record = await dbClient.query(
            `update user set sodienthoai = ?,  matkhau = ? where userid = ?`, [phone, pass, id]
        );
    }
    return record.affectedRows;
};

async function getResponsesAPI() {
    const record = await dbClient.query(
        `Select * from hotro `
    );
    return record;
};


async function getSuatChieuAPI() {
    const record = await dbClient.query(
        `Select * from suatchieu where trangthai is NULL`
    );
    return record;
};

async function getMaPhimAPI() {
    const record = await dbClient.query(
        `Select maphim from phim`
    );
    return record
}
async function getSale(id) {
    const record = await dbClient.query(
        `Select * from khuyenmai where makhuyenmai = ?`, [id]
    );
    return record;
};

async function addMaPhim(obj) {
    const record = await dbClient.query(
        `Insert into suatchieu (masuatchieu, maphim, maphong, ngaychieu, giochieu, giave) values (?,?,?,?,?,?)`,
        [obj.masuatchieu, obj.maphim, obj.maphong, obj.ngaychieu, obj.giochieu, obj.giave]
    )
    return record.affectedRows
}
async function updateSale(id, tenkhuyenmai, chitiet, giamgia) {
    var record = null
    record = await dbClient.query(
        `update khuyenmai set tenkhuyenmai = ?,  chitiet = ?,  giamgia = ? where makhuyenmai = ?`, [tenkhuyenmai, chitiet, giamgia, id]
    );
    return record.affectedRows;
};

async function handleDeleteSale(id) {
    const record = await dbClient.query(
        `DELETE FROM khuyenmai WHERE makhuyenmai = ?`, [id]
    );
    return record.affectedRows;
};


async function hideMaPhim(code) { 
    const record = await dbClient.query(
        `update suatchieu set trangthai = ? where masuatchieu = ?`, ['an', code]
    );
    return record.changedRows;
};

async function getPhimAPI() {
    const record = await dbClient.query(
        `Select * from phim`
    );
    return record;
};

async function getSuatChieu(tenphim) {
    const record = await dbClient.query(
        `Select * from suatchieu where maphim = ? && trangthai is NULL`, [tenphim]
    );
    return record;
};

async function addSale(tenkhuyenmai, chitiet, giamgia) {
    var record = null

    record = await dbClient.query(
        `INSERT INTO khuyenmai(tenkhuyenmai, chitiet, giamgia) VALUES (?,?,?) `, [tenkhuyenmai, chitiet, giamgia]
    );

    return record.affectedRows;
};

async function getSales() {
    const record = await dbClient.query(
        `SELECT * FROM khuyenmai`
    );
    return record;
};
async function getFilmsInfo(maphim) {
    const record = await dbClient.query(
        `Select * from phim where maphim = ?`, [maphim]
    );
    return record;
};
async function updateFilms(maphim, tenphim, theloai, dienvien, quocgia, daodien, diemdanhgia, thoiluong, ngaykhoichieu, mota, poster, hinhngang, dotuoi, trailer, trangthai) {
    var record = await dbClient.query(
        `update phim set tenphim = ?,  theloai = ?,  dienvien = ?,  quocgia = ?,  daodien = ?,  diemdanhgia = ?,  thoiluong = ?,  ngaykhoichieu = ?,  mota = ?,  poster = ?,  hinhngang = ?,  dotuoi = ?,  trailer = ?,  trangthai = ? where maphim = ?`, [tenphim, theloai, dienvien, quocgia, daodien, diemdanhgia, thoiluong, ngaykhoichieu, mota, poster, hinhngang, dotuoi, trailer, trangthai, maphim]
    );
    return record.affectedRows;
};
async function addFilms(maphim, tenphim, theloai, dienvien, quocgia, daodien, diemdanhgia, thoiluong, ngaykhoichieu, mota, poster, hinhngang, dotuoi, trailer, trangthai) {
    var record = await dbClient.query(
        `INSERT INTO phim(maphim, tenphim, theloai,dienvien,quocgia,daodien,diemdanhgia,thoiluong,ngaykhoichieu,mota,poster,hinhngang,dotuoi,trailer,trangthai) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)`, [maphim, tenphim, theloai, dienvien, quocgia, daodien, diemdanhgia, thoiluong, ngaykhoichieu, mota, poster, hinhngang, dotuoi, trailer, trangthai]
    );
    return record.insertId;
};

async function getFilmsAPI() {
    const record = await dbClient.query(
        `SELECT * FROM phim WHERE trangthai = 'dangchieu' OR trangthai = 'sapchieu'`
    );
    return record;
};
async function hideFilms(maphim) { 
    const record = await dbClient.query(
        `update phim set trangthai = 'khongchieu' where maphim = ?`, [maphim]
    );
    return record.changedRows;
};

module.exports = {
    manageAccounts, getAccounts, handleDelete, getInfo, updateInfo, getResponsesAPI, getSuatChieuAPI, getMaPhimAPI,
    addMaPhim, hideMaPhim, getPhimAPI, getSuatChieu, getSale, updateSale, handleDeleteSale, addSale, getSales, getFilmsAPI, updateFilms, getFilmsInfo, addFilms, hideFilms
}


