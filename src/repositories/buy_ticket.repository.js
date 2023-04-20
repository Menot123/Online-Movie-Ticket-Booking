const dbClient = require('./db_client');

async function getCalender(maphim) {
    const record = await dbClient.query(
        `SELECT * FROM suatchieu WHERE maphim = '${maphim}' `
    );
    return record;
};
async function getSuatChieu(masuatchieu) {
    const record = await dbClient.query(
        `SELECT * FROM suatchieu WHERE masuatchieu = '${masuatchieu}' `
    );
    return record;
};

async function getComboList() {
    const record = await dbClient.query(
        `SELECT * FROM combo WHERE trangthai='hien'`
    );
    return record;
};

async function getRoomSeat(roomId) {
    const record = await dbClient.query(
        `SELECT * FROM ghe WHERE maphong = '${roomId}' `
    );
    return record;
};

async function getTicketId(maphim) {
    const record = await dbClient.query(
        `SELECT mave FROM ve WHERE maphim = '${maphim}' `
    );
    return record;
};

async function createBill(data) {
    const record = await dbClient.query(
        `INSERT INTO hoadon(userid, mave, macombo, makhuyenmai, masuatchieu, maghe, soluong, thanhtien, ngaythanhtoan) VALUES ('${data.userid}', '${data.ticketId}', '${data.comboList}', '${data.makhuyenmai}', '${data.masuatchieu}', '${data.seatList}', '${data.soluong}', '${data.price}', '${data.ngaythanhtoan}')`
        // `INSERT INTO hoadon (userid, mave, macombo, makhuyenmai, masuatchieu, maghe, soluong, thanhtien) VALUES ('1', 'Vdemonslayer', 'cb01(2),cb02(1)', NULL, 'Sdaotoiac03', 'A1,B2', '2', '20000')`
    );
    return record;
};

async function getRoomId(masuatchieu) {
    const record = await dbClient.query(
        `SELECT maphong FROM suatchieu WHERE masuatchieu = '${masuatchieu}' `
    );
    return record;
};

async function unableSeat(maghe, maphong) {
    const record = await dbClient.query(
        `UPDATE ghe SET trangthai = 'đã đặt' WHERE maghe = '${maghe}' AND maphong = '${maphong}'`
    );
    return record;
};

async function useSale(makhuyenmai) {
    const record = await dbClient.query(
        `SELECT giamgia FROM khuyenmai WHERE makhuyenmai = '${makhuyenmai}' `
    );
    return record;
};

module.exports = {
    getCalender,
    getSuatChieu,
    getComboList,
    getRoomSeat,
    getTicketId,
    createBill,
    getRoomId,
    unableSeat,
    useSale
}