const dbClient = require('./db_client');

async function getFav() {
    const record = await dbClient.query(
        `SELECT * FROM khuyenmai `
    );
    return record;
};

module.exports = {
    getFav,
}