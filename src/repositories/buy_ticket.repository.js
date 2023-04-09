const dbClient = require('./db_client');

async function getCalender(maphim) {
    const record = await dbClient.query(
        `SELECT * FROM suatchieu WHERE maphim = '${maphim}' `
    );
    return record;
};

module.exports = {
    getCalender,
}