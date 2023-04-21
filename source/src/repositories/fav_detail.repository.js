const dbClient = require('./db_client');

async function getFav(makhuyenmai) {
    const record = await dbClient.query(
        `SELECT * FROM khuyenmai WHERE makhuyenmai = '${makhuyenmai}'`
    );
    return record;
};

module.exports = {
    getFav,
}