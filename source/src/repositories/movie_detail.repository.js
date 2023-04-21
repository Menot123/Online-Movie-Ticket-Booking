const dbClient = require('./db_client');

async function getPhim(maphim) {
    const record = await dbClient.query(
        `SELECT * FROM phim WHERE maphim = '${maphim}' `
    );
    return record;  
};

module.exports = {
    getPhim,
}