const dbClient = require('./db_client');

async function getTop() {
    const record = await dbClient.query(
        `SELECT * FROM phim ORDER BY diemdanhgia DESC limit 10;`
    );
    return record;
};

module.exports = {
    getTop
}