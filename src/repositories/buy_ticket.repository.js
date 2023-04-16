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
        `SELECT * FROM combo`
    );
    return record;
};

module.exports = {
    getCalender,
    getSuatChieu,
    getComboList
}